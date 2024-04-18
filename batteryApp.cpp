#include <wx/wx.h>
#include <wx/grid.h>
#include <IOKit/ps/IOPowerSources.h>
#include <IOKit/ps/IOPSKeys.h>

class BatteryInfoFrame : public wxFrame {
public:
    BatteryInfoFrame(const wxString& title)
        : wxFrame(NULL, wxID_ANY, title, wxDefaultPosition, wxSize(280, 190)) {
        
        wxPanel* panel = new wxPanel(this, wxID_ANY);

        batteryGrid = new wxGrid(panel, wxID_ANY);

        batteryGrid->CreateGrid(6, 2); 
        batteryGrid->SetColLabelValue(0, "Property");
        batteryGrid->SetColLabelValue(1, "Value");
        batteryGrid->EnableEditing(false);

        // Use a sizer to manage the layout
       
        UpdateBatteryDetails(); 
    }

private:
     wxGrid* batteryGrid;


    void AddToGrid(const wxString& property, const wxString& value, int row) {
        batteryGrid->SetCellValue(row, 0, property);
        batteryGrid->SetCellValue(row, 1, value);
    }

    void UpdateBatteryDetails() {
        CFTypeRef blob = IOPSCopyPowerSourcesInfo();
        CFArrayRef sources = IOPSCopyPowerSourcesList(blob);

        if (sources) {
            for (CFIndex i = 0; i < CFArrayGetCount(sources); i++) {
                CFDictionaryRef pSource = (CFDictionaryRef)CFArrayGetValueAtIndex(sources, i);
                if (!pSource) {
                    continue;
                }

                const void* isPresent = CFDictionaryGetValue(pSource, CFSTR(kIOPSIsPresentKey));
                if (isPresent && CFBooleanGetValue((CFBooleanRef)isPresent)) {
                    CFStringRef powerSourceType = (CFStringRef)CFDictionaryGetValue(pSource, CFSTR(kIOPSTransportTypeKey));
                    CFNumberRef batteryPercentage = (CFNumberRef)CFDictionaryGetValue(pSource, CFSTR(kIOPSCurrentCapacityKey));
                    CFStringRef health = (CFStringRef)CFDictionaryGetValue(pSource, CFSTR(kIOPSBatteryHealthKey));
                    CFNumberRef current = (CFNumberRef)CFDictionaryGetValue(pSource, CFSTR(kIOPSCurrentKey));
                    CFNumberRef maxCapacity = (CFNumberRef)CFDictionaryGetValue(pSource, CFSTR(kIOPSMaxCapacityKey));
                    CFStringRef powerSourceState = (CFStringRef)CFDictionaryGetValue(pSource, CFSTR(kIOPSPowerSourceStateKey));

                    // Extract values from CF types
                    int capacityValue;
                    CFNumberGetValue(maxCapacity, kCFNumberSInt32Type, &capacityValue);

                    wxString batteryType = CFStringRefToWxString(powerSourceType);
                    int capacity;
                    CFNumberGetValue(batteryPercentage, kCFNumberSInt32Type, &capacity);

                    wxString batteryHealth = health ? CFStringRefToWxString(health) : "Unknown";
                    int current_mA;
                    CFNumberGetValue(current, kCFNumberSInt32Type, &current_mA);

                    wxString powerState = CFStringRefToWxString(powerSourceState);

                    AddToGrid("Battery Type", batteryType, 0);
                    AddToGrid("Battery Percentage", wxString::Format("%d%%", capacity), 1);
                    AddToGrid("Battery Health", batteryHealth, 2);
                    AddToGrid("Current Capacity", wxString::Format("%d mAh", current_mA), 3);
                    AddToGrid("Max Capacity", wxString::Format("%d mAh", capacityValue), 4);
                    AddToGrid("Power Source State", powerState, 5);

                    batteryGrid->AutoSize();
                    break; 
                }
            }

            CFRelease(sources);
        }

        if (blob) {
            CFRelease(blob);
        }
    }

    wxString CFStringRefToWxString(CFStringRef cfString) {
        if (!cfString) {
            return wxString(); 
        }

        CFIndex length = CFStringGetLength(cfString);
        CFIndex maxSize = CFStringGetMaximumSizeForEncoding(length, kCFStringEncodingUTF8) + 1;
        char* buffer = new char[maxSize];

        if (CFStringGetCString(cfString, buffer, maxSize, kCFStringEncodingUTF8)) {
            wxString result(buffer, wxConvUTF8);
            delete[] buffer;
            return result;
        }

        delete[] buffer;
        return wxString(); 
    }
};

class BatteryInfoApp : public wxApp {
public:
    virtual bool OnInit() {
        BatteryInfoFrame* frame = new BatteryInfoFrame("Battery Information");
        frame->Centre();
        frame->Show(true);
        return true;
    }
};

wxIMPLEMENT_APP(BatteryInfoApp);

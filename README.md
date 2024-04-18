# battery-info
<img width="392" alt="Screenshot 2024-04-18 at 4 37 54 PM" src="https://github.com/Vigneshk5/battery-info/assets/97999742/441cd692-36e9-4185-b4d6-0aac5758f6de">



This project demonstrates a simple application built using wxWidgets to display battery information on macOS. The application utilizes IOKit and CoreFoundation frameworks to retrieve battery details and display them in a graphical user interface.

## Requirements

To compile and run the Battery Details App, use the following command:


```console
clang++ -std=c++17 -o BatteryDetailsApp batteryApp.cpp `./wx-config --cxxflags --libs\` -framework IOKit -framework CoreFoundation
```


## Dependencies

- **wxWidgets**: The project depends on wxWidgets for GUI components. Ensure that wxWidgets is installed and accessible via \`wx-config\`.

## Usage

1. **Compilation**:
   - Run the compilation command provided above to build the executable \`BatteryDetailsApp\`.

2. **Execution**:
   - After successful compilation, execute \`./BatteryDetailsApp\` to launch the Battery Details App.

## Functionality

- The application displays battery information including type, percentage, health, capacity, and power source state in a grid layout.
- Battery information is retrieved using macOS-specific APIs from IOKit and CoreFoundation frameworks.
- The application window is designed using wxWidgets, featuring a resizable frame containing a grid to display battery details.

## Code Overview

- **BatteryInfoFrame**: Represents the main application window where battery information is displayed in a grid.
- **UpdateBatteryDetails**: Method to fetch and update battery information using IOKit and CoreFoundation APIs.
- **AddToGrid**: Helper method to populate the grid with battery properties.
- **CFStringRefToWxString**: Utility function to convert \`CFStringRef\` to \`wxString\`.

## Note

Ensure proper permissions are granted to access battery information on macOS. Running the executable may require administrative privileges or appropriate system permissions.

For more details on wxWidgets, refer to [wxWidgets Documentation](https://docs.wxwidgets.org/).


# Full Send ECU Project Documentation

## Project Overview
The Full Send ECU project aims to provide a highly adaptable and configurable engine control unit (ECU) solution for automotive applications. This project enables users to modify engine parameters based on their specific needs, enhancing vehicle performance and efficiency.

## Architecture
The architecture of the Full Send ECU consists of several key components:
- **Microcontroller**: The heart of the ECU, responsible for processing input signals and controlling output commands.
- **Sensors**: Various sensors monitor parameters such as temperature, pressure, and airflow.
- **Actuators**: Devices that act upon the ECU's output signals to control engine functions.
- **Communication Interfaces**: Protocols such as CAN, UART, and SPI that allow interaction with external devices.

## Tech Stack
The tech stack used for this project includes:
- **Programming Language**: C/C++ for embedded programming.
- **Development Environment**: Atmel Studio for AVR microcontrollers, or MPLAB X for PIC microcontrollers.
- **Version Control**: Git for version control and collaboration.
- **Testing**: Unit tests and hardware-in-the-loop (HIL) testing for validation.

## Directory Structure
The directory structure of the project is as follows:
```
FullSendECU/
├── src/                 # Source code
│   ├── main.c          # Main application
│   ├── ecuhandling.c   # ECU handling logic
│   └── communication.c  # Communication protocol handling
├── include/             # Header files
│   ├── ecuhandling.h    # Header for ECU handling
│   └── communication.h   # Header for communication
├── docs/                # Documentation
├── tests/               # Unit tests
└── README.md            # Project README
```

## Getting Started Guide
1. **Clone the Repository**: Use the following command to clone the repository:
   ```bash
   git clone https://github.com/aberg101/that.git
   ```
2. **Install Dependencies**: Ensure you have the necessary software development tools set up, such as Atmel Studio or MPLAB X.
3. **Build the Project**: Navigate to the project directory and build the project using your IDE or command line tools.
4. **Upload to ECU**: Upload the compiled binary to your ECU using an appropriate programming tool.
5. **Configure Settings**: Modify the configuration settings as needed to match your vehicle's specifications.

For further information, refer to the detailed documentation in the `docs/` directory.
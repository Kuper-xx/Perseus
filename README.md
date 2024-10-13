# PERSEUS: Malware Project

## Overview
In this project, I am building a Remote Access Tool (RAT), also referred to as Command and Control (C2). This tool is designed for remote administration and includes multiple functionalities to facilitate extensive system control and data exfiltration.

## Resources
- [DucKey Logger](https://github.com/PrettyBoyCosmo/DucKey-Logger): A key component that will be redeveloped and integrated into the RAT for keystroke logging.
- [BunnyLogger](https://github.com/PrettyBoyCosmo/BunnyLogger): Another logging tool that will be used for data capture and exfiltration enhancements.

## Components
The project consists of various modules and capabilities:
- **Keylogger**: Records keystrokes for monitoring user input.
- **Screenshots**: Captures screenshots of the victim's screen.
- **Webcam Viewer**: Enables remote access to the webcam.
- **Exfiltration**: Facilitates data transfer from the victim’s machine to the attacker.
- **Remote Access**: Provides full remote control over the target system.
- **Credentials**: Gathers and stores login credentials.
- **Reconnaissance**: Collects system information and scans for vulnerabilities.
- **Privilege Escalation** (privesc): Attempts to elevate privileges for enhanced access.
- **Worm Functionality**: Allows the tool to spread across connected devices or networks.

## Roadmap
### Current Goals
- **Redevelop DucKey Logger**: Integrate and improve upon the existing DucKey Logger for enhanced keylogging capabilities.
- **Integrate BunnyLogger**: Leverage BunnyLogger for expanded logging functionalities and improve data exfiltration.
- **Obfuscation Techniques**: Develop methods to evade detection, including:
  - Antivirus and Virtual Machine detection
  - Disabling firewalls and antivirus programs

## Extraneous Features
- **B.S.O.D. (Blue Screen of Death)**: Triggers a forced crash on the target system.
- **Web History**: Extracts and stores browsing history.
- **User Activity Monitoring**: Tracks user actions and behaviors on the system.

## Disclaimer
This project is intended for educational and research purposes only. Unauthorized use of this software is illegal and unethical. The developer does not take responsibility for any misuse of this tool.


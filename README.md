# Rabbit R1 Launcher Project

## Description
The Rabbit R1 Launcher Project aims to adapt the Rabbit R1 Launcher for use across any Android device. This repository contains tools and scripts for building and modifying the Launcher to ensure compatibility and enhanced functionality across different devices.

## Project Structure
- **Original:** This folder serves as a backup and reference to the original APK. It is crucial not to edit files in this directory to preserve the launcher's original state.
- **No-Root:** Modified version of the original that does not require root access.
- **Switch:** This version includes additional features or modifications to make it compatable with a nintendo switch running android or other android devices with limited APIs and no camera.

## Getting Started

### Requirements
- **Java:** Ensure Java is installed on your system. Java is used primarily for signing the APKs and should not be used to modify the Smali directly.
- **Apktool:** For building and reversing Android APKs. Install Apktool from [Apktool official page](https://ibotpeaches.github.io/Apktool/install/).
- **Uber APK Signer:** This tool is used for signing the built APKs. Download it from [its GitHub repository](https://github.com/patrickfav/uber-apk-signer).
- **jadx:** A Dex to Java decompiler. Install jadx from [GitHub](https://github.com/skylot/jadx).

### Usage
To use the build script, follow these steps:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Pinball3D/Rabbit-R1.git
   cd Rabbit-R1
   ```

2. **Run the Build Script:**
   ```bash
   ./build.sh
   ```
   Follow the prompts in the script to choose between Original, No-Root, or Switch builds. The script handles building, signing, and decompiling the APK.

3. **Modifying Smali:**
   Java is used only for reference purposes when editing the Smali files. Do not modify the "original" Smali directly; instead, work within the designated folders for each build type.

## Contributing
Contributions are welcome! Please fork the repository and submit pull requests with your suggested changes.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments
- Thanks to (me) for the tools used in this project.
- Community contributions and feedback that help improve the project.

# Kill App

A simple Windows batch script that continuously checks for a specified process and forcefully terminates it whenever it is running.

> **Warning:** This script continuously kills a process. Using it incorrectly may cause data loss, application instability, or prevent important Windows applications from running. Only use it with processes you understand.

## Features

- Continuously monitors a Windows process.
- Automatically terminates the process when detected.
- Configurable process name.
- Uses built-in Windows commands only.
- No installation or external dependencies required.

## Requirements

- Windows
- No additional software or dependencies

## Usage

1. Open `Kill-App.bat` in a text editor.
2. Find:

   ```bat
   set PROCESS_NAME=AppName.exe
   ```

3. Replace `AppName.exe` with the executable name of the process you want to monitor.

   Example:

   ```bat
   set PROCESS_NAME=example.exe
   ```

4. Save the file.
5. Run `Kill-App.bat`.

The script checks the process every 2 seconds and forcefully terminates it whenever it is found.

## Stopping the Script

Press `Ctrl+C` in the Command Prompt window and confirm if Windows asks whether you want to terminate the batch job.

## Important Notes

- The script runs indefinitely until it is manually stopped.
- The `/F` option used by `taskkill` forces the process to close.
- Unsaved work in the targeted application may be lost.
- Do not use this script with critical Windows processes unless you fully understand the consequences.
- The default interval is 2 seconds. Increase it if you do not need frequent checks.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.

## Disclaimer

This project is provided "as is", without warranty of any kind. The author is not responsible for data loss, system instability, or other damage resulting from the use or misuse of this script.

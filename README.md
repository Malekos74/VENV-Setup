# Virtual Environment Manager PowerShell Script

This PowerShell script is designed to manage Python virtual environments on Windows systems. It allows users to create a new virtual environment or activate an existing one.

## Usage

1. **Clone the Repository:**

2. **Navigate to the Repository Directory:**

3. **Run the Script:**
- Open PowerShell and navigate to the directory containing the script.
- Execute the script by providing a virtual environment name as an argument. For example:
  ```
  .\manage-venv.ps1 -venvName myenv
  ```
Replace `myenv` with the desired name for your virtual environment.

4. **Activation:**
- If the virtual environment with the provided name already exists, the script will activate it.
- If it doesn't exist, the script will create a new virtual environment with the provided name and then activate it.

## Requirements

- **Python:** Ensure Python is installed on your system and added to the PATH environment variable.

## Notes

- This script is specifically designed for Windows systems.
- Ensure that the Python executable is accessible from the command line.
- The script will automatically append "-venv" to the provided virtual environment name.

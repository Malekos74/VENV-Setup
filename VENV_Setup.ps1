param(
    [string]$venvName
)

# Check if the virtual environment name is provided
if (-not $venvName) {
    Write-Host "Please provide a virtual environment name."
    exit 1
}

# Concatenate "-venv" to the provided name
$venvName = $venvName + "-venv"

# Check if the virtual environment exists
$venvPath = Get-Item -LiteralPath $venvName -ErrorAction SilentlyContinue
if ($venvPath -ne $null) {
    # Activate virtual environment
    $activateScriptPath = Join-Path $venvName "Scripts\Activate.ps1"
    if (Test-Path $activateScriptPath) {
        . $activateScriptPath
        Write-Host "Virtual environment '$venvName' activated."
    } 
    else {
        Write-Host "Activation script not found. Please check the virtual environment structure."
        exit 1
    }
} 
else {
    
    Write-Host "Creating virtual environment..."
    # Create virtual environment
    python -m venv $venvName

    # Activate virtual environment
    $activateScriptPath = Join-Path $venvName "Scripts\Activate.ps1"
    if (Test-Path $activateScriptPath) {
        . $activateScriptPath
        Write-Host "Virtual environment '$venvName' activated."
    } 
    else {
        Write-Host "Activation script not found. Please check the virtual environment creation."
        exit 1
    }
}

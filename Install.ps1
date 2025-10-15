# Check if a venv exists
if (Test-Path venv) {
	Write-Host "Virtual environment detected!"
}
else {
	Write-Host "Creating venv..."
	try {
		python -m venv venv
	}
	catch {
		Write-Host "An error ocurred. Make sure Python is in the PATH"
		exit -1
	}
}

Write-Host "Activating venv..."
./venv/Scripts/Activate.ps1

Write-Host "Installing dependencies..."
try {
	pip install -r requirements.txt
}
catch {
	Write-Host "An error ocurred. Make sure pip is in the PATH"
	exit -1
}

Write-Host "Done!"
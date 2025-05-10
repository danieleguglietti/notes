Write-Host "Activating venv..."
. venv/Scripts/Activate.ps1

jupyter-book clean .
jupyter-book build .

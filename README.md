**WARNING:** This has many issue right now! I will fix them when I get the time :D

### Setup
1. Set BUILD_SCRIPT_WSL in "codal.bat" to path to this folder as WSL sees it.
   - e.g. Replace "C:/" with "/mnt/c/".
2. Add this folder to your environment variables:
   - With the GUI.
   - With command prompt: `setx PATH "%PATH%;insert path here"`
   - You need  to re-open terminal windows for the change to take effect.
3. Run `codal` from your project's source directory.

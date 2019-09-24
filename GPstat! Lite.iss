; -- GPstat!.iss -- (based on Inno Setup's "example2.iss")
; Creates icon in the Programs folder of the
; Start Menu instead of in a subfolder, and also creates a desktop icon.

[Setup]
AppName="GPstat! Lite"
AppVersion=1.3.3.0.7.0
WizardStyle=modern
DefaultDirName="{autopf}\GPstat Lite"
; Since no icons will be created in "{group}", we don't need the wizard
; to ask for a Start Menu folder name:
DisableProgramGroupPage=yes
UninstallDisplayIcon="{app}\GPstat! Lite.exe"
PrivilegesRequired = lowest
; can be installed 'locally' without administrator rights
PrivilegesRequiredOverridesAllowed = dialog
; ask if 'global' install is requested, anyway
Compression=lzma2
SolidCompression=yes
OutputDir=userdocs:InnoOutput
OutputBaseFilename="GPstat! Lite Setup"

[Files]
Source: "*"; \
Excludes: "GPstat!.exe, .git, .Rproj.user, .gitignore, .Rhistory, DailyMeasure_cfg.sqlite, DailyMeasure_cfg.yaml, DailyMeasureDeployR.Rproj, debug, README_DesktopDeployR.md"; \
Flags: recursesubdirs; \
DestDir: "{app}"

[Icons]
Name: "{autoprograms}\GPstat! Lite"; Filename: "{app}\GPstat! Lite.exe"
Name: "{autodesktop}\GPstat! Lite"; Filename: "{app}\GPstat! Lite.exe"

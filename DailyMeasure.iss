; -- DailyMeasure.iss -- (based on Inno Setup's "example2.iss")
; Creates icon in the Programs folder of the
; Start Menu instead of in a subfolder, and also creates a desktop icon.

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!

[Setup]
AppName=DailyMeasure
AppVersion=1.0.0
WizardStyle=modern
DefaultDirName={autopf}\DailyMeasure
; Since no icons will be created in "{group}", we don't need the wizard
; to ask for a Start Menu folder name:
DisableProgramGroupPage=yes
UninstallDisplayIcon={app}\DailyMeasure.exe
PrivilegesRequired = lowest
; can be installed 'locally' without administrator rights
PrivilegesRequiredOverridesAllowed = dialog
; ask if 'global' install is requested, anyway
Compression=lzma2
SolidCompression=yes
OutputDir=userdocs:InnoOutput
OutputBaseFilename=DailyMeasure Setup

[Files]
Source: "*"; \
Excludes: ".git, .Rproj.user, .gitignore, .Rhistory, DailyMeasure_cfg.sqlite, DailyMeasure_cfg.yaml, DailyMeasureDeployR.Rproj"; \
Flags: recursesubdirs; \
DestDir: "{app}"

[Icons]
Name: "{autoprograms}\DailyMeasure"; Filename: "{app}\DailyMeasure.exe"
Name: "{autodesktop}\DailyMeasure"; Filename: "{app}\DailyMeasure.exe"

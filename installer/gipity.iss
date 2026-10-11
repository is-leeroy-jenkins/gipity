#define MyAppName "Gipity"
#ifndef MyAppVersion
  #define MyAppVersion "0.1.0"
#endif

[Setup]
AppId={{3098DB76-AB73-4C12-B791-B308AD9DABA1}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher=is-leeroy-jenkins
DefaultDirName={localappdata}\Programs\Gipity
DefaultGroupName=Gipity
OutputDir=..\dist-installer
OutputBaseFilename=Gipity-Setup-{#MyAppVersion}
Compression=lzma2
SolidCompression=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
PrivilegesRequired=lowest
WizardStyle=modern
UninstallDisplayName=Gipity
UninstallDisplayIcon={app}\Gipity.exe
CloseApplications=yes

[Files]
Source: "..\dist\Gipity\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional shortcuts:"

[Icons]
Name: "{group}\Gipity"; Filename: "{app}\Gipity.exe"
Name: "{autodesktop}\Gipity"; Filename: "{app}\Gipity.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Gipity.exe"; Description: "Launch Gipity"; Flags: nowait postinstall skipifsilent

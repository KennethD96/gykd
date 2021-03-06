; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{6DB8C365-E719-4BA5-9594-10DFC244D3FD}
AppName=Gyazo
AppVerName=Gyazo 1.0
OutputBaseFilename=GyazoSetup
AppPublisher=Toshiyuki Masui
AppPublisherURL=http://gyazo.com/
AppSupportURL=http://gyazo.com/
AppUpdatesURL=http://gyazo.com/
DefaultDirName={pf}\Gyazo
DisableDirPage=yes
DisableReadyMemo=yes
DisableReadyPage=yes
DefaultGroupName=Gyazo
DisableProgramGroupPage=yes
Compression=lzma
SolidCompression=yes
ShowLanguageDialog=auto
WizardImageFile=wiz.bmp
WizardSmallImageFile=wizsmall.bmp

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "basque"; MessagesFile: "compiler:Languages\Basque.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "slovak"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Files]
Source: "..\Release\gyazowin.exe"; DestDir: "{app}"; Flags: ignoreversion restartreplace
Source: "..\Readme.txt"; DestDir: "{app}"
Source: "gdiplus.dll"; DestDir: "{app}"; OnlyBelowVersion:0,5.01.2600
; gdiplus.dll only for windows 2000 or before
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Gyazo"; Filename: "{app}\gyazowin.exe"
Name: "{group}\{cm:UninstallProgram,Gyazo}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Gyazo"; Filename: "{app}\gyazowin.exe"; Tasks: "desktopicon"
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Gyazo"; Filename: "{app}\gyazowin.exe"; Tasks: "quicklaunchicon"

[Run]
Filename: "{app}\gyazowin.exe"; Description: "{cm:LaunchProgram,Gyazo}"; Flags: unchecked nowait postinstall skipifsilent


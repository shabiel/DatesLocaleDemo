unit FMXDates;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, Windows,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

function GetWindowsLanguage(LCTYPE: LCTYPE { type of information } ): string;
var
  Buffer: PChar;
  Size: integer;
begin
  Size := GetLocaleInfo(LOCALE_USER_DEFAULT, LCTYPE, nil, 0);
  GetMem(Buffer, Size);
  try
    GetLocaleInfo(LOCALE_USER_DEFAULT, LCTYPE, Buffer, Size);
    Result := string(Buffer);
  finally
    FreeMem(Buffer);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  FUSFormat, FKOFormat, FARFormat, FGBFormat, FCNFormat, FINFormat, FDEFormat: TFormatSettings;
  myDate: string;
  wLang: LangID;
  sLang: string;
begin
  ListBox1.Items.Add('Default format settings');
  ListBox1.Items.Add('Short: ' + FormatSettings.ShortDateFormat);
  ListBox1.Items.Add('Long: ' + FormatSettings.LongDateFormat);
  ListBox1.Items.Add('');

  wLang := GetSystemDefaultLCID;
  sLang := GetWindowsLanguage(LOCALE_SABBREVLANGNAME);
  if sLang = 'ENU' then
  begin
    FormatSettings.LongDateFormat := 'mmm dd, yyyy';
  end;
  FUSFormat := TFormatSettings.Create('en-US');
  FGBFormat := TFormatSettings.Create('en-GB');
  FINFormat := TFormatSettings.Create('en-IN');
  FKOFormat := TFormatSettings.Create('ko');
  FARFormat := TFormatSettings.Create('ar-jo');
  FCNFormat := TFormatSettings.Create('zh-cn');
  FDEFormat := TFormatSettings.Create('de');

  ListBox1.Items.Add('Non-Unicode Locale ID: ' + wLang.ToString);
  ListBox1.Items.Add('Windows Language: ' + sLang);
  ListBox1.Items.Add('');

  ListBox1.Items.Add('c');
  DateTimeToString(myDate, 'c', Now);
  ListBox1.Items.Add('Current Locale: ' + myDate);
  DateTimeToString(myDate, 'c', Now, FUSFormat);
  ListBox1.Items.Add('en-US: ' + myDate);
  DateTimeToString(myDate, 'c', Now, FGBFormat);
  ListBox1.Items.Add('en-GB: ' + myDate);
  DateTimeToString(myDate, 'c', Now, FINFormat);
  ListBox1.Items.Add('en-IN: ' + myDate);
  DateTimeToString(myDate, 'c', Now, FKOFormat);
  ListBox1.Items.Add('ko: ' + myDate);
  DateTimeToString(myDate, 'c', Now, FCNFormat);
  ListBox1.Items.Add('cn: ' + myDate);
  DateTimeToString(myDate, 'c', Now, FARFormat);
  ListBox1.Items.Add('ar: ' + myDate);
  DateTimeToString(myDate, 'c', Now, FDEFormat);
  ListBox1.Items.Add('de: ' + myDate);

  ListBox1.Items.Add(' ');
  ListBox1.Items.Add('ddddd');
  DateTimeToString(myDate, 'ddddd', Now);
  ListBox1.Items.Add('Current Locale: ' + myDate);
  DateTimeToString(myDate, 'ddddd', Now, FUSFormat);
  ListBox1.Items.Add('en-US: ' + myDate);
  DateTimeToString(myDate, 'ddddd', Now, FGBFormat);
  ListBox1.Items.Add('en-GB: ' + myDate);
  DateTimeToString(myDate, 'ddddd', Now, FINFormat);
  ListBox1.Items.Add('en-IN: ' + myDate);
  DateTimeToString(myDate, 'ddddd', Now, FKOFormat);
  ListBox1.Items.Add('ko: ' + myDate);
  DateTimeToString(myDate, 'ddddd', Now, FCNFormat);
  ListBox1.Items.Add('cn: ' + myDate);
  DateTimeToString(myDate, 'ddddd', Now, FARFormat);
  ListBox1.Items.Add('ar: ' + myDate);
  DateTimeToString(myDate, 'ddddd', Now, FDEFormat);
  ListBox1.Items.Add('de: ' + myDate);

  ListBox1.Items.Add(' ');
  ListBox1.Items.Add('dddddd');
  DateTimeToString(myDate, 'dddddd', Now);
  ListBox1.Items.Add('Current Locale: ' + myDate);
  DateTimeToString(myDate, 'dddddd', Now, FUSFormat);
  ListBox1.Items.Add('en-US: ' + myDate);
  DateTimeToString(myDate, 'dddddd', Now, FGBFormat);
  ListBox1.Items.Add('en-GB: ' + myDate);
  DateTimeToString(myDate, 'dddddd', Now, FINFormat);
  ListBox1.Items.Add('en-IN: ' + myDate);
  DateTimeToString(myDate, 'dddddd', Now, FKOFormat);
  ListBox1.Items.Add('ko: ' + myDate);
  DateTimeToString(myDate, 'dddddd', Now, FCNFormat);
  ListBox1.Items.Add('cn: ' + myDate);
  DateTimeToString(myDate, 'dddddd', Now, FARFormat);
  ListBox1.Items.Add('ar: ' + myDate);
  DateTimeToString(myDate, 'dddddd', Now, FDEFormat);
  ListBox1.Items.Add('de: ' + myDate);

  ListBox1.Items.Add('');
  ListBox1.Items.Add('ddddd t');
  DateTimeToString(myDate, 'ddddd t', Now);
  ListBox1.Items.Add('Current Locale: ' + myDate);
  DateTimeToString(myDate, 'ddddd t', Now, FUSFormat);
  ListBox1.Items.Add('en-US: ' + myDate);
  DateTimeToString(myDate, 'ddddd t', Now, FGBFormat);
  ListBox1.Items.Add('en-GB: ' + myDate);
  DateTimeToString(myDate, 'ddddd t', Now, FINFormat);
  ListBox1.Items.Add('en-IN: ' + myDate);
  DateTimeToString(myDate, 'ddddd t', Now, FKOFormat);
  ListBox1.Items.Add('ko: ' + myDate);
  DateTimeToString(myDate, 'ddddd t', Now, FCNFormat);
  ListBox1.Items.Add('cn: ' + myDate);
  DateTimeToString(myDate, 'ddddd t', Now, FARFormat);
  ListBox1.Items.Add('ar: ' + myDate);
  DateTimeToString(myDate, 'ddddd t', Now, FDEFormat);
  ListBox1.Items.Add('de: ' + myDate);

end;

end.

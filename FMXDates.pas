unit FMXDates;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
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

procedure TForm1.FormCreate(Sender: TObject);
var
  FUSFormat, FKOFormat, FARFormat: TFormatSettings;
  myDate: string;
begin
  FUSFormat := TFormatSettings.Create('en-US');
  FKOFormat := TFormatSettings.Create('ko');
  FARFormat := TFormatSettings.Create('ar');

  ListBox1.Items.add('c');
  DateTimeToString(myDate, 'c', Now);
  ListBox1.Items.add('Current Locale: ' + myDate);
  DateTimeToString(myDate, 'c', Now, FUSFormat);
  ListBox1.Items.add('en-US: ' + myDate);
  DateTimeToString(myDate, 'c', Now, FKOFormat);
  ListBox1.Items.add('ko: ' + myDate);
  DateTimeToString(myDate, 'c', Now, FARFormat);
  ListBox1.Items.add('ar: ' + myDate);

  ListBox1.Items.add(' ');
  ListBox1.Items.add('ddddd');
  DateTimeToString(myDate, 'ddddd', Now);
  ListBox1.Items.add('Current Locale: ' + myDate);
  DateTimeToString(myDate, 'ddddd', Now, FUSFormat);
  ListBox1.Items.add('en-US: ' + myDate);
  DateTimeToString(myDate, 'ddddd', Now, FKOFormat);
  ListBox1.Items.add('ko: ' + myDate);
  DateTimeToString(myDate, 'ddddd', Now, FARFormat);
  ListBox1.Items.add('ar: ' + myDate);

  ListBox1.Items.add(' ');
  ListBox1.Items.add('dddddd');
  DateTimeToString(myDate, 'dddddd', Now);
  ListBox1.Items.add('Current Locale: ' + myDate);
  DateTimeToString(myDate, 'dddddd', Now, FUSFormat);
  ListBox1.Items.add('en-US: ' + myDate);
  DateTimeToString(myDate, 'dddddd', Now, FKOFormat);
  ListBox1.Items.add('ko: ' + myDate);
  DateTimeToString(myDate, 'dddddd', Now, FARFormat);
  ListBox1.Items.add('ar: ' + myDate);

  ListBox1.Items.Add('');
  ListBox1.Items.Add('ddddd t');
  DateTimeToString(myDate, 'ddddd t', Now);
  ListBox1.Items.add('Current Locale: ' + myDate);

  DateTimeToString(myDate, 'ddddd t', Now, FUSFormat);
  ListBox1.Items.add('en-US: ' + myDate);

  DateTimeToString(myDate, 'ddddd t', Now, FKOFormat);
  ListBox1.Items.add('ko: ' + myDate);

  DateTimeToString(myDate, 'ddddd t', Now, FARFormat);
  ListBox1.Items.add('ar: ' + myDate);



end;

end.

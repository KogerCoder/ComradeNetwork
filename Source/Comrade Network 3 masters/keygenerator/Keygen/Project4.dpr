program Project4;

uses
  Vcl.Forms,
  Unit71 in '..\..\..\Our Command\Unit71.pas' {Form7},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'keygen';
  TStyleManager.TrySetStyle('TabletDark');
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.

program Project5;

uses
  Vcl.Forms,
  Unit7 in 'Unit7.pas' {Form7},
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

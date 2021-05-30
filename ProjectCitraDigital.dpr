program ProjectCitraDigital;

uses
  Forms,
  Unitcitradigital in 'Unitcitradigital.pas' {frmcitradigital};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmcitradigital, frmcitradigital);
  Application.Run;
end.

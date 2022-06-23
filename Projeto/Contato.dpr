program Contato;

uses
  Vcl.Forms,
  U_Cadastro in '..\Forms\U_Cadastro.pas' {frm_cadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_cadastro, frm_cadastro);
  Application.Run;
end.

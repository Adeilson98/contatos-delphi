program Contato;

uses
  Vcl.Forms,
  U_Cadastro in '..\Forms\U_Cadastro.pas' {frm_cadastro},
  U_Pesquisa in '..\Forms\U_Pesquisa.pas' {Frm_pesquisa},
  U_Procura in '..\Forms\U_Procura.pas' {Frm_procura};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_cadastro, frm_cadastro);
  Application.CreateForm(TFrm_pesquisa, Frm_pesquisa);
  Application.CreateForm(TFrm_procura, Frm_procura);
  Application.Run;
end.

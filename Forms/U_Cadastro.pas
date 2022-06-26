unit U_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  Tfrm_cadastro = class(TForm)
    Conexao: TFDConnection;
    Q_cadastro: TFDQuery;
    Ds_cadastro: TDataSource;
    Q_cadastroID_CONTATO: TIntegerField;
    Q_cadastroNOME: TStringField;
    Q_cadastroTELEFONE: TStringField;
    Q_cadastroCELULAR: TStringField;
    Q_cadastroEMAIL: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    db_nome: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    bt_novo: TBitBtn;
    bt_editar: TBitBtn;
    bt_deletar: TBitBtn;
    bt_gravar: TBitBtn;
    bt_cancelar: TBitBtn;
    bt_atualizar: TBitBtn;
    bt_sair: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_editarClick(Sender: TObject);
    procedure bt_deletarClick(Sender: TObject);
    procedure bt_gravarClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_atualizarClick(Sender: TObject);
    procedure bt_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadastro: Tfrm_cadastro;

implementation

{$R *.dfm}

procedure Tfrm_cadastro.bt_atualizarClick(Sender: TObject);
begin
  Q_cadastro.Refresh;
end;

procedure Tfrm_cadastro.bt_cancelarClick(Sender: TObject);
begin
  Q_cadastro.Cancel;
end;

procedure Tfrm_cadastro.bt_deletarClick(Sender: TObject);
begin

  if messagedlg('Deseja realmente excluir esse contato?', mtConfirmation, [mbOk, mbNo], 0)=mrOk then
    begin
      Q_cadastro.Delete;
    end
  else
  abort;
end;

procedure Tfrm_cadastro.bt_editarClick(Sender: TObject);
begin

  if messagedlg('Deseja realmente editar esse contato?', mtConfirmation, [mbOk, mbNo], 0)=mrOk then
    begin
      Q_cadastro.Edit;
    end
  else
  abort;

end;

procedure Tfrm_cadastro.bt_gravarClick(Sender: TObject);
begin
  Q_cadastro.Post;
  Messagedlg('Contato salvo com sucesso!', mtInformation, [mbOK], 0);
end;

procedure Tfrm_cadastro.bt_novoClick(Sender: TObject);
  var prox:integer;
begin
  Q_cadastro.Active:=true;
  Q_cadastro.last;

  prox:= Q_cadastroID_CONTATO.AsInteger + 1;
  Q_cadastro.Append;
  Q_cadastroID_CONTATO.AsInteger:=prox;
  db_nome.setFocus;
end;

procedure Tfrm_cadastro.bt_sairClick(Sender: TObject);
begin
  if messagedlg('Deseja sair do sistema?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      Application.Terminate;
    end
    else
      abort;

end;

end.

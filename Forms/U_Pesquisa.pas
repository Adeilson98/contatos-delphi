unit U_Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrm_pesquisa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ed_pesquisa: TEdit;
    Label1: TLabel;
    bt_pesquisar: TBitBtn;
    bt_imprimir: TBitBtn;
    cb_opcao: TComboBox;
    Label2: TLabel;
    procedure bt_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesquisa: TFrm_pesquisa;

implementation

{$R *.dfm}

uses U_Cadastro;

procedure TFrm_pesquisa.bt_pesquisarClick(Sender: TObject);
begin
  Frm_cadastro.Q_cadastro.Close;
  Frm_cadastro.Q_cadastro.Params.Clear;
  Frm_cadastro.Q_cadastro.SQL.Clear;
  Frm_cadastro.Q_cadastro.SQL.Add('select * from contato');

  case cb_opcao.ItemIndex of

  0:begin
    Frm_cadastro.Q_cadastro.SQL.Add('where id_contato =:pcodigo');
    Frm_cadastro.Q_cadastro.ParamByName('pcodigo').AsInteger:=strtoint(ed_pesquisa.Text);
  end;

  1:begin
    Frm_cadastro.Q_cadastro.SQL.Add('where name =:pnome');
    Frm_cadastro.Q_cadastro.ParamByName('pnome').AsString:=(ed_pesquisa.Text);
  end;

  end;

  Frm_cadastro.Q_cadastro.Open;

  if Frm_cadastro.Q_cadastro.IsEmpty then
    begin
      Messagedlg('Nenhum registro encontrado!', mtInformation, [mbOk], 0);
    end;

end;

end.

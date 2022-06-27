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

end.

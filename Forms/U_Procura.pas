unit U_Procura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_procura = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ed_pesquisa: TEdit;
    bt_pesquisar: TBitBtn;
    bt_imprimir: TBitBtn;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_procura: TFrm_procura;

implementation

{$R *.dfm}

end.

unit uLivro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmLivro = class(TForm)
    pnlLivro: TPanel;
    btnInserir: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    Label1: TLabel;
    edtCodigo: TEdit;
    btnPesquisar: TBitBtn;
    Bevel1: TBevel;
    lblDescricao: TLabel;
    edtDescricao: TEdit;
    edtAutor: TEdit;
    lblAutor: TLabel;
    Label4: TLabel;
    lblAno: TLabel;
    edtAno: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

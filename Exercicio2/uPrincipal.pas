unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lbxResultado: TListBox;
    edtPesquisa: TEdit;
    btnPesquisa: TButton;
    procedure btnPesquisaClick(Sender: TObject);
  private
    procedure Pesquisa;
    procedure PesquisaManual(const pValor: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnPesquisaClick(Sender: TObject);
begin
  PesquisaManual(edtPesquisa.Text);
end;

procedure TfrmPrincipal.Pesquisa;
var
  lPosicao: Integer;
begin
  lPosicao := lbxResultado.Items.IndexOf(edtPesquisa.Text);
  lbxResultado.ItemIndex := lPosicao;
  if lPosicao < 0 then
    ShowMessage('A cidade pesquisada não existe')
  else
    ShowMessage('A posição da cidade é: ' + IntToStr(lPosicao));
end;

procedure TfrmPrincipal.PesquisaManual(const pValor: string);
var
  i: Integer;
  lRetorno: Integer;
begin
  lRetorno := -1;
  for i := 0 to lbxResultado.Items.Count - 1 do
    if lbxResultado.Items[i] = pValor then
    begin
      lRetorno := i;
      lbxResultado.ItemIndex := lRetorno;
      Break;
    end;

  if lRetorno = -1 then
    ShowMessage('Cidade não encontrada')
  else
    ShowMessage('A cidade está na posição ' + IntToStr(lRetorno));
end;

end.

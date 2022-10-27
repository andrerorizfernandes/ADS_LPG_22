unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlOlaMundo: TPanel;
    lblSaudacao: TLabel;
    btnTeste: TButton;
    edtQuantidade: TEdit;
    lbxResultado: TListBox;
    cboTipo: TComboBox;
    procedure btnTesteClick(Sender: TObject);
    procedure edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
  private
    procedure ExibirMensagem;
    procedure TesteX;
    procedure ValidaPreenchimentoDaQuantidade;
    procedure ListarProdutos(const pValor: Integer);
    procedure TrabalharComWhile(const pValor: Integer);
    procedure TrabalharComFor(const pValor: Integer);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCliente;

procedure TfrmPrincipal.btnTesteClick(Sender: TObject);
var
  lQuantidade: Integer;
begin
  ValidaPreenchimentoDaQuantidade;

  lQuantidade := StrToInt(edtQuantidade.Text);
  ListarProdutos(lQuantidade);
end;

procedure TfrmPrincipal.edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    btnTeste.Click;
end;

procedure TfrmPrincipal.ExibirMensagem;
const
  MENSAGEM = 'Olá mundo!';
begin
  ShowMessage(MENSAGEM);
end;

procedure TfrmPrincipal.ListarProdutos(const pValor: Integer);
begin
  lbxResultado.Items.Clear;
  case cboTipo.ItemIndex of
    0: TrabalharComFor(pValor);
    1: TrabalharComWhile(pValor);
  end;
end;

procedure TfrmPrincipal.TesteX;
const
  DIA = 10;
var
  xxx, oooo: string;
  rrr: Real;
  lSoma: Integer;
begin
  lSoma := 5;
  ShowMessage(IntToStr(lSoma));
end;

procedure TfrmPrincipal.TrabalharComFor(const pValor: Integer);
const
  TEXTO = 'Produto com For ';
var
  i: integer;
begin
  for i := 1 to pValor do
    lbxResultado.Items.Add(TEXTO + IntToStr(i));
end;

procedure TfrmPrincipal.TrabalharComWhile(const pValor: Integer);
const
  TEXTO = 'Produto com While ';
var
  i: Integer;
begin
  i := 1;
  while (i <= pValor) do
  begin
    lbxResultado.Items.Add(TEXTO + IntToStr(i));
    i := i + 1;
  end;
end;

procedure TfrmPrincipal.ValidaPreenchimentoDaQuantidade;
begin
  if (edtQuantidade.Text = EmptyStr) then
  begin
    ShowMessage('Informe a quantidade');
    edtQuantidade.SetFocus;
    Abort;
  end;
end;

end.

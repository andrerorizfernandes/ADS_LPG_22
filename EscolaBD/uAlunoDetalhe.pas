unit uAlunoDetalhe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmAlunoDetalhe = class(TForm)
    pnlAluno: TPanel;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    dbeNome: TDBEdit;
    dbeIdade: TDBEdit;
    lblNome: TLabel;
    lblIdade: TLabel;
    dblCidade: TDBLookupComboBox;
    lblCidade: TLabel;
    dbeUf: TDBEdit;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FAlterando: Boolean;
    procedure PrepararAmbiente;
    procedure Gravar;
    procedure Cancelar;
    procedure Validar;
    { Private declarations }
  public
    property Alterando: Boolean write FAlterando;
    { Public declarations }
  end;

implementation

uses
  uDM, Data.DB, uFunc;

{$R *.dfm}

{ TfrmAlunoDetalhe }

procedure TfrmAlunoDetalhe.btnCancelarClick(Sender: TObject);
begin
  Cancelar;
end;

procedure TfrmAlunoDetalhe.btnGravarClick(Sender: TObject);
begin
  Validar;
  Gravar;

  Close;
end;

procedure TfrmAlunoDetalhe.Button1Click(Sender: TObject);
const
  SQL = 'select * from cidade';
var
  r: string;
begin
  r := PesquisaDados(SQL, 'codcidade');
  ShowMessage(r);
end;

procedure TfrmAlunoDetalhe.Cancelar;
begin
  DM.qryAluno.Cancel;
end;

procedure TfrmAlunoDetalhe.FormActivate(Sender: TObject);
begin
  PrepararAmbiente;
end;

procedure TfrmAlunoDetalhe.Gravar;
begin
  if DM.qryAluno.State <> dsBrowse then
  begin
    DM.qryAluno.Post;
    DM.qryAluno.Refresh;
  end;
end;

procedure TfrmAlunoDetalhe.PrepararAmbiente;
begin
  if FAlterando then
    DM.qryAluno.Edit
  else
    DM.qryAluno.Append;
end;

procedure TfrmAlunoDetalhe.Validar;
begin
  if dbeNome.Text = EmptyStr then
  begin
    ShowMessage('Preencha o nome');
    dbeNome.SetFocus;
    Abort;
  end;

  if dbeIdade.Text = EmptyStr then
  begin
    ShowMessage('Preencha a idade');
    dbeIdade.SetFocus;
    Abort;
  end;
end;

end.

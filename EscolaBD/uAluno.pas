unit uAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmAluno = class(TForm)
    dbgAluno: TDBGrid;
    pnlRodape: TPanel;
    btnExcluir: TBitBtn;
    btnInserir: TBitBtn;
    btnEditar: TBitBtn;
    gbxFiltro: TGroupBox;
    edtNome: TEdit;
    btnFiltro: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure dbgAlunoDblClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
  private
    procedure AbrirQuery;
    procedure FecharQuery;
    procedure InserirAluno;
    procedure EditarAluno;
    procedure ExcluirAluno;
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uDM, uAlunoDetalhe;

{$R *.dfm}

{ TfrmAluno }

procedure TfrmAluno.AbrirQuery;
begin
  if (not DM.qryAluno.Active) then
    DM.qryAluno.Open;

  if (not DM.qryCidade.Active) then
    DM.qryCidade.Open;
end;

procedure TfrmAluno.btnEditarClick(Sender: TObject);
begin
  EditarAluno;
end;

procedure TfrmAluno.btnExcluirClick(Sender: TObject);
begin
  ExcluirAluno;
end;

procedure TfrmAluno.btnFiltroClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmAluno.btnInserirClick(Sender: TObject);
begin
  InserirAluno;
end;

procedure TfrmAluno.dbgAlunoDblClick(Sender: TObject);
begin
  EditarAluno;
end;

procedure TfrmAluno.EditarAluno;
var
  lAlunoDetalhe: TfrmAlunoDetalhe;
begin
  lAlunoDetalhe := TfrmAlunoDetalhe.Create(nil);
  try
    lAlunoDetalhe.Alterando := True;
    lAlunoDetalhe.Caption := 'Aluno [Editando]';
    lAlunoDetalhe.ShowModal;
  finally
    lAlunoDetalhe.Free;
  end;
end;

procedure TfrmAluno.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Filtrar;
end;

procedure TfrmAluno.ExcluirAluno;
begin
  if DM.qryAluno.IsEmpty then
  begin
    ShowMessage('Não há registros a serem excluídos');
    Exit;
  end;

  try
    DM.qryAluno.Delete;
  except
    ShowMessage('Falha ao excluir os dados');
    Exit;
  end;

  ShowMessage('Aluno excluído com sucesso');
end;

procedure TfrmAluno.FecharQuery;
begin
  DM.qryAluno.Close;
end;

procedure TfrmAluno.Filtrar;
begin
  DM.qryAluno.Filter := 'nome like ' + QuotedStr('%' + edtNome.Text + '%');
  DM.qryAluno.Filtered := (edtNome.Text <> EmptyStr);
end;

procedure TfrmAluno.FormCreate(Sender: TObject);
begin
  AbrirQuery;
end;

procedure TfrmAluno.FormDestroy(Sender: TObject);
begin
  FecharQuery;
end;

procedure TfrmAluno.InserirAluno;
var
  lAlunoDetalhe: TfrmAlunoDetalhe;
begin
  lAlunoDetalhe := TfrmAlunoDetalhe.Create(nil);
  try
    lAlunoDetalhe.Alterando := False;
    lAlunoDetalhe.Caption := 'Aluno [Inserindo]';
    lAlunoDetalhe.ShowModal;
  finally
    lAlunoDetalhe.Free;
  end;
end;

end.

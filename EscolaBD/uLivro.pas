unit uLivro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TTipoOperacao = (
    topInserir = 0,
    topEditar = 1,
    topAchouPesquisa = 2,
    topPadrao = 3
  );

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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure AbrirQueryLivro;
    procedure FecharQueryLivro;
    procedure LimparCampos;
    procedure Inserir;
    procedure Editar;
    procedure Excluir;
    procedure Cancelar;
    procedure Pesquisar;
    procedure Gravar;
    procedure ControleDeBotoes(pTipoOperacao: TTipoOperacao);
    procedure ControlarVisibilidadeCampo(
      pCampo: TEdit;
      pHabilitar: Boolean;
      pLimparCampo: Boolean = False);

    function ExisteLivro(const pCodigoLivro: Integer): Boolean;

    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uDM, Data.DB;

{$R *.dfm}

{ TfrmLivro }

procedure TfrmLivro.AbrirQueryLivro;
begin
  DM.qryLivro.Open;
end;

procedure TfrmLivro.btnCancelarClick(Sender: TObject);
begin
  Cancelar;
end;

procedure TfrmLivro.btnEditarClick(Sender: TObject);
begin
  Editar;
end;

procedure TfrmLivro.btnExcluirClick(Sender: TObject);
begin
  Excluir;
end;

procedure TfrmLivro.btnGravarClick(Sender: TObject);
begin
  Gravar;
end;

procedure TfrmLivro.btnInserirClick(Sender: TObject);
begin
  Inserir;
end;

procedure TfrmLivro.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmLivro.Cancelar;
begin
  Caption := 'Livro';
  DM.qryLivro.Cancel;
  ControleDeBotoes(topPadrao);
  ControlarVisibilidadeCampo(edtCodigo, True);
  edtCodigo.SetFocus;
end;

procedure TfrmLivro.ControlarVisibilidadeCampo(
  pCampo: TEdit;
  pHabilitar: Boolean;
  pLimparCampo: Boolean = False);
begin
  pCampo.Enabled := pHabilitar;

  if pHabilitar then
    pCampo.Color := clWindow
  else
    pCampo.Color := clBtnFace;

  if pLimparCampo then
    pCampo.Clear;
end;

procedure TfrmLivro.ControleDeBotoes(pTipoOperacao: TTipoOperacao);
begin
  case pTipoOperacao of
    topInserir:
    begin
      btnInserir.Enabled := False;
      btnEditar.Enabled := False;
      btnExcluir.Enabled := False;
      btnGravar.Enabled := True;
      btnCancelar.Enabled := True;
      btnPesquisar.Enabled := False;
    end;
    topEditar:
    begin
      btnInserir.Enabled := False;
      btnEditar.Enabled := False;
      btnExcluir.Enabled := False;
      btnGravar.Enabled := True;
      btnCancelar.Enabled := True;
      btnPesquisar.Enabled := False;
    end;
    topAchouPesquisa:
    begin
      btnInserir.Enabled := False;
      btnEditar.Enabled := True;
      btnExcluir.Enabled := True;
      btnGravar.Enabled := False;
      btnCancelar.Enabled := True;
      btnPesquisar.Enabled := True;
    end;
    topPadrao:
    begin
      btnInserir.Enabled := True;
      btnEditar.Enabled := False;
      btnExcluir.Enabled := False;
      btnGravar.Enabled := False;
      btnCancelar.Enabled := False;
      btnPesquisar.Enabled := True;
    end;
  end;
end;

procedure TfrmLivro.Editar;
begin
  Caption := 'Livro [Editando]';
  DM.qryLivro.Edit;
  ControleDeBotoes(topEditar);
  ControlarVisibilidadeCampo(edtCodigo, False);
  edtDescricao.SetFocus;
end;

procedure TfrmLivro.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Pesquisar;
end;

procedure TfrmLivro.Excluir;
begin
  Caption := 'Livro';
  DM.qryLivro.Delete;
  LimparCampos;
  edtCodigo.SetFocus;
end;

procedure TfrmLivro.FecharQueryLivro;
begin
  DM.qryLivro.Close;
end;

procedure TfrmLivro.FormActivate(Sender: TObject);
begin
  ControleDeBotoes(topPadrao);
  ControlarVisibilidadeCampo(edtCodigo, True);
end;

procedure TfrmLivro.FormCreate(Sender: TObject);
begin
  AbrirQueryLivro;
end;

procedure TfrmLivro.FormDestroy(Sender: TObject);
begin
  FecharQueryLivro;
end;

procedure TfrmLivro.Gravar;
begin
  if (edtDescricao.Text = EmptyStr) then
  begin
    ShowMessage('Informe a descrição');
    edtDescricao.SetFocus;
    Exit;
  end;

  if (edtAutor.Text = EmptyStr) then
  begin
    ShowMessage('Informe o autor');
    edtAutor.SetFocus;
    Exit;
  end;

  if (DM.qryLivro.State in [dsInsert, dsEdit]) then
  begin
    DM.qryLivrodescricao.AsString := edtDescricao.Text;
    DM.qryLivroautor.AsString := edtAutor.Text;
    DM.qryLivroano.AsString := edtAno.Text;

    try
      DM.qryLivro.Post;
    except on E: Exception do
      ShowMessage('Erro ao gravar dados: ' + E.Message);
    end;

    LimparCampos;
    Caption := 'Livro';
    ControleDeBotoes(topPadrao);
    ControlarVisibilidadeCampo(edtCodigo, True);
    ShowMessage('Operação concluída com sucesso');
  end;
end;

procedure TfrmLivro.Inserir;
begin
  Caption := 'Livro [Inserindo]';
  DM.qryLivro.Append;
  LimparCampos;
  ControleDeBotoes(topInserir);
  ControlarVisibilidadeCampo(edtCodigo, False, True);
  edtDescricao.SetFocus;
end;

procedure TfrmLivro.LimparCampos;
begin
  edtDescricao.Clear;
  edtAutor.Clear;
  edtAno.Clear;
end;

procedure TfrmLivro.Pesquisar;
begin
  if (edtCodigo.Text = EmptyStr) then
  begin
    ShowMessage('Informe o código');
    edtCodigo.SetFocus;
    Exit;
  end;

  if (not ExisteLivro(StrToInt(edtCodigo.Text))) then
  begin
    LimparCampos;
    ShowMessage('O código informado não existe');
    edtCodigo.SetFocus;
    ControleDeBotoes(topPadrao);
    Exit;
  end;

  edtDescricao.Text := DM.qryLivrodescricao.AsString;
  edtAutor.Text := DM.qryLivroAutor.AsString;
  edtAno.Text := DM.qryLivroano.AsString;
  ControleDeBotoes(topAchouPesquisa);
end;

function TfrmLivro.ExisteLivro(const pCodigoLivro: Integer): Boolean;
begin
  if (not DM.qryLivro.Active) then
    Result := False;

  DM.qryLivro.Close;
  DM.qryLivro.Params[0].Value := pCodigoLivro;
  DM.qryLivro.Open;

  Result := (not DM.qryLivro.IsEmpty());
end;

end.

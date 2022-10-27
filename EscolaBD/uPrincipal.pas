unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Aluno1: TMenuItem;
    Livro1: TMenuItem;
    procedure Aluno1Click(Sender: TObject);
    procedure Livro1Click(Sender: TObject);
  private
    procedure AbrirAluno;
    procedure AbrirLivro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uAluno, uLivro;

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.AbrirAluno;
var
  lTelaAluno: TfrmAluno;
begin
  lTelaAluno := TfrmAluno.Create(nil);
  try
    lTelaAluno.ShowModal;
  finally
    lTelaAluno.Free;
  end;
end;

procedure TfrmPrincipal.AbrirLivro;
var
  lTelaLivro: TfrmLivro;
begin
  lTelaLivro := TfrmLivro.Create(nil);
  try
    lTelaLivro.ShowModal;
  finally
    lTelaLivro.Free;
  end;
end;

procedure TfrmPrincipal.Aluno1Click(Sender: TObject);
begin
  AbrirAluno;
end;

procedure TfrmPrincipal.Livro1Click(Sender: TObject);
begin
  AbrirLivro;
end;

end.

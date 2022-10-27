unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    mmnPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    Disciplina1: TMenuItem;
    Curso1: TMenuItem;
    stbRodape: TStatusBar;
    tmrFrequencia: TTimer;
    imgPrincipal: TImage;
    procedure tmrFrequenciaTimer(Sender: TObject);
    procedure Disciplina1Click(Sender: TObject);
    procedure Curso1Click(Sender: TObject);
  private
    procedure PreencherRodape;
    procedure AbrirTelaDisciplina;
    procedure AbrirTelaCurso;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uDisciplina, uCurso;

{$R *.dfm}

procedure TfrmPrincipal.AbrirTelaCurso;
var
  lTelaCurso: TfrmCurso;
begin
  lTelaCurso := TfrmCurso.Create(nil);
  try
    lTelaCurso.ShowModal;
  finally
    lTelaCurso.Free;
  end;
end;

procedure TfrmPrincipal.AbrirTelaDisciplina;
var
  lTelaDisciplina: TfrmDisciplina;
begin
  lTelaDisciplina := TfrmDisciplina.Create(nil);
  try
    lTelaDisciplina.ShowModal;
  finally
    lTelaDisciplina.Free;
  end;
end;

procedure TfrmPrincipal.Curso1Click(Sender: TObject);
begin
  AbrirTelaCurso;
end;

procedure TfrmPrincipal.Disciplina1Click(Sender: TObject);
begin
  AbrirTelaDisciplina;
end;

procedure TfrmPrincipal.PreencherRodape;
begin
  stbRodape.Panels[0].Text := 'Data: ' + DateToStr(Date);
  stbRodape.Panels[1].Text := 'Hora: ' + TimeToStr(Time);
end;

procedure TfrmPrincipal.tmrFrequenciaTimer(Sender: TObject);
begin
  PreencherRodape;
end;

end.

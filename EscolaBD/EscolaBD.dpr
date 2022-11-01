program EscolaBD;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDM in 'uDM.pas' {DM: TDataModule},
  uAluno in 'uAluno.pas' {frmAluno},
  uAlunoDetalhe in 'uAlunoDetalhe.pas' {frmAlunoDetalhe},
  uLivro in 'uLivro.pas' {frmLivro},
  uPesquisa in 'uPesquisa.pas' {frmPesquisa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

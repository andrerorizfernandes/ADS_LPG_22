unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    qryAluno: TFDQuery;
    qryAlunocodaluno: TFDAutoIncField;
    qryAlunonome: TStringField;
    qryAlunoidade: TIntegerField;
    dsrAluno: TDataSource;
    qryCidade: TFDQuery;
    dsrCidade: TDataSource;
    qryUf: TFDQuery;
    dsrUf: TDataSource;
    qryUfcoduf: TByteField;
    qryUfsigla: TStringField;
    qryUfdescricao: TStringField;
    qryCidadecodcidade: TIntegerField;
    qryCidadenome: TStringField;
    qryCidadecoduf: TByteField;
    qryCidadesigla: TStringField;
    qryCidadedescricao: TStringField;
    qryAlunocodcidade: TIntegerField;
    qryAlunocidade: TStringField;
    qryAlunouf: TStringField;
    qryLivro: TFDQuery;
    dsrLivro: TDataSource;
    qryLivrocodlivro: TFDAutoIncField;
    qryLivrodescricao: TStringField;
    qryLivroautor: TStringField;
    qryLivroano: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

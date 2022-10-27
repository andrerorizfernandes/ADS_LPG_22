object DM: TDM
  OldCreateOrder = False
  Height = 395
  Width = 605
  object Conexao: TFDConnection
    Params.Strings = (
      'Server=127.0.0.1'
      'Database=ads2022'
      'User_Name=root'
      'Password=18071988'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Program Files (x86)\MySQL\MySQL Server 5.6\lib\libmysql.dll'
    Left = 128
    Top = 16
  end
  object qryAluno: TFDQuery
    FilterOptions = [foCaseInsensitive]
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  a.codaluno, a.nome, a.idade, a.codcidade,'
      '  c.nome cidade, u.sigla uf'
      'FROM aluno a'
      'INNER JOIN cidade c ON c.codcidade = a.codcidade'
      'INNER JOIN uf u ON u.coduf = c.coduf'
      'ORDER BY c.nome')
    Left = 32
    Top = 96
    object qryAlunocodaluno: TFDAutoIncField
      FieldName = 'codaluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryAlunonome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 60
    end
    object qryAlunoidade: TIntegerField
      FieldName = 'idade'
      Required = True
    end
    object qryAlunocodcidade: TIntegerField
      FieldName = 'codcidade'
      Origin = 'codcidade'
      Required = True
    end
    object qryAlunocidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryAlunouf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'sigla'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object dsrAluno: TDataSource
    DataSet = qryAluno
    Left = 48
    Top = 112
  end
  object qryCidade: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  c.codcidade, c.nome, c.coduf,'
      '  u.sigla, u.descricao'
      'FROM cidade c'
      'INNER JOIN uf u ON u.coduf = c.coduf'
      'ORDER BY sigla, nome')
    Left = 120
    Top = 96
    object qryCidadecodcidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codcidade'
      Origin = 'codcidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCidadenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object qryCidadecoduf: TByteField
      FieldName = 'coduf'
      Origin = 'coduf'
      Required = True
    end
    object qryCidadesigla: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sigla'
      Origin = 'sigla'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object qryCidadedescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object dsrCidade: TDataSource
    DataSet = qryCidade
    Left = 136
    Top = 112
  end
  object qryUf: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT coduf, sigla, descricao FROM uf'
      'ORDER BY sigla')
    Left = 192
    Top = 96
    object qryUfcoduf: TByteField
      AutoGenerateValue = arAutoInc
      FieldName = 'coduf'
      Origin = 'coduf'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUfsigla: TStringField
      FieldName = 'sigla'
      Origin = 'sigla'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryUfdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 50
    end
  end
  object dsrUf: TDataSource
    DataSet = qryUf
    Left = 208
    Top = 112
  end
  object qryLivro: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  l.codlivro, l.descricao, l.autor, l.ano'
      'FROM livro l'
      'WHERE l.codlivro = :codlivro')
    Left = 272
    Top = 96
    ParamData = <
      item
        Name = 'CODLIVRO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryLivrocodlivro: TFDAutoIncField
      FieldName = 'codlivro'
      Origin = 'codlivro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryLivrodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 60
    end
    object qryLivroautor: TStringField
      FieldName = 'autor'
      Origin = 'autor'
      Required = True
      Size = 70
    end
    object qryLivroano: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ano'
      Origin = 'ano'
    end
  end
  object dsrLivro: TDataSource
    DataSet = qryLivro
    Left = 280
    Top = 112
  end
end

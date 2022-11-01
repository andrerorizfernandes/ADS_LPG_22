object frmLivro: TfrmLivro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Livro'
  ClientHeight = 169
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 359
    Top = 80
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object pnlLivro: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 142
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 5
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Bevel1: TBevel
      Left = 1
      Top = 48
      Width = 513
      Height = 2
    end
    object lblDescricao: TLabel
      Left = 6
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object lblAutor: TLabel
      Left = 6
      Top = 97
      Width = 27
      Height = 13
      Caption = 'Autor'
    end
    object lblAno: TLabel
      Left = 432
      Top = 97
      Width = 19
      Height = 13
      Caption = 'Ano'
    end
    object edtCodigo: TEdit
      Left = 6
      Top = 21
      Width = 73
      Height = 21
      MaxLength = 9
      NumbersOnly = True
      TabOrder = 0
      OnKeyPress = edtCodigoKeyPress
    end
    object btnPesquisar: TBitBtn
      Left = 82
      Top = 19
      Width = 75
      Height = 25
      Caption = '&Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnPesquisarClick
    end
    object edtDescricao: TEdit
      Left = 6
      Top = 70
      Width = 500
      Height = 21
      TabOrder = 2
    end
    object edtAutor: TEdit
      Left = 6
      Top = 112
      Width = 422
      Height = 21
      TabOrder = 3
    end
    object edtAno: TEdit
      Left = 432
      Top = 112
      Width = 74
      Height = 21
      TabOrder = 4
    end
  end
  object btnInserir: TBitBtn
    Left = 100
    Top = 142
    Width = 83
    Height = 27
    Align = alRight
    Caption = '&Inserir'
    TabOrder = 1
    OnClick = btnInserirClick
  end
  object btnEditar: TBitBtn
    Left = 183
    Top = 142
    Width = 83
    Height = 27
    Align = alRight
    Caption = '&Editar'
    TabOrder = 2
    OnClick = btnEditarClick
  end
  object btnExcluir: TBitBtn
    Left = 266
    Top = 142
    Width = 83
    Height = 27
    Align = alRight
    Caption = 'E&xcluir'
    TabOrder = 3
    OnClick = btnExcluirClick
  end
  object btnGravar: TBitBtn
    Left = 349
    Top = 142
    Width = 83
    Height = 27
    Align = alRight
    Caption = '&Gravar'
    TabOrder = 4
    OnClick = btnGravarClick
  end
  object btnCancelar: TBitBtn
    Left = 432
    Top = 142
    Width = 83
    Height = 27
    Align = alRight
    Caption = '&Cancelar'
    TabOrder = 5
    OnClick = btnCancelarClick
  end
end

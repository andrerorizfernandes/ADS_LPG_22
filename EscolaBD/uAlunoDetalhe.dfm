object frmAlunoDetalhe: TfrmAlunoDetalhe
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aluno'
  ClientHeight = 127
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAluno: TPanel
    Left = 0
    Top = 0
    Width = 470
    Height = 97
    Align = alTop
    TabOrder = 0
    object lblNome: TLabel
      Left = 8
      Top = 5
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object lblIdade: TLabel
      Left = 393
      Top = 5
      Width = 28
      Height = 13
      Caption = 'Idade'
    end
    object lblCidade: TLabel
      Left = 8
      Top = 53
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object dbeNome: TDBEdit
      Left = 8
      Top = 21
      Width = 379
      Height = 21
      DataField = 'nome'
      DataSource = DM.dsrAluno
      TabOrder = 0
    end
    object dbeIdade: TDBEdit
      Left = 393
      Top = 21
      Width = 53
      Height = 21
      DataField = 'idade'
      DataSource = DM.dsrAluno
      TabOrder = 1
    end
    object dblCidade: TDBLookupComboBox
      Left = 8
      Top = 68
      Width = 379
      Height = 21
      DataField = 'codcidade'
      DataSource = DM.dsrAluno
      KeyField = 'codcidade'
      ListField = 'nome'
      ListSource = DM.dsrCidade
      TabOrder = 2
    end
    object dbeUf: TDBEdit
      Left = 392
      Top = 68
      Width = 54
      Height = 21
      Color = cl3DLight
      DataField = 'sigla'
      DataSource = DM.dsrCidade
      ReadOnly = True
      TabOrder = 3
    end
  end
  object btnGravar: TBitBtn
    Left = 296
    Top = 97
    Width = 87
    Height = 30
    Align = alRight
    Caption = '&Gravar'
    TabOrder = 1
    OnClick = btnGravarClick
  end
  object btnCancelar: TBitBtn
    Left = 383
    Top = 97
    Width = 87
    Height = 30
    Align = alRight
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 2
    OnClick = btnCancelarClick
  end
  object Button1: TButton
    Left = 104
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
end

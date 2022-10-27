object frmAluno: TfrmAluno
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aluno'
  ClientHeight = 361
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object dbgAluno: TDBGrid
    Left = 0
    Top = 40
    Width = 706
    Height = 292
    Align = alClient
    DataSource = DM.dsrAluno
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDblClick = dbgAlunoDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 379
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idade'
        Title.Caption = 'Idade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Title.Caption = 'Cidade'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf'
        Title.Caption = 'Uf'
        Width = 41
        Visible = True
      end>
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 332
    Width = 706
    Height = 29
    Align = alBottom
    TabOrder = 1
    object btnExcluir: TBitBtn
      Left = 618
      Top = 1
      Width = 87
      Height = 27
      Align = alRight
      Caption = 'E&xcluir'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnInserir: TBitBtn
      Left = 444
      Top = 1
      Width = 87
      Height = 27
      Align = alRight
      Caption = '&Inserir'
      TabOrder = 0
      OnClick = btnInserirClick
    end
    object btnEditar: TBitBtn
      Left = 531
      Top = 1
      Width = 87
      Height = 27
      Align = alRight
      Caption = '&Editar'
      TabOrder = 1
      OnClick = btnEditarClick
    end
  end
  object gbxFiltro: TGroupBox
    Left = 0
    Top = 0
    Width = 706
    Height = 40
    Align = alTop
    Caption = ' Filtro por nome '
    TabOrder = 2
    object edtNome: TEdit
      Left = 2
      Top = 15
      Width = 627
      Height = 23
      Align = alClient
      TabOrder = 0
      OnKeyPress = edtNomeKeyPress
      ExplicitLeft = 24
      ExplicitTop = 24
      ExplicitWidth = 121
      ExplicitHeight = 21
    end
    object btnFiltro: TBitBtn
      Left = 629
      Top = 15
      Width = 75
      Height = 23
      Align = alRight
      Caption = '&Filtrar'
      TabOrder = 1
      OnClick = btnFiltroClick
      ExplicitLeft = 608
      ExplicitTop = 16
      ExplicitHeight = 25
    end
  end
end

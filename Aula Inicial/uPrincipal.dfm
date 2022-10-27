object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aula Teste'
  ClientHeight = 386
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlOlaMundo: TPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 57
    Align = alTop
    Caption = 'Ol'#225' Mundo!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblSaudacao: TLabel
      Left = 40
      Top = 16
      Width = 31
      Height = 23
      Caption = 'Dia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object btnTeste: TButton
    Left = 220
    Top = 57
    Width = 75
    Height = 22
    Align = alLeft
    Caption = 'Teste'
    TabOrder = 1
    OnClick = btnTesteClick
  end
  object edtQuantidade: TEdit
    Left = 145
    Top = 57
    Width = 75
    Height = 22
    Align = alLeft
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 2
    OnKeyPress = edtQuantidadeKeyPress
    ExplicitHeight = 21
  end
  object lbxResultado: TListBox
    Left = 0
    Top = 79
    Width = 636
    Height = 307
    Align = alBottom
    ItemHeight = 13
    TabOrder = 3
  end
  object cboTipo: TComboBox
    Left = 0
    Top = 57
    Width = 145
    Height = 21
    Align = alLeft
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 4
    Text = 'For'
    Items.Strings = (
      'For'
      'While')
  end
end

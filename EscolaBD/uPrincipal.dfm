object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Escola'
  ClientHeight = 398
  ClientWidth = 802
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 408
    Top = 40
    object Cadastro1: TMenuItem
      Caption = '&Cadastro'
      object Aluno1: TMenuItem
        Caption = '&Aluno'
        OnClick = Aluno1Click
      end
      object Livro1: TMenuItem
        Caption = '&Livro'
        OnClick = Livro1Click
      end
    end
  end
end

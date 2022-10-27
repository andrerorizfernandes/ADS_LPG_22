object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cidades do Esp'#237'rito Santo'
  ClientHeight = 374
  ClientWidth = 799
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
  object lbxResultado: TListBox
    Left = 0
    Top = 0
    Width = 799
    Height = 345
    Align = alTop
    ItemHeight = 13
    Items.Strings = (
      'AFONSO CLAUDIO'
      'AGUA DOCE DO NORTE'
      'AGUIA BRANCA'
      'ALEGRE'
      'ALFREDO CHAVES'
      'ALTO RIO NOVO'
      'ANCHIETA'
      'APIACA'
      'ARACRUZ'
      'ATILIO VIVACQUA'
      'BAIXO GUANDU'
      'BARRA DE SAO FRANCISCO'
      'BOA ESPERANCA'
      'BOM JESUS DO NORTE'
      'BREJETUBA'
      'CACHOEIRO DE ITAPEMIRIM'
      'CARIACICA'
      'CASTELO'
      'COLATINA'
      'CONCEICAO DA BARRA'
      'CONCEICAO DO CASTELO'
      'DIVINO DE SAO LOURENCO'
      'DOMINGOS MARTINS'
      'DORES DO RIO PRETO'
      'ECOPORANGA'
      'FUNDAO'
      'GOVERNADOR LINDENBERG'
      'GUACUI'
      'GUARAPARI'
      'IBATIBA'
      'IBIRACU'
      'IBITIRAMA'
      'ICONHA'
      'IRUPI'
      'ITAGUACU'
      'ITAPEMIRIM'
      'ITARANA'
      'IUNA'
      'JAGUARE'
      'JERONIMO MONTEIRO'
      'JOAO NEIVA'
      'LARANJA DA TERRA'
      'LINHARES'
      'MANTENOPOLIS'
      'MARATAIZES'
      'MARECHAL FLORIANO'
      'MARILANDIA'
      'MIMOSO DO SUL'
      'MONTANHA'
      'MUCURICI'
      'MUNIZ FREIRE'
      'MUQUI'
      'NOVA VENECIA'
      'PANCAS'
      'PEDRO CANARIO'
      'PINHEIROS'
      'PIUMA'
      'PONTO BELO'
      'PRESIDENTE KENNEDY'
      'RIO BANANAL'
      'RIO NOVO DO SUL'
      'SANTA LEOPOLDINA'
      'SANTA MARIA DE JETIBA'
      'SANTA TERESA'
      'SAO DOMINGOS DO NORTE'
      'SAO GABRIEL DA PALHA'
      'SAO JOSE DO CALCADO'
      'SAO MATEUS'
      'SAO ROQUE DO CANAA'
      'SERRA'
      'SOORETAMA'
      'VARGEM ALTA'
      'VENDA NOVA DO IMIGRANTE'
      'VIANA'
      'VILA PAVAO'
      'VILA VALERIO'
      'VILA VELHA'
      'VITORIA')
    Sorted = True
    TabOrder = 0
  end
  object edtPesquisa: TEdit
    Left = 528
    Top = 345
    Width = 196
    Height = 29
    Align = alRight
    CharCase = ecUpperCase
    Color = clWhite
    TabOrder = 1
    ExplicitHeight = 21
  end
  object btnPesquisa: TButton
    Left = 724
    Top = 345
    Width = 75
    Height = 29
    Align = alRight
    Caption = '&Pesquisa'
    TabOrder = 2
    OnClick = btnPesquisaClick
  end
end

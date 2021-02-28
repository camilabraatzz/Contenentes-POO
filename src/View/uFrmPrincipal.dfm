object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Mundo'
  ClientHeight = 402
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 153
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 21
      Top = 16
      Width = 53
      Height = 13
      Caption = 'Continente'
    end
    object btnInserirContinente: TButton
      Left = 325
      Top = 34
      Width = 100
      Height = 21
      Caption = 'Inserir continente'
      TabOrder = 1
      OnClick = btnInserirContinenteClick
    end
    object edtDimensao: TLabeledEdit
      Left = 165
      Top = 118
      Width = 121
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Dimens'#227'o'
      TabOrder = 4
    end
    object edtPopulacao: TLabeledEdit
      Left = 21
      Top = 118
      Width = 121
      Height = 21
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = 'Popula'#231#227'o'
      TabOrder = 3
    end
    object edtNomePais: TLabeledEdit
      Left = 21
      Top = 75
      Width = 265
      Height = 21
      EditLabel.Width = 64
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do pa'#237's'
      TabOrder = 2
    end
    object btnExibir: TButton
      Left = 325
      Top = 118
      Width = 100
      Height = 21
      Caption = 'Exibir'
      TabOrder = 6
      OnClick = btnExibirClick
    end
    object btnInserirPais: TButton
      Left = 325
      Top = 75
      Width = 100
      Height = 21
      Caption = 'Inserir pa'#237's'
      TabOrder = 5
      OnClick = btnInserirPaisClick
    end
    object cmbContinente: TComboBox
      Left = 21
      Top = 35
      Width = 265
      Height = 21
      TabOrder = 0
      Items.Strings = (
        'Am'#233'rica'
        'Europa'
        #193'sia'
        #193'frica'
        'Oceania'
        'Ant'#225'rtida')
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 153
    Width = 465
    Height = 249
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 1
  end
end

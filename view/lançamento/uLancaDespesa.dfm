inherited frLancaDespesa: TfrLancaDespesa
  Caption = 'Lan'#231'amento de despesa'
  ClientHeight = 163
  ClientWidth = 589
  Position = poScreenCenter
  ExplicitWidth = 605
  ExplicitHeight = 202
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 80
    Top = 102
    Width = 56
    Height = 14
    Caption = 'Unidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnFundo: TPanel
    Width = 589
    Height = 163
    Color = 15983831
    ExplicitTop = 8
    ExplicitWidth = 589
    ExplicitHeight = 169
    inherited Bevel3: TBevel
      Left = -35
      Top = 45
      Width = 892
      Height = 15
      ExplicitLeft = -35
      ExplicitTop = 45
      ExplicitWidth = 892
      ExplicitHeight = 15
    end
    inherited btAnterior: TSpeedButton
      Left = 515
      Top = 163
      ExplicitLeft = 515
      ExplicitTop = 163
    end
    inherited btProximo: TSpeedButton
      Left = 563
      Top = 163
      ExplicitLeft = 563
      ExplicitTop = 163
    end
    inherited btConsulta: TSpeedButton
      Left = 47
      Top = 4
      OnClick = btConsultaClick
      ExplicitLeft = 47
      ExplicitTop = 4
    end
    inherited btExcluir: TSpeedButton
      Left = 603
      Top = 163
      ExplicitLeft = 603
      ExplicitTop = 163
    end
    inherited btRegistroAntigo: TSpeedButton
      Left = 534
      ExplicitLeft = 534
    end
    inherited btStatus: TSpeedButton
      Left = 367
      Width = 161
      ExplicitLeft = 367
      ExplicitWidth = 161
    end
    inherited btNovoRegistro: TSpeedButton
      Left = 534
      ExplicitLeft = 534
    end
    inherited btLimpar: TSpeedButton
      Left = 97
      Top = 4
      OnClick = btLimparClick
      ExplicitLeft = 97
      ExplicitTop = 4
    end
    inherited SpeedButton1: TSpeedButton
      Left = -2
      Top = 0
      OnClick = SpeedButton1Click
      ExplicitLeft = -2
      ExplicitTop = 0
    end
    object lbCodigo: TLabel
      Left = 64
      Top = 61
      Width = 49
      Height = 14
      Caption = 'C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNome: TLabel
      Left = 179
      Top = 61
      Width = 56
      Height = 14
      Caption = 'Unidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 165
      Top = 117
      Width = 70
      Height = 14
      Caption = ' Valor(R$)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Tipo: TLabel
      Left = 22
      Top = 116
      Width = 35
      Height = 14
      Caption = 'Tipo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 373
      Top = 116
      Width = 70
      Height = 14
      Caption = 'Vencimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = -231
      Top = 88
      Width = 928
      Height = 19
      Shape = bsTopLine
    end
    object edCodigo: TEdit
      Left = 119
      Top = 59
      Width = 40
      Height = 17
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = edCodigoExit
    end
    object edUnidade: TEdit
      Left = 241
      Top = 59
      Width = 40
      Height = 19
      BorderStyle = bsNone
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = edUnidadeExit
      OnKeyDown = edUnidadeKeyDown
    end
    object Panel3: TPanel
      Left = 286
      Top = 60
      Width = 260
      Height = 17
      BevelOuter = bvLowered
      Color = clHighlightText
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
    end
    object cbTipoLocal: TComboBox
      Left = 63
      Top = 113
      Width = 97
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'Condom'#237'nio'
      OnExit = cbTipoLocalExit
      OnKeyUp = cbTipoLocalKeyUp
      Items.Strings = (
        'Condom'#237'nio'
        #193'gua'
        'Luz'
        'Manuten'#231#227'o Elevador'
        'Manuten'#231#227'o '#193'rea de lazer'
        'Materiais '
        'Decora'#231#227'o '
        'Seguran'#231'a'
        'Fundo Reserva'
        'Pintura'
        ''
        '')
    end
    object edNumero: TEdit
      Left = 241
      Top = 113
      Width = 97
      Height = 19
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object MaskEdit1: TMaskEdit
      Left = 449
      Top = 113
      Width = 97
      Height = 22
      EditMask = '!99/99/0000;1; '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      Text = '  /  /    '
      OnExit = MaskEdit1Exit
      OnKeyDown = MaskEdit1KeyDown
    end
  end
end

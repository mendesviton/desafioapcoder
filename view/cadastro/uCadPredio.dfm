inherited frCadPredioSyndico: TfrCadPredioSyndico
  Caption = 'Bloco / Pr'#233'dio'
  ClientHeight = 179
  ClientWidth = 546
  Color = 10315805
  KeyPreview = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  ExplicitWidth = 562
  ExplicitHeight = 218
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 546
    Height = 179
    Color = 15983831
    ExplicitWidth = 546
    ExplicitHeight = 179
    inherited Bevel3: TBevel
      Left = 39
      Width = 516
      ExplicitLeft = 39
      ExplicitWidth = 516
    end
    inherited btAnterior: TSpeedButton
      OnClick = btAnteriorClick
    end
    inherited btProximo: TSpeedButton
      OnClick = btProximoClick
    end
    inherited btConsulta: TSpeedButton
      OnClick = btConsultaClick
    end
    inherited btExcluir: TSpeedButton
      OnClick = btExcluirClick
    end
    inherited btRegistroAntigo: TSpeedButton
      Left = 492
      Enabled = True
      ExplicitLeft = 492
    end
    inherited btStatus: TSpeedButton
      Left = 319
      Width = 154
      Enabled = True
      ExplicitLeft = 319
      ExplicitWidth = 154
    end
    inherited btNovoRegistro: TSpeedButton
      Left = 492
      Enabled = True
      ExplicitLeft = 492
    end
    inherited btLimpar: TSpeedButton
      OnClick = btLimparClick
    end
    inherited SpeedButton1: TSpeedButton
      OnClick = SpeedButton1Click
    end
    object Bevel1: TBevel
      Left = -220
      Top = 47
      Width = 756
      Height = 10
      Shape = bsTopLine
    end
    object lbCodigo: TLabel
      Left = 63
      Top = 87
      Width = 70
      Height = 14
      Caption = 'Condom'#237'nio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = -196
      Top = 119
      Width = 756
      Height = 11
      Shape = bsTopLine
    end
    object lbTipo: TLabel
      Left = 344
      Top = 138
      Width = 28
      Height = 14
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 84
      Top = 64
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
    object Label2: TLabel
      Left = 11
      Top = 139
      Width = 98
      Height = 14
      Caption = 'Bloco / Pr'#233'dio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edCodCond: TEdit
      Left = 139
      Top = 86
      Width = 40
      Height = 17
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = edCodCondEnter
      OnExit = edCodCondExit
      OnKeyDown = edCodCondKeyDown
    end
    object Panel2: TPanel
      Left = 204
      Top = 87
      Width = 295
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
      TabOrder = 2
    end
    object cbTipo: TComboBox
      Left = 378
      Top = 135
      Width = 121
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'Sala'
      OnExit = cbTipoExit
      OnKeyUp = cbTipoKeyUp
      Items.Strings = (
        'Sala'
        'Loja '
        'Garagem'
        'Terreno'
        'Lote'
        'Unidade')
    end
    object edCodigo: TEdit
      Left = 139
      Top = 63
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
      OnKeyDown = edCodigoKeyDown
    end
    object edBLoco: TEdit
      Left = 115
      Top = 136
      Width = 204
      Height = 17
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Panel1: TPanel
      Left = 204
      Top = 63
      Width = 295
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
  end
end

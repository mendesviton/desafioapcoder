inherited frCadPredioSyndico: TfrCadPredioSyndico
  Caption = 'Bloco / Pr'#233'dio'
  ClientHeight = 179
  ClientWidth = 456
  Color = 10315805
  Position = poScreenCenter
  ExplicitWidth = 472
  ExplicitHeight = 218
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 456
    Height = 179
    Color = 15983831
    ExplicitLeft = 32
    ExplicitTop = 0
    ExplicitWidth = 456
    ExplicitHeight = 196
    inherited Bevel3: TBevel
      Width = 516
      ExplicitWidth = 516
    end
    inherited btRegistroAntigo: TSpeedButton
      Left = 405
      ExplicitLeft = 405
    end
    inherited btStatus: TSpeedButton
      Left = 287
      ExplicitLeft = 287
    end
    inherited btNovoRegistro: TSpeedButton
      Left = 405
      ExplicitLeft = 405
    end
    inherited SpeedButton1: TSpeedButton
      OnClick = SpeedButton1Click
    end
    object Bevel1: TBevel
      Left = -230
      Top = 47
      Width = 756
      Height = 10
      Shape = bsTopLine
    end
    object lbCodigo: TLabel
      Left = 47
      Top = 60
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
      Top = 91
      Width = 756
      Height = 11
      Shape = bsTopLine
    end
    object lbTipo: TLabel
      Left = 206
      Top = 108
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
      Left = 100
      Top = 109
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
      Left = 53
      Top = 136
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
      Left = 123
      Top = 58
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
    end
    object Panel2: TPanel
      Left = 169
      Top = 58
      Width = 191
      Height = 17
      BevelOuter = bvLowered
      Color = clHighlightText
      ParentBackground = False
      TabOrder = 1
    end
    object cbTipo: TComboBox
      Left = 240
      Top = 105
      Width = 121
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'Apartamento'
      Items.Strings = (
        'Sala'
        'Loja '
        'Garagem'
        'Terreno'
        'Lote'
        'Unidade')
    end
    object edCodigo: TEdit
      Left = 158
      Top = 108
      Width = 40
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
    object edBLoco: TEdit
      Left = 157
      Top = 133
      Width = 204
      Height = 17
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
end

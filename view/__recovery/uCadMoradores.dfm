inherited frMoradoresSyndicos: TfrMoradoresSyndicos
  Caption = 'Moradores'
  ClientHeight = 297
  ClientWidth = 611
  ExplicitWidth = 627
  ExplicitHeight = 336
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 611
    Height = 297
    Color = 15918295
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 611
    ExplicitHeight = 297
    inherited Bevel3: TBevel
      Left = -82
      Width = 748
      Height = 26
      ExplicitLeft = -82
      ExplicitWidth = 748
      ExplicitHeight = 26
    end
    inherited btRegistroAntigo: TSpeedButton
      Left = 549
      ExplicitLeft = 549
    end
    inherited btStatus: TSpeedButton
      Left = 431
      ExplicitLeft = 431
    end
    inherited btNovoRegistro: TSpeedButton
      Left = 549
      ExplicitLeft = 549
    end
    inherited SpeedButton1: TSpeedButton
      OnClick = SpeedButton1Click
    end
    object lbCodigo: TLabel
      Left = 45
      Top = 72
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
    object Bevel2: TBevel
      Left = -25
      Top = 133
      Width = 756
      Height = 11
      Shape = bsTopLine
    end
    object lbNome: TLabel
      Left = 37
      Top = 92
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
    object lbEmail: TLabel
      Left = 11
      Top = 175
      Width = 77
      Height = 14
      Caption = 'Nascimento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCnpj: TLabel
      Left = 51
      Top = 150
      Width = 35
      Height = 14
      Caption = 'Nome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 39
      Top = 225
      Width = 49
      Height = 14
      Caption = 'E-mail:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 25
      Top = 201
      Width = 63
      Height = 14
      Caption = 'Telefone:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 491
      Top = 257
      Width = 63
      Height = 14
      Caption = '250 x 110'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 456
      Top = 265
      Width = 29
      Height = 3
      Shape = bsTopLine
    end
    object Bevel4: TBevel
      Left = 560
      Top = 265
      Width = 31
      Height = 3
      Shape = bsTopLine
    end
    object edCodigo: TEdit
      Left = 94
      Top = 69
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
      Left = 139
      Top = 69
      Width = 318
      Height = 17
      BevelOuter = bvLowered
      Color = clHighlightText
      ParentBackground = False
      TabOrder = 1
    end
    object edUnidade: TEdit
      Left = 94
      Top = 92
      Width = 40
      Height = 19
      BorderStyle = bsNone
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edNome: TEdit
      Left = 94
      Top = 150
      Width = 307
      Height = 19
      BorderStyle = bsNone
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edNascimento: TEdit
      Left = 94
      Top = 175
      Width = 307
      Height = 19
      BorderStyle = bsNone
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edTelefone: TEdit
      Left = 94
      Top = 200
      Width = 307
      Height = 19
      BorderStyle = bsNone
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edEmail: TEdit
      Left = 94
      Top = 225
      Width = 307
      Height = 19
      BorderStyle = bsNone
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Panel1: TPanel
      Left = 456
      Top = 150
      Width = 129
      Height = 101
      BevelInner = bvLowered
      Caption = 'Inserir foto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      object Image1: TImage
        Left = 2
        Top = 0
        Width = 127
        Height = 143
        Hint = 'Clique com o bot'#227'o direito'
        ParentShowHint = False
        ShowHint = True
      end
    end
    object Panel3: TPanel
      Left = 139
      Top = 93
      Width = 318
      Height = 17
      BevelOuter = bvLowered
      Color = clHighlightText
      ParentBackground = False
      TabOrder = 8
    end
    object ckResponsável: TCheckBox
      Left = 94
      Top = 254
      Width = 191
      Height = 17
      Caption = 'Respons'#225'vel financeiro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
end

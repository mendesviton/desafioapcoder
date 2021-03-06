inherited frMoradoresSyndicos: TfrMoradoresSyndicos
  Caption = 'Moradores'
  ClientHeight = 297
  ClientWidth = 605
  KeyPreview = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  ExplicitWidth = 621
  ExplicitHeight = 336
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 605
    Height = 297
    Color = 15983831
    ExplicitWidth = 605
    ExplicitHeight = 297
    inherited Bevel3: TBevel
      Left = -28
      Width = 748
      Height = 26
      ExplicitLeft = -28
      ExplicitWidth = 748
      ExplicitHeight = 26
    end
    inherited btAnterior: TSpeedButton
      Left = 62
      OnClick = btAnteriorClick
      ExplicitLeft = 62
    end
    inherited btProximo: TSpeedButton
      Left = 112
      OnClick = btProximoClick
      ExplicitLeft = 112
    end
    inherited btConsulta: TSpeedButton
      Left = 204
      OnClick = btConsultaClick
      ExplicitLeft = 204
    end
    inherited btExcluir: TSpeedButton
      Left = 154
      OnClick = btExcluirClick
      ExplicitLeft = 154
    end
    inherited btRegistroAntigo: TSpeedButton
      Left = 547
      Enabled = True
      ExplicitLeft = 547
    end
    inherited btStatus: TSpeedButton
      Left = 381
      Width = 160
      Enabled = True
      ExplicitLeft = 381
      ExplicitWidth = 160
    end
    inherited btNovoRegistro: TSpeedButton
      Left = 547
      Enabled = True
      ExplicitLeft = 547
    end
    inherited btLimpar: TSpeedButton
      Left = 254
      OnClick = btLimparClick
      ExplicitLeft = 254
    end
    inherited SpeedButton1: TSpeedButton
      Left = 7
      Top = 3
      OnClick = SpeedButton1Click
      ExplicitLeft = 7
      ExplicitTop = 3
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
      Top = 199
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
      Top = 175
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
      Top = 225
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
      Caption = '120 x 140'
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
      Left = 93
      Top = 70
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
    object Panel2: TPanel
      Left = 139
      Top = 69
      Width = 318
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
      TabOrder = 1
    end
    object edUnidade: TEdit
      Left = 93
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
      OnExit = edUnidadeExit
      OnKeyDown = edUnidadeKeyDown
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
      OnExit = edNomeExit
    end
    object edEmail: TEdit
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
      TabOrder = 8
      object Image1: TImage
        Left = 2
        Top = 0
        Width = 127
        Height = 143
        Hint = 'Clique com o bot'#227'o direito'
        ParentShowHint = False
        PopupMenu = PopupMenu1
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 9
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
      TabOrder = 7
      OnExit = ckResponsávelExit
    end
    object MaskEdit1: TMaskEdit
      Left = 94
      Top = 200
      Width = 123
      Height = 22
      EditMask = '!99/99/0000;1; '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 5
      Text = '  /  /    '
      OnKeyDown = MaskEdit1KeyDown
    end
    object edTelefone: TMaskEdit
      Left = 94
      Top = 224
      Width = 123
      Height = 22
      EditMask = '!\(99\)00000-0000;1; '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 6
      Text = '(  )     -    '
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 488
    Top = 80
    object Inserirfoto1: TMenuItem
      Caption = 'Inserir foto'
      OnClick = Inserirfoto1Click
    end
    object Retirarfoto1: TMenuItem
      Caption = 'Retirar foto'
      OnClick = Retirarfoto1Click
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 560
    Top = 80
  end
end

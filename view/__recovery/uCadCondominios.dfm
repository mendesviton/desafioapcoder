inherited frCadCondominio: TfrCadCondominio
  BorderStyle = bsSingle
  Caption = 'Condom'#237'nios'
  ClientHeight = 478
  ClientWidth = 754
  Color = 16744448
  Position = poScreenCenter
  ExplicitWidth = 760
  ExplicitHeight = 507
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 754
    Height = 478
    Color = clGradientInactiveCaption
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 754
    ExplicitHeight = 478
    inherited Bevel3: TBevel
      Width = 756
      Height = 10
      ExplicitWidth = 756
      ExplicitHeight = 10
    end
    inherited btAnterior: TSpeedButton
      Left = 49
      ExplicitLeft = 49
    end
    inherited btRegistroAntigo: TSpeedButton
      Left = 676
      ExplicitLeft = 676
    end
    inherited btStatus: TSpeedButton
      Left = 543
      ExplicitLeft = 543
    end
    inherited btNovoRegistro: TSpeedButton
      Left = 676
      ExplicitLeft = 676
    end
    object lbNome: TLabel [9]
      Left = 47
      Top = 112
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
    object lbEmail: TLabel [10]
      Left = 33
      Top = 160
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
    object lbCnpj: TLabel [11]
      Left = 47
      Top = 136
      Width = 35
      Height = 14
      Caption = 'CNPJ:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCodigo: TLabel [12]
      Left = 161
      Top = 63
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
    object Bevel1: TBevel [13]
      Left = 5
      Top = 92
      Width = 756
      Height = 11
      Shape = bsTopLine
    end
    object Label11: TLabel [14]
      Left = 561
      Top = 211
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
    object Bevel2: TBevel [15]
      Left = 464
      Top = 219
      Width = 89
      Height = 3
      Shape = bsTopLine
    end
    object Bevel4: TBevel [16]
      Left = 631
      Top = 219
      Width = 89
      Height = 3
      Shape = bsTopLine
    end
    inherited SpeedButton1: TSpeedButton
      Left = 5
      Top = 2
      Width = 45
      Height = 39
      OnClick = SpeedButton1Click
      ExplicitLeft = 5
      ExplicitTop = 2
      ExplicitWidth = 45
      ExplicitHeight = 39
    end
    object gpEndereco: TGroupBox
      Left = 33
      Top = 251
      Width = 696
      Height = 113
      Caption = 'Endere'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object lbEndereco: TLabel
        Left = 222
        Top = 49
        Width = 84
        Height = 14
        Caption = 'Complemento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbNumero: TLabel
        Left = 59
        Top = 49
        Width = 49
        Height = 14
        Caption = 'N'#250'mero:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 257
        Top = 74
        Width = 49
        Height = 14
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 457
        Top = 74
        Width = 49
        Height = 14
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 59
        Top = 72
        Width = 42
        Height = 14
        Caption = 'Estado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 271
        Top = 25
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
      object edNumero: TEdit
        Left = 108
        Top = 46
        Width = 97
        Height = 19
        BorderStyle = bsNone
        TabOrder = 2
      end
      object edComplemento: TEdit
        Left = 307
        Top = 46
        Width = 361
        Height = 19
        BorderStyle = bsNone
        TabOrder = 3
      end
      object edCidade: TEdit
        Left = 308
        Top = 71
        Width = 97
        Height = 19
        BorderStyle = bsNone
        TabOrder = 5
      end
      object edBairro: TEdit
        Left = 508
        Top = 71
        Width = 160
        Height = 19
        BorderStyle = bsNone
        TabOrder = 6
      end
      object cbUf: TComboBox
        Left = 108
        Top = 68
        Width = 97
        Height = 22
        TabOrder = 4
        Text = 'SC'
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
      end
      object cbTipoLocal: TComboBox
        Left = 108
        Top = 21
        Width = 97
        Height = 22
        TabOrder = 0
        Text = 'Rua '
        Items.Strings = (
          'Rua '
          'Avenida'
          'Alameda'
          'Estrada'
          'Pra'#231'a'
          'Rodovia'
          'Loteamento'
          'Residencial'
          'Agrupamento')
      end
      object edNomeLocal: TEdit
        Left = 308
        Top = 22
        Width = 360
        Height = 19
        BorderStyle = bsNone
        TabOrder = 1
      end
    end
    object gbParametros: TGroupBox
      Left = 24
      Top = 347
      Width = 696
      Height = 113
      Caption = 'Parametros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object Label5: TLabel
        Left = 29
        Top = 39
        Width = 119
        Height = 14
        Caption = 'Total Condom'#237'nio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 43
        Top = 62
        Width = 105
        Height = 14
        Caption = 'Dia Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edTotal: TEdit
        Left = 147
        Top = 36
        Width = 97
        Height = 19
        BorderStyle = bsNone
        TabOrder = 0
      end
      object edData: TEdit
        Left = 147
        Top = 59
        Width = 30
        Height = 19
        BorderStyle = bsNone
        TabOrder = 1
      end
      object CheckBox1: TCheckBox
        Left = 284
        Top = 62
        Width = 209
        Height = 17
        Caption = 'Contar apenas dias '#250'teis'
        TabOrder = 2
      end
      object cbFeriado: TCheckBox
        Left = 487
        Top = 62
        Width = 181
        Height = 17
        Caption = 'Antecipar F'#233'rias'
        TabOrder = 3
      end
    end
    object edNome: TEdit
      Left = 83
      Top = 108
      Width = 362
      Height = 19
      BorderStyle = bsNone
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edCnpj: TEdit
      Left = 83
      Top = 132
      Width = 362
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
    object edEmail: TEdit
      Left = 83
      Top = 156
      Width = 362
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
    object Panel1: TPanel
      Left = 464
      Top = 108
      Width = 256
      Height = 97
      BevelInner = bvLowered
      Caption = 'Inserir imagem '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 6
      object Image1: TImage
        Left = 2
        Top = 1
        Width = 255
        Height = 96
        Hint = 'Clique com o bot'#227'o direito'
        ParentShowHint = False
        ShowHint = True
      end
    end
    object edCod: TEdit
      Left = 209
      Top = 60
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
      Left = 255
      Top = 60
      Width = 318
      Height = 17
      BevelOuter = bvLowered
      Color = clHighlightText
      ParentBackground = False
      TabOrder = 7
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 680
    Top = 56
    object Inseririmagem1: TMenuItem
      Caption = 'Inserir imagem'
      OnClick = Inseririmagem1Click
    end
    object Limparimagem1: TMenuItem
      Caption = 'Limpar imagem'
      OnClick = Limparimagem1Click
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    FileName = 'C:\Users\vitor\OneDrive\'#193'rea de Trabalho\baixados.jpg'
    Filter = 
      '*.png;|*.png|GIF Image (*.gif)|*.gif|Portable Network Graphics (' +
      '*.png)|*.png|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jp' +
      'eg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|TIFF Images (*.tif)|*.tif|TIFF ' +
      'Images (*.tiff)|*.tiff|Icons (*.ico)|*.ico|Enhanced Metafiles (*' +
      '.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Left = 552
    Top = 48
  end
end

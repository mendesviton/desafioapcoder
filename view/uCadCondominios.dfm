inherited frCadCondominio: TfrCadCondominio
  BorderStyle = bsSingle
  Caption = 'Condom'#237'nios'
  ClientHeight = 491
  ClientWidth = 758
  Color = 16744448
  Position = poScreenCenter
  ExplicitWidth = 764
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 758
    Height = 491
    Color = clGradientInactiveCaption
    ExplicitWidth = 748
    inherited Bevel3: TBevel
      Width = 756
      Height = 10
      ExplicitWidth = 756
      ExplicitHeight = 10
    end
    inherited btAnterior: TSpeedButton
      Left = 3
      ExplicitLeft = 3
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
    object lbNome: TLabel
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
    object lbEmail: TLabel
      Left = 33
      Top = 168
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
    object lbCnpj: TLabel
      Left = 47
      Top = 140
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
    object lbCodigo: TLabel
      Left = 33
      Top = 62
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
    object Bevel1: TBevel
      Left = 5
      Top = 92
      Width = 756
      Height = 11
      Shape = bsTopLine
    end
    object Label11: TLabel
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
    object Bevel2: TBevel
      Left = 464
      Top = 219
      Width = 89
      Height = 3
      Shape = bsTopLine
    end
    object Bevel4: TBevel
      Left = 631
      Top = 219
      Width = 89
      Height = 3
      Shape = bsTopLine
    end
    object lbTipo: TLabel
      Left = 47
      Top = 199
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
    object gpEndereco: TGroupBox
      Left = 24
      Top = 228
      Width = 696
      Height = 113
      Caption = 'Endere'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object lbEndereco: TLabel
        Left = 222
        Top = 51
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
        Left = 57
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
        Top = 80
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
        Top = 79
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
        Left = 57
        Top = 80
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
      object Label4: TLabel
        Left = 271
        Top = 27
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
      object Edit1: TEdit
        Left = 108
        Top = 48
        Width = 97
        Height = 21
        BorderStyle = bsNone
        TabOrder = 2
      end
      object Edit2: TEdit
        Left = 308
        Top = 48
        Width = 360
        Height = 21
        BorderStyle = bsNone
        TabOrder = 3
      end
      object Edit3: TEdit
        Left = 308
        Top = 75
        Width = 97
        Height = 21
        BorderStyle = bsNone
        TabOrder = 5
      end
      object Edit4: TEdit
        Left = 508
        Top = 74
        Width = 160
        Height = 21
        BorderStyle = bsNone
        TabOrder = 6
      end
      object ComboBox1: TComboBox
        Left = 108
        Top = 74
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
      object ComboBox2: TComboBox
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
      object Edit5: TEdit
        Left = 308
        Top = 24
        Width = 360
        Height = 21
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
      TabOrder = 6
      object Label5: TLabel
        Left = 29
        Top = 39
        Width = 112
        Height = 14
        Caption = 'Total Condom'#237'nio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 29
        Top = 67
        Width = 98
        Height = 14
        Caption = 'Dia Vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit6: TEdit
        Left = 147
        Top = 36
        Width = 97
        Height = 21
        BorderStyle = bsNone
        TabOrder = 0
      end
      object Edit8: TEdit
        Left = 147
        Top = 63
        Width = 30
        Height = 21
        BorderStyle = bsNone
        TabOrder = 1
      end
      object CheckBox1: TCheckBox
        Left = 284
        Top = 67
        Width = 209
        Height = 17
        Caption = 'Contar apenas dias '#250'teis'
        TabOrder = 2
      end
      object cbFeriado: TCheckBox
        Left = 487
        Top = 67
        Width = 181
        Height = 17
        Caption = 'Antecipar F'#233'rias'
        TabOrder = 3
      end
    end
    object edNome: TEdit
      Left = 83
      Top = 109
      Width = 362
      Height = 21
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
      Top = 137
      Width = 362
      Height = 21
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
      Top = 165
      Width = 362
      Height = 21
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
      Top = 109
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
      TabOrder = 7
      object Image1: TImage
        Left = 2
        Top = 0
        Width = 255
        Height = 96
        Hint = 'Clique com o bot'#227'o direito'
        ParentShowHint = False
        ShowHint = True
      end
    end
    object Edit11: TEdit
      Left = 81
      Top = 59
      Width = 40
      Height = 21
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object cbTipo: TComboBox
      Left = 84
      Top = 196
      Width = 105
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'Apartamento'
      Items.Strings = (
        'Sala'
        'Loja '
        'Garagem'
        'Terreno'
        'Lote'
        'Unidade')
    end
    object Panel2: TPanel
      Left = 127
      Top = 59
      Width = 318
      Height = 21
      BevelOuter = bvLowered
      Color = clHighlightText
      ParentBackground = False
      TabOrder = 8
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
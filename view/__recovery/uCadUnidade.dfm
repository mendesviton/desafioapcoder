inherited frCadUnidades: TfrCadUnidades
  Caption = 'Cadastro de unidades'
  ClientHeight = 537
  ClientWidth = 557
  ExplicitWidth = 573
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 557
    Height = 537
    Color = 15918295
    ExplicitLeft = -32
    ExplicitTop = 8
    ExplicitWidth = 939
    ExplicitHeight = 537
    inherited Bevel3: TBevel
      Left = -2
      Width = 939
      ExplicitLeft = -2
      ExplicitWidth = 939
    end
    inherited btRegistroAntigo: TSpeedButton
      Left = 450
      ExplicitLeft = 450
    end
    inherited btStatus: TSpeedButton
      Left = 314
      ExplicitLeft = 314
    end
    inherited btNovoRegistro: TSpeedButton
      Left = 450
      ExplicitLeft = 450
    end
    inherited SpeedButton1: TSpeedButton
      Left = 5
      Top = 2
      Height = 39
      ExplicitLeft = 5
      ExplicitTop = 2
      ExplicitHeight = 39
    end
    object lbCodigo: TLabel
      Left = 51
      Top = 84
      Width = 77
      Height = 14
      Caption = 'Condom'#237'nio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = -19
      Top = 130
      Width = 990
      Height = 11
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 36
      Top = 106
      Width = 91
      Height = 14
      Caption = 'Bloco/Pr'#233'dio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 77
      Top = 60
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
    object lbCnpj: TLabel
      Left = 94
      Top = 175
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
    object lbNumero: TLabel
      Left = 80
      Top = 151
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
    object Label3: TLabel
      Left = 48
      Top = 233
      Width = 77
      Height = 14
      Caption = 'Observa'#231#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 64
      Top = 247
      Width = 35
      Height = 14
      Caption = '0/150'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edCod: TEdit
      Left = 130
      Top = 80
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
      Left = 176
      Top = 80
      Width = 318
      Height = 17
      BevelOuter = bvLowered
      Color = clHighlightText
      ParentBackground = False
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 130
      Top = 104
      Width = 40
      Height = 17
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Panel1: TPanel
      Left = 176
      Top = 104
      Width = 318
      Height = 17
      BevelOuter = bvLowered
      Color = clHighlightText
      ParentBackground = False
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 130
      Top = 57
      Width = 40
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
    object Panel3: TPanel
      Left = 176
      Top = 57
      Width = 318
      Height = 17
      BevelOuter = bvLowered
      Color = clHighlightText
      ParentBackground = False
      TabOrder = 5
    end
    object edNome: TEdit
      Left = 130
      Top = 147
      Width = 362
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
    object edCnpj: TEdit
      Left = 130
      Top = 171
      Width = 362
      Height = 19
      BorderStyle = bsNone
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object dfgd: TMemo
      Left = 130
      Top = 232
      Width = 364
      Height = 89
      Lines.Strings = (
        'dfgd')
      TabOrder = 8
      OnKeyPress = dfgdKeyPress
    end
    object gpEndereco: TGroupBox
      Left = 24
      Top = 327
      Width = 505
      Height = 182
      Caption = 'Proprietario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      object lbEndereco: TLabel
        Left = 21
        Top = 120
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
      object Label5: TLabel
        Left = 76
        Top = 49
        Width = 28
        Height = 14
        Caption = 'CPF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 231
        Top = 98
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
      object Label7: TLabel
        Left = 231
        Top = 145
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
      object Label8: TLabel
        Left = 59
        Top = 97
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
      object Label9: TLabel
        Left = 70
        Top = 24
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
        Left = 54
        Top = 69
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
      object edNumero: TEdit
        Left = 106
        Top = 47
        Width = 200
        Height = 19
        BorderStyle = bsNone
        TabOrder = 1
      end
      object edComplemento: TEdit
        Left = 106
        Top = 120
        Width = 362
        Height = 19
        BorderStyle = bsNone
        TabOrder = 2
      end
      object edCidade: TEdit
        Left = 287
        Top = 96
        Width = 181
        Height = 19
        BorderStyle = bsNone
        TabOrder = 4
      end
      object edBairro: TEdit
        Left = 286
        Top = 145
        Width = 182
        Height = 19
        BorderStyle = bsNone
        TabOrder = 5
      end
      object cbUf: TComboBox
        Left = 106
        Top = 93
        Width = 97
        Height = 22
        TabOrder = 3
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
      object edNomeLocal: TEdit
        Left = 106
        Top = 21
        Width = 362
        Height = 19
        BorderStyle = bsNone
        TabOrder = 0
      end
      object edEmail: TEdit
        Left = 106
        Top = 71
        Width = 362
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
    end
  end
end

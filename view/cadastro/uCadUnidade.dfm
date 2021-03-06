inherited frCadUnidades: TfrCadUnidades
  Caption = 'Cadastro de unidades'
  ClientHeight = 528
  ClientWidth = 556
  KeyPreview = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  ExplicitWidth = 572
  ExplicitHeight = 567
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 556
    Height = 528
    Color = 15918295
    ExplicitWidth = 556
    ExplicitHeight = 528
    inherited Bevel3: TBevel
      Left = -2
      Width = 939
      ExplicitLeft = -2
      ExplicitWidth = 939
    end
    inherited btAnterior: TSpeedButton
      Left = 535
      Top = 507
      Enabled = False
      ExplicitLeft = 535
      ExplicitTop = 507
    end
    inherited btProximo: TSpeedButton
      Left = 535
      Top = 507
      ExplicitLeft = 535
      ExplicitTop = 507
    end
    inherited btConsulta: TSpeedButton
      Left = 158
      OnClick = btConsultaClick
      ExplicitLeft = 158
    end
    inherited btExcluir: TSpeedButton
      Left = 58
      OnClick = btExcluirClick
      ExplicitLeft = 58
    end
    inherited btRegistroAntigo: TSpeedButton
      Left = 501
      Top = 5
      Enabled = True
      ExplicitLeft = 501
      ExplicitTop = 5
    end
    inherited btStatus: TSpeedButton
      Left = 311
      Top = 5
      Width = 172
      Enabled = True
      ExplicitLeft = 311
      ExplicitTop = 5
      ExplicitWidth = 172
    end
    inherited btNovoRegistro: TSpeedButton
      Left = 501
      Top = 5
      Enabled = True
      ExplicitLeft = 501
      ExplicitTop = 5
    end
    inherited btLimpar: TSpeedButton
      Left = 108
      OnClick = btLimparClick
      ExplicitLeft = 108
    end
    object lbCodigo: TLabel [9]
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
    object Bevel1: TBevel [10]
      Left = -19
      Top = 130
      Width = 990
      Height = 11
      Shape = bsTopLine
    end
    object Label1: TLabel [11]
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
    object Label2: TLabel [12]
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
    object lbCnpj: TLabel [13]
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
    object lbNumero: TLabel [14]
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
    object Label3: TLabel [15]
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
    object Label4: TLabel [16]
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
    inherited SpeedButton1: TSpeedButton
      Left = -2
      Top = 2
      Height = 39
      OnClick = SpeedButton1Click
      ExplicitLeft = -2
      ExplicitTop = 2
      ExplicitHeight = 39
    end
    object edCodCond: TEdit
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
      TabOrder = 1
      OnExit = edCodCondExit
      OnKeyDown = edCodCondKeyDown
    end
    object Panel2: TPanel
      Left = 176
      Top = 80
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
      TabOrder = 6
    end
    object edBLoco: TEdit
      Left = 130
      Top = 103
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
      OnExit = edBLocoExit
      OnKeyDown = edBLocoKeyDown
    end
    object Panel1: TPanel
      Left = 176
      Top = 104
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
      TabOrder = 7
    end
    object edCodigo: TEdit
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
      TabOrder = 0
      OnExit = edCodigoExit
      OnKeyDown = edCodigoKeyDown
    end
    object Panel3: TPanel
      Left = 176
      Top = 57
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
      TabOrder = 8
    end
    object edCnpj: TEdit
      Left = 131
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
      TabOrder = 4
    end
    object mmObs: TMemo
      Left = 131
      Top = 232
      Width = 364
      Height = 89
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        'dfgd')
      ParentFont = False
      TabOrder = 5
      OnKeyPress = mmObsKeyPress
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
      object edComplemento: TEdit
        Left = 106
        Top = 120
        Width = 362
        Height = 19
        BorderStyle = bsNone
        TabOrder = 5
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
        TabOrder = 6
        OnExit = edBairroExit
      end
      object cbUf: TComboBox
        Left = 106
        Top = 93
        Width = 97
        Height = 22
        TabOrder = 3
        Text = 'SC'
        OnKeyUp = cbUfKeyUp
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
        TabOrder = 2
      end
      object edNome: TEdit
        Left = 106
        Top = 24
        Width = 362
        Height = 19
        BorderStyle = bsNone
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edCPF: TEdit
        Left = 106
        Top = 47
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
    end
    object edNumero: TEdit
      Left = 130
      Top = 148
      Width = 362
      Height = 19
      BorderStyle = bsNone
      TabOrder = 3
    end
  end
end

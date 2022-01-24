object frAjuda: TfrAjuda
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frAjuda'
  ClientHeight = 338
  ClientWidth = 529
  Color = 15983834
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel4: TBevel
    Left = 15
    Top = 12
    Width = 498
    Height = 309
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 529
    Height = 338
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 0
    ExplicitHeight = 353
    object lbCnpj: TLabel
      Left = 151
      Top = 32
      Width = 243
      Height = 17
      Caption = 'Teclas de atalho do sistema'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 39
      Top = 72
      Width = 9
      Height = 17
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 39
      Top = 72
      Width = 462
      Height = 16
      Caption = 
        'Tecla F9 - Abre tela de CONSULTA quando estiver em um campo c'#243'di' +
        'go'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 39
      Top = 110
      Width = 462
      Height = 16
      Caption = 
        'Tecla F4 - Abre tela de CADASTRO quando estiver em um campo c'#243'di' +
        'go'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 39
      Top = 145
      Width = 413
      Height = 16
      Caption = 'Quando aberto a tela de consulta apartir de um campo c'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 15
      Top = 175
      Width = 7
      Height = 16
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 39
      Top = 159
      Width = 434
      Height = 16
      Caption = 'voc'#234' pode selecionar o registro e ele ser'#225' carregado ao campo.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 96
      Top = 263
      Width = 321
      Height = 6
      Shape = bsTopLine
    end
    object Bevel1: TBevel
      Left = 189
      Top = 297
      Width = 140
      Height = 8
      Shape = bsTopLine
    end
    object Label7: TLabel
      Left = 39
      Top = 196
      Width = 455
      Height = 16
      Caption = 
        'Tecla F2 - Se estiver em um campo de Data, preenche a data atual' +
        '.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 204
      Top = 275
      Width = 112
      Height = 16
      Caption = 'Desafio apCoders'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 132
      Top = 242
      Width = 252
      Height = 16
      Caption = 'Desenvolvido por Vitor Daniel Mendes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 204
      Top = 354
      Width = 7
      Height = 16
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 272
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      OnClick = Fechar1Click
    end
  end
end

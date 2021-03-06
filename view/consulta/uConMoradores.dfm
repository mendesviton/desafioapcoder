inherited frConMoradores: TfrConMoradores
  BorderStyle = bsSingle
  Caption = 'Consulta de moradores'
  ClientHeight = 671
  ClientWidth = 1294
  Position = poScreenCenter
  OnCreate = FormCreate
  ExplicitWidth = 1300
  ExplicitHeight = 700
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1294
    Height = 671
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 1294
    ExplicitHeight = 671
    inherited Bevel3: TBevel
      Width = 1344
      ExplicitWidth = 1344
    end
    inherited DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1292
      Height = 669
      Align = alClient
      DataSource = DataSource1
      Columns = <
        item
          Expanded = False
          FieldName = 'BDCODIGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDCODIGOUNID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Unidade'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDNASCIMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Caption = 'Nascimento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDTELEFONE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Telefone'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDEMAIL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Caption = 'E-mail'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BDRESPONSAVELFIN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Respons'#225'vel pela unidade'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 230
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 696
    Top = 440
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 608
    Top = 440
    object ClientDataSet1BDCODIGO: TIntegerField
      FieldName = 'BDCODIGO'
    end
    object ClientDataSet1BDCODIGOUNID: TIntegerField
      FieldName = 'BDCODIGOUNID'
    end
    object ClientDataSet1BDNOME: TStringField
      FieldName = 'BDNOME'
      Size = 50
    end
    object ClientDataSet1BDNASCIMENTO: TDateField
      FieldName = 'BDNASCIMENTO'
    end
    object ClientDataSet1BDTELEFONE: TStringField
      FieldName = 'BDTELEFONE'
    end
    object ClientDataSet1BDEMAIL: TStringField
      FieldName = 'BDEMAIL'
      Size = 200
    end
    object ClientDataSet1BDRESPONSAVELFIN: TStringField
      FieldName = 'BDRESPONSAVELFIN'
      Size = 991
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ClientDataSet1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 792
    Top = 440
  end
end

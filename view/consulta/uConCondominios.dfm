inherited frConsultaCondominio: TfrConsultaCondominio
  BorderStyle = bsSingle
  Caption = 'Consulta de condom'#237'nios'
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
    BevelOuter = bvNone
    BorderStyle = bsSingle
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 1294
    ExplicitHeight = 671
    inherited Bevel3: TBevel
      Left = -34
      Width = 1368
      ExplicitLeft = -34
      ExplicitWidth = 1368
    end
    inherited DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 1290
      Height = 667
      Align = alClient
      BorderStyle = bsNone
      DataSource = DataSource1
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Alignment = taCenter
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
          FieldName = 'BDNOME'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDCNPJ'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'CNPJ'
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
          Title.Alignment = taCenter
          Title.Caption = 'E-MAIL'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDTOTALCOND'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Valor Condom'#237'nio'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 163
          Visible = True
        end
        item
          Alignment = taCenter
          ButtonStyle = cbsNone
          Expanded = False
          FieldName = 'BDDIAVENC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Dia do vencimento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDTIPOLOCAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDNOMELOCAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nome Local'
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
          FieldName = 'BDNUMERO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'N'#250'mero'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 178
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDCOMPLEMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Complemento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDUF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Estado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDCIDADE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Cidade'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDBAIRRO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Bairro'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 200
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 928
    Top = 624
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ClientDataSet1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1024
    Top = 624
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 840
    Top = 624
    object ClientDataSet1BDTOTALCOND: TFMTBCDField
      FieldName = 'BDTOTALCOND'
      currency = True
    end
    object ClientDataSet1BDNOME: TStringField
      FieldName = 'BDNOME'
    end
    object ClientDataSet1BDCNPJ: TStringField
      FieldName = 'BDCNPJ'
    end
    object ClientDataSet1bdcodigo: TIntegerField
      FieldName = 'BDCODIGO'
    end
    object ClientDataSet1BDBAIRRO: TStringField
      FieldName = 'BDBAIRRO'
    end
    object ClientDataSet1BDEMAIL: TStringField
      FieldName = 'BDEMAIL'
    end
    object ClientDataSet1BDTIPOLOCAL: TStringField
      FieldName = 'BDTIPOLOCAL'
      Size = 600
    end
    object ClientDataSet1BDNOMELOCAL: TStringField
      FieldName = 'BDNOMELOCAL'
      Size = 600
    end
    object ClientDataSet1BDNUMERO: TIntegerField
      FieldName = 'BDNUMERO'
    end
    object ClientDataSet1BDCOMPLEMENTO: TStringField
      FieldName = 'BDCOMPLEMENTO'
      Size = 701
    end
    object ClientDataSet1BDUF: TStringField
      FieldName = 'BDUF'
      Size = 2
    end
    object ClientDataSet1BDCIDADE: TStringField
      FieldName = 'BDCIDADE'
      Size = 150
    end
    object ClientDataSet1BDDIAVENC: TIntegerField
      FieldName = 'BDDIAVENC'
    end
  end
end

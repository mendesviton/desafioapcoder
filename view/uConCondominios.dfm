inherited frConsultaCondominio: TfrConsultaCondominio
  Caption = 'Consulta de condom'#237'nios'
  OnCreate = FormCreate
  ExplicitWidth = 1274
  ExplicitHeight = 740
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBGrid1: TDBGrid
      Left = 16
      Top = 71
      Width = 1225
      Height = 617
      DataSource = DataSource1
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
    object ClientDataSet1BDDIASUTEIS: TIntegerField
      FieldName = 'BDDIASUTEIS'
    end
    object ClientDataSet1BDANTECIPAR: TIntegerField
      FieldName = 'BDANTECIPAR'
    end
    object ClientDataSet1BDBAIRRO: TStringField
      FieldName = 'BDBAIRRO'
    end
    object ClientDataSet1BDEMAIL: TStringField
      FieldName = 'BDEMAIL'
    end
  end
end

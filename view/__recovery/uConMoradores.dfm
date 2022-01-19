inherited frConMoradores: TfrConMoradores
  Caption = 'frConMoradores'
  OnCreate = FormCreate
  ExplicitWidth = 1274
  ExplicitHeight = 740
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitLeft = 8
    inherited DBGrid1: TDBGrid
      Left = 0
      Top = 47
      Width = 1249
      Height = 654
      DataSource = DataSource1
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
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ClientDataSet1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 768
    Top = 440
  end
end

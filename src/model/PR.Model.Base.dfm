object ModelBase: TModelBase
  OldCreateOrder = False
  Height = 150
  Width = 526
  object conConexao: TFDConnection
    Params.Strings = (
      'ConnectionDef=MSSQL_PRsistemas')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object FDTransaction: TFDTransaction
    Connection = conConexao
    Left = 40
    Top = 80
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 144
    Top = 16
  end
  object FDPhysMSSQLDriverLink: TFDPhysMSSQLDriverLink
    Left = 144
    Top = 80
  end
end

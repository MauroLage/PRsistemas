inherited ModelPessoa: TModelPessoa
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Width = 556
  inherited conConexao: TFDConnection
    Transaction = FDTransaction
  end
  object qryEndereco: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'PESSOA_ID'
    MasterSource = dsCadastro
    MasterFields = 'PESSOA_ID'
    DetailFields = 'PESSOA_ID'
    Connection = conConexao
    SchemaAdapter = fdschPessoa
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select e.ENDERECO_ID, e.ENDERECO, e.NUMERO, e.CIDADE, e.ESTADO, ' +
        'e.CEP, e.PESSOA_ID'
      '  from tbPessoa_Endereco e'
      ' where e.PESSOA_ID = :PESSOA_ID')
    Left = 335
    Top = 78
    ParamData = <
      item
        Name = 'PESSOA_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object qryEnderecoENDERECO_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ENDERECO_ID'
      Origin = 'ENDERECO_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryEnderecoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 256
    end
    object qryEnderecoNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryEnderecoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 128
    end
    object qryEnderecoESTADO: TStringField
      Alignment = taCenter
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      Size = 2
    end
    object qryEnderecoCEP: TStringField
      Alignment = taCenter
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 10
    end
    object qryEnderecoPESSOA_ID: TLargeintField
      FieldName = 'PESSOA_ID'
      Origin = 'PESSOA_ID'
    end
  end
  object fdschPessoa: TFDSchemaAdapter
    Left = 268
    Top = 56
  end
  object qryCadastro: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'PESSOA_ID'
    Connection = conConexao
    SchemaAdapter = fdschPessoa
    SQL.Strings = (
      'select * from tbPessoa')
    Left = 332
    Top = 15
    object qryCadastroPESSOA_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'PESSOA_ID'
      Origin = 'PESSOA_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryCadastroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 128
    end
    object qryCadastroCPF: TStringField
      Alignment = taCenter
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '!999\.999\.999\-99;1;_'
      Size = 15
    end
    object qryCadastroRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
    end
    object qryCadastroNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      Origin = 'NOME_MAE'
      Size = 128
    end
    object qryCadastroNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      Origin = 'NOME_PAI'
      Size = 128
    end
  end
  object qryPesquisa: TFDQuery
    Connection = conConexao
    SQL.Strings = (
      'select p.PESSOA_ID, p.NOME, p.CPF, p.RG'
      '  from tbPessoa p'
      ' where 1 = 1')
    Left = 480
    Top = 15
    object qryPesquisaPESSOA_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'PESSOA_ID'
      Origin = 'PESSOA_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPesquisaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 128
    end
    object qryPesquisaCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object qryPesquisaRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
    end
  end
  object dsCadastro: TDataSource
    DataSet = qryCadastro
    Left = 404
    Top = 14
  end
  object dsEndereco: TDataSource
    DataSet = qryEndereco
    Left = 406
    Top = 79
  end
end

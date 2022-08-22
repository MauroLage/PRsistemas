inherited ModelRelPessoa: TModelRelPessoa
  Width = 375
  object qryRelPessoa: TFDQuery
    Connection = conConexao
    SQL.Strings = (
      'select * from tbPessoa')
    Left = 279
    Top = 19
    object qryRelPessoaPESSOA_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'PESSOA_ID'
      Origin = 'PESSOA_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryRelPessoaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 128
    end
    object qryRelPessoaCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object qryRelPessoaRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
    end
    object qryRelPessoaNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      Origin = 'NOME_MAE'
      Size = 128
    end
    object qryRelPessoaNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      Origin = 'NOME_PAI'
      Size = 128
    end
  end
  object qryRelEndereco: TFDQuery
    Connection = conConexao
    SQL.Strings = (
      'select * '
      '  from tbPessoa_Endereco'
      ' where PESSOA_ID = :PESSOA_ID')
    Left = 278
    Top = 79
    ParamData = <
      item
        Name = 'PESSOA_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object qryRelEnderecoENDERECO_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ENDERECO_ID'
      Origin = 'ENDERECO_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryRelEnderecoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 10
    end
    object qryRelEnderecoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 256
    end
    object qryRelEnderecoNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryRelEnderecoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 128
    end
    object qryRelEnderecoESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      Size = 2
    end
    object qryRelEnderecoPESSOA_ID: TLargeintField
      FieldName = 'PESSOA_ID'
      Origin = 'PESSOA_ID'
    end
  end
end

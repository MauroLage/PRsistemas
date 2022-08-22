unit PR.Model.RelPessoa;

interface

uses
  System.SysUtils, System.Classes, PR.Model.Base, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Phys.ODBCBase, FireDAC.Comp.UI,
  FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TModelRelPessoa = class(TModelBase)
    qryRelPessoa: TFDQuery;
    qryRelPessoaPESSOA_ID: TLargeintField;
    qryRelPessoaNOME: TStringField;
    qryRelPessoaCPF: TStringField;
    qryRelPessoaRG: TStringField;
    qryRelPessoaNOME_MAE: TStringField;
    qryRelPessoaNOME_PAI: TStringField;
    qryRelEndereco: TFDQuery;
    qryRelEnderecoENDERECO_ID: TLargeintField;
    qryRelEnderecoCEP: TStringField;
    qryRelEnderecoENDERECO: TStringField;
    qryRelEnderecoNUMERO: TStringField;
    qryRelEnderecoCIDADE: TStringField;
    qryRelEnderecoESTADO: TStringField;
    qryRelEnderecoPESSOA_ID: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModelRelPessoa: TModelRelPessoa;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

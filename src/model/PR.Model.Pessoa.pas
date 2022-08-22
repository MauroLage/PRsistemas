unit PR.Model.Pessoa;

interface

uses
  System.SysUtils, System.Classes, PR.Model.Base, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.ODBCBase, Vcl.Forms, Winapi.Windows;

type
  TModelPessoa = class(TModelBase)
    qryEndereco: TFDQuery;
    qryEnderecoENDERECO_ID: TLargeintField;
    qryEnderecoENDERECO: TStringField;
    qryEnderecoNUMERO: TStringField;
    qryEnderecoCIDADE: TStringField;
    qryEnderecoESTADO: TStringField;
    qryEnderecoCEP: TStringField;
    fdschPessoa: TFDSchemaAdapter;
    qryCadastro: TFDQuery;
    qryCadastroPESSOA_ID: TLargeintField;
    qryCadastroNOME: TStringField;
    qryCadastroRG: TStringField;
    qryCadastroNOME_MAE: TStringField;
    qryCadastroNOME_PAI: TStringField;
    qryPesquisa: TFDQuery;
    qryPesquisaPESSOA_ID: TLargeintField;
    qryPesquisaNOME: TStringField;
    qryPesquisaCPF: TStringField;
    qryPesquisaRG: TStringField;
    dsCadastro: TDataSource;
    dsEndereco: TDataSource;
    qryEnderecoPESSOA_ID: TLargeintField;
    qryCadastroCPF: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  public
    procedure ListarRegistro(AId, ANome, ACPF, ARG: string);

    procedure IncluirPessoa(ASQL: string);
    procedure ExcluirPessoa(AIdPessoa: string);
    procedure SalvarPessoa;
    procedure AlterarPessoa(AIdPessoa: string);

    procedure IncluirEndereco;
    procedure ExcluirEndereco;
    procedure SalvarEndereco;
  end;

implementation

uses
  PR.Control.Session;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TModelPessoa.AlterarPessoa(AIdPessoa: string);
begin
  if (not (qryPesquisa.Active) or (qryPesquisa.IsEmpty)) then
    raise Exception.Create('Selecione uma Pessoa para edição');

  qryCadastro.SQL.Text := Session.Variaveis.AlterarSQL;
  qryCadastro.ParamByName('ID').AsString := AIdPessoa;

  qryCadastro.Open;
  qryEndereco.Open;
end;

procedure TModelPessoa.DataModuleCreate(Sender: TObject);
begin
  TSession.GetInstance.Variaveis.PesquisaSQL := qryPesquisa.SQL.Text;
  TSession.GetInstance.Variaveis.IncluirSQL := qryCadastro.SQL.Text + ' where 1 <> 1';
  TSession.GetInstance.Variaveis.AlterarSQL := qryCadastro.SQL.Text + ' where PESSOA_ID = :ID';
  inherited;
end;

procedure TModelPessoa.ExcluirEndereco;
begin
  if (not (qryEndereco.Active) or (qryEndereco.IsEmpty)) then
    raise Exception.Create('Selecione um Endereço para exclusão');

  if Application.MessageBox('Excluir o Endereço', 'Confirmar', MB_YESNO +
                            MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    FDTransaction.StartTransaction;
    try
      qryEndereco.Delete;
      qryEndereco.ApplyUpdates(0);
    except
      FDTransaction.Rollback;
      raise Exception.Create('Error ao excluir pessoa');
    end;
  end;
end;

procedure TModelPessoa.ExcluirPessoa(AIdPessoa: string);
begin
  if (not (qryPesquisa.Active) or (qryPesquisa.IsEmpty)) then
    raise Exception.Create('Selecione uma Pessoa para exclusão');

  if Application.MessageBox('Excluir a Pessoa', 'Confirmar', MB_YESNO +
                            MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    qryCadastro.SQL.Text := Session.Variaveis.AlterarSQL;
    qryCadastro.ParamByName('ID').AsString := AIdPessoa;
    qryCadastro.Open;
    try
      FDTransaction.StartTransaction;
      try
        qryCadastro.Delete;
        qryCadastro.ApplyUpdates(0);
      except
        FDTransaction.Rollback;
        raise Exception.Create('Error ao excluir pessoa');
      end;
    finally
      qryCadastro.Close;
    end;
  end;
end;

procedure TModelPessoa.IncluirPessoa(ASQL: string);
begin
  qryCadastro.Open(ASQL);
  qryCadastro.Append;
end;

procedure TModelPessoa.IncluirEndereco;
begin
  if not (qryEndereco.Active) then
    qryEndereco.Open;
  qryEndereco.Append;
end;

procedure TModelPessoa.ListarRegistro(AId, ANome, ACPF, ARG: string);
begin
  qryPesquisa.DisableControls;
  try
    if not (AId.Trim.IsEmpty) then
    begin
      qryPesquisa.SQL.Text := Session.Variaveis.PesquisaSQL + ' and p.PESSOA_ID = :ID';
      qryPesquisa.ParamByName('ID').AsString := AId;
      qryPesquisa.Open;
      Exit;
    end;

    if not (ANome.Trim.IsEmpty) then
    begin
      qryPesquisa.SQL.Text := Session.Variaveis.PesquisaSQL + ' and p.NOME like ' +
                              QuotedStr('%' + ANome + '%') + ' order by p.NOME';
      qryPesquisa.Open;
      Exit;
    end;

    if (StringReplace(ACPF, ' ', '', [rfReplaceAll]) <> '..-') then
    begin
      qryPesquisa.SQL.Text := Session.Variaveis.PesquisaSQL + ' and p.CPF = :CPF';
      qryPesquisa.ParamByName('CPF').AsString := ACPF;
      qryPesquisa.Open;
      Exit;
    end;

    if not (ARG.Trim.IsEmpty) then
    begin
      qryPesquisa.SQL.Text := Session.Variaveis.PesquisaSQL + ' and p.RG = :RG';
      qryPesquisa.ParamByName('RG').AsString := ARG;
      qryPesquisa.Open;
      Exit;
    end;

    qryPesquisa.SQL.Text := Session.Variaveis.PesquisaSQL + ' order by p.NOME';

    qryPesquisa.Open;

  finally
    qryPesquisa.EnableControls;
  end;
end;

procedure TModelPessoa.SalvarEndereco;
begin
  qryEndereco.DisableControls;
  try
    FDTransaction.StartTransaction;
    try
      qryEndereco.ApplyUpdates(0);
      qryEndereco.CommitUpdates;
    except
      FDTransaction.Rollback;
      raise;
    end;
  finally
    qryEndereco.EnableControls;
  end;
end;

procedure TModelPessoa.SalvarPessoa;
begin

  qryCadastro.DisableControls;

  // Usado pois o SQL Server esta aceitando o "qryCadastro.ApplyUpdates(0)"
  // sem dar erro nos campos not null

  if((((qryCadastroNOME.AsString).Trim).IsEmpty) or
       (qryCadastroCPF.AsString = '   .   .   -  ')) then
    raise Exception.Create('Nome ou CPF dados obrigatório(s)');

  try
    FDTransaction.StartTransaction;
    try
      qryCadastro.ApplyUpdates(0);
      qryCadastro.CommitUpdates;
    except
      FDTransaction.Rollback;
      raise Exception.Create('Error ao gravar pessoa');
    end;

    if not (qryEndereco.Active) then
      qryEndereco.Open;
    if (qryEndereco.IsEmpty) then
    begin
      qryEndereco.Append;
    end;

  finally
    qryCadastro.EnableControls;
  end;
end;

end.


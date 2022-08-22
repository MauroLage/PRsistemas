unit PR.Views.Pessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  PR.Views.Base, Vcl.ExtCtrls, Vcl.Buttons, Vcl.WinXPanels, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, PR.Model.Pessoa, Vcl.DBCtrls, Vcl.Mask, ACBrBase, ACBrSocket,
  ACBrCEP;

type
  TfrmPessoa = class(TfrmBase)
    pnlHeader: TPanel;
    lblTitulo: TLabel;
    cardPanel: TCardPanel;
    cardCadastro: TCard;
    cardVisualizar: TCard;
    pnlBotoes: TPanel;
    btnIncluir: TSpeedButton;
    imgBotoes: TImageList;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnPesquisar: TSpeedButton;
    pnlStatusPesquisa: TPanel;
    dbgCadastro: TJvDBGrid;
    pnlFiltro: TPanel;
    shpLinha2: TShape;
    shpLinha1: TShape;
    dsPesquisa: TDataSource;
    pnlCadastro: TPanel;
    pnlStatusCadastro: TPanel;
    btnCancelar: TSpeedButton;
    dsCadastro: TDataSource;
    grpID: TGroupBox;
    edtID: TEdit;
    grpNome: TGroupBox;
    edtNome: TEdit;
    grpRG: TGroupBox;
    edtRG: TEdit;
    grpCPF: TGroupBox;
    dsEndereco: TDataSource;
    pnlPessoa: TPanel;
    pnlManutencao: TPanel;
    pnlCad2: TPanel;
    GroupBox7: TGroupBox;
    dbeCIDADE: TDBEdit;
    GroupBox8: TGroupBox;
    dbeESTADO: TDBEdit;
    GroupBox6: TGroupBox;
    dbeNUMERO: TDBEdit;
    pnlCad3: TPanel;
    GroupBox5: TGroupBox;
    dbeENDERECO: TDBEdit;
    GroupBox9: TGroupBox;
    dbeCEP: TDBEdit;
    edtCPF: TMaskEdit;
    ACBrCEP: TACBrCEP;
    pnlEnderecoCad: TPanel;
    pnlEndereco: TPanel;
    shpCadLinha3: TShape;
    shpCadLinha4: TShape;
    shpCadLinha5: TShape;
    shpCadLinha6: TShape;
    dbgEndereco: TJvDBGrid;
    btnBuscaCEP: TSpeedButton;
    pnlOpcaoCad: TPanel;
    pnlCad4: TPanel;
    GroupBox3: TGroupBox;
    dbeNOME_PAI: TDBEdit;
    GroupBox4: TGroupBox;
    dbeNOME_MAE: TDBEdit;
    grpPessoaCad: TGroupBox;
    btnGravaPessoa: TSpeedButton;
    pnlCad5: TPanel;
    grpCadNome: TGroupBox;
    dbeNOME: TDBEdit;
    GroupBox1: TGroupBox;
    dbeCPF: TDBEdit;
    GroupBox2: TGroupBox;
    dbeRG: TDBEdit;
    GroupBox10: TGroupBox;
    pnl1: TPanel;
    Panel1: TPanel;
    btnIncEndereco: TSpeedButton;
    btnExcEndereco: TSpeedButton;
    btnGravaEndereco: TSpeedButton;
    btnCanEndereco: TSpeedButton;
    pnlIdCad: TPanel;
    shpLinhaCad1: TShape;
    lblIdCad: TLabel;
    dbtxtID: TDBText;
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnIncEnderecoClick(Sender: TObject);
    procedure btnGravaEnderecoClick(Sender: TObject);
    procedure dsEnderecoStateChange(Sender: TObject);
    procedure btnCanEnderecoClick(Sender: TObject);
    procedure btnExcEnderecoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgCadastroDblClick(Sender: TObject);
    procedure ACBrCEPBuscaEfetuada(Sender: TObject);
    procedure btnGravaPessoaClick(Sender: TObject);
    procedure btnBuscaCEPClick(Sender: TObject);
  private
    FModel: TModelPessoa;
    procedure StatusBotoesEndereco(AEdit: Boolean);
    procedure StatusEdicaoEndereco(AEdit: Boolean);
  end;

implementation

uses
  PR.Control.Session;

{$R *.dfm}

procedure TfrmPessoa.btnAlterarClick(Sender: TObject);
begin
  FModel.AlterarPessoa(FModel.qryPesquisaPESSOA_ID.AsString);
  cardCadastro.Show;
end;

procedure TfrmPessoa.btnBuscaCEPClick(Sender: TObject);
begin
  if not (FModel.qryEndereco.State in dsEditModes) then
    Exit;

  if (Trim(dbeCEP.Text).IsEmpty) then
  begin
    ShowMessage('Informe um CEP para busca');
    dbeCEP.SetFocus;
    Exit;
  end;

  if (Length(Trim(StringReplace(dbeCEP.Text,'-', '', []))) <> 8) then
  begin
    ShowMessage('O CEP é composto de oito(8) caracteres');
    dbeCEP.SetFocus;
    Exit;
  end;

  try
    ACBrCEP.BuscarPorCEP(dbeCEP.Text);
  except
    raise;
  end;
end;

procedure TfrmPessoa.ACBrCEPBuscaEfetuada(Sender: TObject);
var
  i: integer;
begin
  if (ACBrCEP.Enderecos.Count = 0) then
  begin
    ShowMessage('CEP não encontrado');
    dbeCEP.SetFocus;
    Exit;
  end;

  for i := 0 to ACBrCEP.Enderecos.Count - 1 do
  begin
    FModel.qryEnderecoCEP.AsString := ACBrCEP.Enderecos[i].CEP;
    FModel.qryEnderecoENDERECO.AsString := UpperCase(ACBrCEP.Enderecos[i].Logradouro);
    FModel.qryEnderecoNUMERO.AsString := UpperCase(ACBrCEP.Enderecos[i].Complemento);
    FModel.qryEnderecoCIDADE.AsString := UpperCase(ACBrCEP.Enderecos[i].Municipio);
    FModel.qryEnderecoESTADO.AsString := UpperCase(ACBrCEP.Enderecos[i].UF);
  end;
end;

procedure TfrmPessoa.btnCancelarClick(Sender: TObject);
begin
  dsCadastro.DataSet.Cancel;
  dsEndereco.DataSet.Cancel;
  dsCadastro.DataSet.Close;
  dsEndereco.DataSet.Close;
  btnPesquisar.Click;
  cardVisualizar.Show;
end;

procedure TfrmPessoa.btnCanEnderecoClick(Sender: TObject);
begin
  FModel.qryEndereco.CancelUpdates;
end;

procedure TfrmPessoa.btnExcEnderecoClick(Sender: TObject);
begin
  FModel.ExcluirEndereco;
end;

procedure TfrmPessoa.btnExcluirClick(Sender: TObject);
begin
  FModel.ExcluirPessoa(FModel.qryPesquisaPESSOA_ID.AsString);
  btnPesquisar.Click;
end;

procedure TfrmPessoa.btnGravaEnderecoClick(Sender: TObject);
begin
  pnlStatusCadastro.SetFocus;
  FModel.SalvarEndereco;
end;

procedure TfrmPessoa.btnGravaPessoaClick(Sender: TObject);
begin
  pnlStatusCadastro.SetFocus;
  FModel.SalvarPessoa;
  dbeCEP.SetFocus;
end;

procedure TfrmPessoa.btnIncluirClick(Sender: TObject);
begin
  cardCadastro.Show;
  FModel.IncluirPessoa(Session.Variaveis.IncluirSQL);
  StatusBotoesEndereco(True);
end;

procedure TfrmPessoa.btnPesquisarClick(Sender: TObject);
begin
  FModel.ListarRegistro(edtID.Text, edtNome.Text, edtCPF.Text, edtRG.Text);

  edtID.Text := EmptyStr;
  edtNome.Text := EmptyStr;
  edtCPF.Text := EmptyStr;
  edtRG.Text := EmptyStr;

  if (FModel.qryPesquisa.IsEmpty) then
    ShowMessage('Sem registro neste filtro');
end;

procedure TfrmPessoa.dbgCadastroDblClick(Sender: TObject);
begin
  inherited;
  btnAlterar.Click;
end;

procedure TfrmPessoa.dsCadastroStateChange(Sender: TObject);
begin
  inherited;
  btnGravaPessoa.Enabled := (dsCadastro.DataSet.State in dsEditModes);
  StatusBotoesEndereco(FModel.qryEndereco.State in dsEditModes);
  StatusEdicaoEndereco(dsCadastro.DataSet.State in dsEditModes);
end;

procedure TfrmPessoa.StatusEdicaoEndereco(AEdit: Boolean);
begin
  dbeCEP.Enabled := not (AEdit);
  dbeENDERECO.Enabled := not (AEdit);
  dbeNUMERO.Enabled := not (AEdit);
  dbeCIDADE.Enabled := not (AEdit);
  dbeESTADO.Enabled := not (AEdit);
end;

procedure TfrmPessoa.dsEnderecoStateChange(Sender: TObject);
begin
  StatusBotoesEndereco(FModel.qryEndereco.State in dsEditModes);
end;

procedure TfrmPessoa.StatusBotoesEndereco(AEdit: Boolean);
var
  LTabEndVazia, LPessoa: Boolean;
begin
  LTabEndVazia := (FModel.qryEndereco.IsEmpty);

  LPessoa := (FModel.qryCadastro.State in dsEditModes);
  if not (LPessoa) then
    LPessoa := (FModel.qryCadastro.IsEmpty);

  btnIncEndereco.Enabled := not (AEdit) and not (LPessoa);
  btnExcEndereco.Enabled := not (AEdit) and not (LTabEndVazia) and not (LPessoa);
  btnGravaEndereco.Enabled := (AEdit) and not (LPessoa);
  btnCanEndereco.Enabled := (AEdit) and not (LPessoa);
end;

procedure TfrmPessoa.FormCreate(Sender: TObject);
begin
  inherited;
  FModel := TModelPessoa.Create(Self);
  FModel.conConexao.Connected := True;
  dsPesquisa.DataSet := FModel.qryPesquisa;
  dsCadastro.DataSet := FModel.qryCadastro;
  dsEndereco.DataSet := FModel.qryEndereco;
end;

procedure TfrmPessoa.FormDestroy(Sender: TObject);
begin
  if Assigned(FModel) then
    FModel.Free;
  inherited;
end;

procedure TfrmPessoa.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (cardVisualizar.Visible) then
  begin
    case Key of
      VK_INSERT:
        btnIncluir.Click;
      VK_F3:
        btnAlterar.Click;
      VK_DELETE:
        btnExcluir.Click;
      VK_F5:
        btnPesquisar.Click;
    end;
  end;

  if (cardCadastro.Visible) then
  begin
    case Key of
      VK_F2:
        if (btnGravaPessoa.Enabled) then
          btnGravaPessoa.Click;
      VK_F5:
        if (btnIncEndereco.Enabled) then
          btnIncEndereco.Click;
      VK_F6:
        if (btnExcEndereco.Enabled) then
          btnExcEndereco.Click;
      VK_F7:
        if (btnGravaEndereco.Enabled) then
          btnGravaEndereco.Click;
      VK_F8:
        if (btnCanEndereco.Enabled) then
          btnCanEndereco.Click;
      VK_F4:
        btnCancelar.Click;
    end;
  end;

  inherited;
end;

procedure TfrmPessoa.FormShow(Sender: TObject);
begin
  inherited;
  dsPesquisa.DataSet := FModel.qryPesquisa;
  dsCadastro.DataSet := FModel.qryCadastro;
  edtCPF.EditMask := '999\.999\.999\-99;1;_';
  cardVisualizar.Show;
  edtID.SetFocus;
end;

procedure TfrmPessoa.btnIncEnderecoClick(Sender: TObject);
begin
  FModel.IncluirEndereco;
  dbeCEP.SetFocus;
end;

end.


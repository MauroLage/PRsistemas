unit PR.Views.Pessoa_Ant;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  PR.Views.Base.Cadastro, Data.DB, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.WinXPanels, PR.Model.Pessoa, Vcl.DBCtrls, Vcl.Mask, PR.Views.Pessoa;

type
  TfrmPessoa = class(TfrmPessoa)
    pnlCad4: TPanel;
    pnlCad5: TPanel;
    grpCadID: TGroupBox;
    dbtxtID: TDBText;
    grpCadNome: TGroupBox;
    dbeNOME: TDBEdit;
    GroupBox1: TGroupBox;
    dbeCPF: TDBEdit;
    GroupBox2: TGroupBox;
    dbeRG: TDBEdit;
    GroupBox3: TGroupBox;
    dbeNOME_PAI: TDBEdit;
    GroupBox4: TGroupBox;
    dbeNOME_MAE: TDBEdit;
    dsEndereco: TDataSource;
    grpEndereco: TGroupBox;
    dbtxtEnd_Pessoa: TDBText;
    pnlCad3: TPanel;
    GroupBox5: TGroupBox;
    DBEdit5: TDBEdit;
    GroupBox9: TGroupBox;
    DBEdit9: TDBEdit;
    pnlCad2: TPanel;
    GroupBox7: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox8: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit6: TDBEdit;
    pnlEndereco: TPanel;
    shpCadLinha3: TShape;
    shpCadLinha4: TShape;
    shpCadLinha5: TShape;
    shpCadLinha6: TShape;
    dbgEndereco: TJvDBGrid;
    procedure dsCadastroStateChange(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  protected
    FModelPessoa: TModelPessoa;
  end;

implementation

{$R *.dfm}

procedure TfrmPessoa.btnIncluirClick(Sender: TObject);
begin
  inherited;
  FModelPessoa.qryEndereco.Open;
  FModelPessoa.qryEndereco.Append;
end;

procedure TfrmPessoa.btnSalvarClick(Sender: TObject);
begin
//  inherited;
  FModelPessoa.fdschPessoa.ApplyUpdates(0);
end;

procedure TfrmPessoa.dsCadastroStateChange(Sender: TObject);
begin
  inherited;
  if (dsCadastro.DataSet.State in dsEditModes) then
    dbeNOME.SetFocus;
end;

procedure TfrmPessoa.FormCreate(Sender: TObject);
begin
  inherited;
  FModelPessoa := TModelPessoa.Create(Self);

  dsPesquisa.DataSet := FModelPessoa.qryPesquisa;
  dsCadastro.DataSet := FModelPessoa.qryCadastro;
  dsEndereco.DataSet := FModelPessoa.qryEndereco;
end;

procedure TfrmPessoa.FormDestroy(Sender: TObject);
begin
  if Assigned(FModelPessoa) then
    FModelPessoa.Free;
  inherited;
end;

end.


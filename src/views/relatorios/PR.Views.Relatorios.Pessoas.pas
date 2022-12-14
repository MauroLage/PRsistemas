unit PR.Views.Relatorios.Pessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  PR.Views.Base, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, System.ImageList,
  Vcl.ImgList, dxGDIPlusClasses, RpDefine, RpBase, RpSystem, PR.Model.RelPessoa,
  Data.DB, RpRender, RpRenderPDF, FireDAC.Stan.Param;

type
  TfrmRelPessoas = class(TfrmBase)
    pnlHeaer: TPanel;
    lblTitulo: TLabel;
    pnlPrincipal: TPanel;
    pnlStatusCadastro: TPanel;
    imgBotoes: TImageList;
    pnlOpcoesRel: TPanel;
    grpOpcoes: TGroupBox;
    chkPaiMae: TCheckBox;
    chkEndereco: TCheckBox;
    rgClassificacao: TRadioGroup;
    pnlImagem: TPanel;
    imgRelatorio: TImage;
    rvsRelatorio: TRvSystem;
    btnImprimir: TSpeedButton;
    pdfRelatorio: TRvRenderPDF;
    shp1: TShape;
    shpLinha2: TShape;
    procedure rvsRelatorioBeforePrint(Sender: TObject);
    procedure rvsRelatorioPrintHeader(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure rvsRelatorioPrint(Sender: TObject);

  private
    xCol: Integer;
    FFezHeader: Boolean;
    FModel: TModelRelPessoa;
    procedure Prepara_Classificacao;
    procedure Cabecalho_Pagina(Sender: TObject);
  end;

implementation

uses
  PR.Control.Session;

{$R *.dfm}

procedure TfrmRelPessoas.btnImprimirClick(Sender: TObject);
begin
  Prepara_Classificacao;
  xCol := 0;
  if (chkPaiMae.Checked) or (chkEndereco.Checked) then
    xCol := 1;
  rvsRelatorio.Execute;
end;

procedure TfrmRelPessoas.FormCreate(Sender: TObject);
begin
  inherited;
  FModel := TModelRelPessoa.Create(Self);
  FModel.conConexao.Connected := True;
end;

procedure TfrmRelPessoas.FormDestroy(Sender: TObject);
begin
  inherited;
  FModel.Free;
end;

procedure TfrmRelPessoas.Prepara_Classificacao;
var
  LSQL: string;
begin
  LSQL := 'select * from tbPessoa ';
  case rgClassificacao.ItemIndex of
    0:
      LSQL := LSQL + ' order by PESSOA_ID';
    1:
      LSQL := LSQL + ' order by NOME';
    2:
      LSQL := LSQL + ' order by CPF';
    3:
      LSQL := LSQL + ' order by RG';
  end;

  FModel.qryRelPessoa.Open(LSQL);

  if (FModel.qryRelPessoa.IsEmpty) then
    raise Exception.Create('Sem registro neste filtro');
end;

procedure TfrmRelPessoas.rvsRelatorioBeforePrint(Sender: TObject);
begin
  with Sender as TBaseReport do
  begin
    SetPaperSize(DMPAPER_A4, 0, 0);
    Orientation := poPortrait;

    // Header - Pessoa
    ClearTabs;
    SetTab(1.0, pjCenter, 2.0, 1, BOXLINEALL, 5); // Codigo
    SetTab(NA, pjCenter, 10.0, 1, BOXLINEALL, 5); // Nome
    SetTab(NA, pjCenter, 3.5, 1, BOXLINEALL, 5); // RG
    SetTab(NA, pjCenter, 4.0, 1, BOXLINEALL, 5); // CPF
    SaveTabs(1);

    // Pai/M?e
    ClearTabs;
    SetTab(3.0, pjCenter, 10.0, 1, BOXLINEALL, 3); // Nome do Pai
    SetTab(NA, pjCenter, 7.5, 1, BOXLINEALL, 3); // Nome do M?e
    SaveTabs(2);

    // Endereco
    ClearTabs;
    SetTab(3.0, pjCenter, 2.0, 1, BOXLINEALL, 1); // Cep
    SetTab(NA, pjCenter, 8.0, 1, BOXLINEALL, 1); // Endere?o
    SetTab(NA, pjCenter, 2.0, 1, BOXLINEALL, 1); // Numero
    SetTab(NA, pjCenter, 4.9, 1, BOXLINEALL, 1); // Cidade
    SetTab(NA, pjCenter, 0.6, 1, BOXLINEALL, 1); // UF
    SaveTabs(3);

    // Detail - Pessoa
    ClearTabs;
    SetTab(1.0, pjRight, 2.0, 5, BOXLINEALL, xCol); // Codigo
    SetTab(NA, pjLeft, 10.0, 5, BOXLINEALL, xCol); // Nome
    SetTab(NA, pjLeft, 3.5, 5, BOXLINEALL, xCol); // RG
    SetTab(NA, pjCenter, 4.0, 5, BOXLINEALL, xCol); // CPF
    SaveTabs(4);

    // Pai/M?e
    ClearTabs;
    SetTab(3.0, pjLeft, 10.0, 5, BOXLINEALL, 0); // Nome do Pai
    SetTab(NA, pjLeft, 7.5, 5, BOXLINEALL, 0); // Nome do M?e
    SaveTabs(5);

    // Endereco
    ClearTabs;
    SetTab(3.0, pjCenter, 2.0, 1, BOXLINEALL, 0); // Cep
    SetTab(NA, pjLeft, 8.0, 5, BOXLINEALL, 0); // Endere?o
    SetTab(NA, pjLeft, 2.0, 5, BOXLINEALL, 0); // Numero
    SetTab(NA, pjLeft, 4.9, 5, BOXLINEALL, 0); // Cidade
    SetTab(NA, pjCenter, 0.6, 1, BOXLINEALL, 0); // UF
    SaveTabs(6);
  end;
end;

procedure TfrmRelPessoas.rvsRelatorioPrint(Sender: TObject);
begin
  with Sender as TBaseReport do
  begin
    SetFont('Segoe UI', 8);
    LineHeight := 0.45;
    FFezHeader := False;

    FModel.qryRelPessoa.First;
    while not FModel.qryRelPessoa.Eof do
    begin
      Cabecalho_Pagina(Sender);
      RestoreTabs(4);
      PrintTab(FModel.qryRelPessoaPESSOA_ID.AsString);
      Bold := True;
      PrintTab(FModel.qryRelPessoaNOME.AsString);
      Bold := False;
      PrintTab(FModel.qryRelPessoaRG.AsString);
      PrintTab(FModel.qryRelPessoaCPF.AsString);
      NewLine;

      FFezHeader := True;
      if (chkPaiMae.Checked) then
      begin
        RestoreTabs(5);
        PrintTab(FModel.qryRelPessoaNOME_PAI.AsString);
        PrintTab(FModel.qryRelPessoaNOME_MAE.AsString);
        NewLine;
      end;

      if (chkEndereco.Checked) then
      begin
        FModel.qryRelEndereco.ParamByName('PESSOA_ID').AsLargeInt := FModel.qryRelPessoaPESSOA_ID.AsLargeInt;
        FModel.qryRelEndereco.Open;
        while not FModel.qryRelEndereco.EOF do
        begin
          Cabecalho_Pagina(Sender);
          RestoreTabs(6);
          PrintTab(FModel.qryRelEnderecoCEP.AsString);
          PrintTab(FModel.qryRelEnderecoENDERECO.AsString);
          PrintTab(FModel.qryRelEnderecoNUMERO.AsString);
          PrintTab(FModel.qryRelEnderecoCIDADE.AsString);
          PrintTab(FModel.qryRelEnderecoESTADO.AsString);
          NewLine;
          FModel.qryRelEndereco.Next;
        end;
        FModel.qryRelEndereco.Close;
      end;
      YPos := YPos + 0.2;
      FModel.qryRelPessoa.Next;
    end;

    SetFont('Segoe UI', 6);
    YPos := YPos - 0.2;
    PrintLeft(FModel.qryRelPessoa.RecordCount.ToString + ' registros', 1.0);
    FModel.qryRelPessoa.Close;
  end;
end;

procedure TfrmRelPessoas.Cabecalho_Pagina(Sender: TObject);
begin
  with Sender as TBaseReport do
  begin
    if (LinesLeft > 5) and (FFezHeader) then
      Exit;

    if (FFezHeader) then
      NewPage;

    Ypos := 2.0;
    Bold := False;
    LineHeight := 0.35;
    SetFont('Segoe UI', 6);

    RestoreTabs(1);
    PrintTab('C?digo');
    PrintTab('Nome');
    PrintTab('RG');
    PrintTab('CPF');

    if (chkPaiMae.Checked) then
    begin
      NewLine;
      RestoreTabs(2);
      PrintTab('Nome do Pai');
      PrintTab('Nome da M?e');
    end;

    if (chkEndereco.Checked) then
    begin
      NewLine;
      RestoreTabs(3);
      PrintTab('CEP');
      PrintTab('Endere?o');
      PrintTab('N?');
      PrintTab('Cidade');
      PrintTab('UF');
    end;

    NewLine;
    SetFont('Segoe UI', 8);
    Ypos := Ypos + 0.2;
    LineHeight := 0.45;
  end;
end;

procedure TfrmRelPessoas.rvsRelatorioPrintHeader(Sender: TObject);
var
  LOrdem: string;
begin
  case rgClassificacao.ItemIndex of
    0:
      LOrdem := 'Ordem Num?rica - C?digo';
    1:
      LOrdem := 'Ordem Alfab?tica - Nome';
    2:
      LOrdem := 'Ordem do CPF';
    3:
      LOrdem := 'Ordem do RG';
  end;

  with Sender as TBaseReport do
  begin
    Ypos := 1.3;
    Rectangle(1.0, 0.5, 20.5, 1.55);
    MoveTo(5.0, 0.5);
    LineTo(5.0, 1.55);

    SetFont('Segoe UI', 16);
    Bold := True;
    PrintLeft('PRsistemas', 1.5);

    Ypos := 1.0;
    SetFont('Segoe UI', 14);
    Bold := True;
    PrintCenter('Cadastro de Pessoas', (PageWidth / 2) + 0.2);

    Ypos := 1.4;
    SetFont('Segoe UI', 8);
    Bold := False;
    PrintCenter(LOrdem, (PageWidth / 2) + 0.2);

    SetFont('Segoe UI', 8);
    Bold := True;

    MoveTo(16.5, 0.5);
    LineTo(16.5, 1.55);
    GoToXY(14, 0.9);

    SetFont('Segoe UI', 6);
    Ypos := Ypos - 0.1;
    PrintRight('', 19.5);

    SetFont('Segoe UI', 8);
    Ypos := Ypos + 0.3;
    Bold := True;
    PrintRight(FormatDateTime('dd/mm/yy', Now) + ' - ' + FormatDateTime('hh:nn:ss', Now), 20.0);
    Ypos := Ypos + 0.3;
    PrintRight('P?gina: ' + Macro(midCurrentPage) + '/' + Macro(midTotalPages), 19.5);
  end;
end;

end.




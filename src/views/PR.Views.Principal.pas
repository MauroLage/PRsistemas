unit PR.Views.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.WinXCtrls, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.CategoryButtons;

type
  TfrmPrincipal = class(TForm)
    pnlToolBar: TPanel;
    imgMenu: TImage;
    lblTitulo: TLabel;
    imgBotoes: TImageList;
    pnlPrincipal: TPanel;
    spltvwMenu: TSplitView;
    actBotoes: TActionList;
    actHome: TAction;
    actPessoas: TAction;
    actImprimir: TAction;
    cgbBotoes: TCategoryButtons;
    procedure imgMenuClick(Sender: TObject);
    procedure actHomeExecute(Sender: TObject);
    procedure actPessoasExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FFormAtivo: TForm;
    procedure ShowForm(const AFormClass: TComponentClass; var AForm);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
   PR.Views.Pessoa, PR.Views.Home, PR.Views.Relatorios.Pessoas;

{$R *.dfm}

procedure TfrmPrincipal.actHomeExecute(Sender: TObject);
var
  LForm: TfrmHome;
begin
  ShowForm(TfrmHome, LForm);
end;

procedure TfrmPrincipal.actImprimirExecute(Sender: TObject);
var
  LForm: TfrmRelPessoas;
begin
  ShowForm(TfrmRelPessoas, LForm);
end;

procedure TfrmPrincipal.actPessoasExecute(Sender: TObject);
var
  LForm: TfrmPessoa;
begin
  ShowForm(TfrmPessoa, LForm);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  actHomeExecute(Sender);
end;

procedure TfrmPrincipal.ShowForm(const AFormClass: TComponentClass; var AForm);
begin
  if Assigned(FFormAtivo) then
    FFormAtivo.Close;
  Application.CreateForm(AFormClass, AForm);
  TForm(AForm).Parent := pnlPrincipal;
  TForm(AForm).Align := TAlign.alClient;
  TForm(AForm).Show;
  FFormAtivo := TForm(AForm);
end;

procedure TfrmPrincipal.imgMenuClick(Sender: TObject);
begin
  spltvwMenu.Opened := not(spltvwMenu.Opened);
end;

end.

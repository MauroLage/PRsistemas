unit PR.Views.Home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PR.Views.Base, dxGDIPlusClasses, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmHome = class(TfrmBase)
    imgTeste: TImage;
    pnlPerfil: TPanel;
    shpLinha1: TShape;
    lbl1: TLabel;
    shpLinha2: TShape;
    lblNome: TLabel;
    lblEndereco: TLabel;
    lblBairro: TLabel;
    lblEmail: TLabel;
    lblTelefone: TLabel;
    pnlFoto: TPanel;
    imgFoto: TImage;
  end;

implementation

{$R *.dfm}

end.

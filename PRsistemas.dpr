program PRsistemas;

uses
  Vcl.Forms,
  PR.Views.Principal in 'src\views\PR.Views.Principal.pas' {frmPrincipal},
  PR.Views.Base in 'src\views\PR.Views.Base.pas' {frmBase},
  PR.Model.Base in 'src\model\PR.Model.Base.pas' {ModelBase: TDataModule},
  PR.Views.Pessoa in 'src\views\PR.Views.Pessoa.pas' {frmPessoa},
  PR.Model.Pessoa in 'src\model\PR.Model.Pessoa.pas' {ModelPessoa: TDataModule},
  PR.Views.Home in 'src\views\PR.Views.Home.pas' {frmHome},
  PR.Control.Session in 'src\control\PR.Control.Session.pas',
  PR.Control.Variaveis in 'src\control\PR.Control.Variaveis.pas',
  PR.Views.Relatorios.Pessoas in 'src\views\relatorios\PR.Views.Relatorios.Pessoas.pas' {frmRelPessoas},
  PR.Model.RelPessoa in 'src\model\PR.Model.RelPessoa.pas' {ModelRelPessoa: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

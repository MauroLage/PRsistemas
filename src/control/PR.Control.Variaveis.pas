unit PR.Control.Variaveis;

interface

type
  TVariaveis = class
  private
    FPesquisaSQL: string;
    FIncluirSQL: string;
    FAlterarSQL: string;
  public
     property PesquisaSQL: string read FPesquisaSQL write FPesquisaSQL;
     property IncluirSQL: string read FIncluirSQL write FIncluirSQL;
     property AlterarSQL: string read FAlterarSQL write FAlterarSQL;
  end;

implementation

end.

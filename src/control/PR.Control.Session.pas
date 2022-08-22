unit PR.Control.Session;

interface

uses
   PR.Control.Variaveis;

type
  TSession = class
  private
    FVariaveis: TVariaveis;
    procedure Inicializar;
  public
    property Variaveis: TVariaveis read FVariaveis write FVariaveis;
    class function GetInstance: TSession;
    class function NewInstance: TObject; override;
    destructor Destroy; override;
  end;

var
  Session: TSession;
  
implementation

{ TSession }

destructor TSession.Destroy;
begin
  FVariaveis.Free;
  inherited;
end;

class function TSession.GetInstance: TSession;
begin
  Result := TSession.Create;
end;

procedure TSession.Inicializar;
begin
  FVariaveis := TVariaveis.Create;
end;

class function TSession.NewInstance: TObject;
begin
  if not(Assigned(Session)) then
  begin
    Session := TSession(inherited NewInstance);
    Session.Inicializar;
  end;
  Result := Session;
end;

initialization
//

finalization
  if (Assigned(Session)) then
    Session.Free;    
end.

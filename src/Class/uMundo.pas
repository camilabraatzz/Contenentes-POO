unit uMundo;

interface

uses
  System.Generics.Collections, uContinente, System.Classes, System.SysUtils;

type
  TMundo = class
  private
    FoListaDeContinentes : TList<TContinente>;
    function GetContinentes: TList<TContinente>;
    procedure SetContinentes(const Value: TList<TContinente>);
  public
    property Continentes : TList<TContinente> read GetContinentes write SetContinentes;
    procedure AdicionarContinente(AoContinente : TContinente);
    constructor Create;
    destructor Destroy; override;
    function ToString : String; override;
  end;

implementation

{ TListaDeContinentes }

procedure TMundo.AdicionarContinente(AoContinente: TContinente);
begin
  FoListaDeContinentes.Add(AoContinente);
end;

constructor TMundo.Create;
begin
  FoListaDeContinentes := TList<TContinente>.Create;
end;

function TMundo.GetContinentes: TList<TContinente>;
begin
  Result := FoListaDeContinentes;
end;

procedure TMundo.SetContinentes(const Value: TList<TContinente>);
begin
  FoListaDeContinentes := Value;
end;

function TMundo.ToString: String;
var
  oContinente : TContinente;
begin
  for oContinente in FoListaDeContinentes do
    Result := oContinente.ToString + sLineBreak;
    Result := Result + 'Dimens�o total: ' + oContinente.AreaTotal.ToString + sLineBreak
                     + 'Popula��o total: ' + oContinente.PopulacaoTotal.ToString + sLineBreak
                     + 'Densidade: ' + oContinente.Densidade.ToString + sLineBreak
                     + 'Maior Popula��o: ' + oContinente.MaiorPopulacao.ToString + sLineBreak
                     + 'Menor Popula��o: ' + oContinente.MenorPopulacao.ToString + sLineBreak
                     + 'Maior �rea: ' + oContinente.MaiorArea.ToString + sLineBreak
                     + 'Menor �rea: ' + oContinente.MenorArea.ToString + sLineBreak
                     + 'Diferen�a entre �reas: ' + oContinente.MaiorMenor.ToString + sLineBreak
                     + ' ' + sLineBreak;
end;

destructor TMundo.Destroy;
begin
  FoListaDeContinentes.Free;
end;
end.

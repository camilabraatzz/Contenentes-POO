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
    Result := Result + 'Dimensão total: ' + oContinente.AreaTotal.ToString + sLineBreak
                     + 'População total: ' + oContinente.PopulacaoTotal.ToString + sLineBreak
                     + 'Densidade: ' + oContinente.Densidade.ToString + sLineBreak
                     + 'Maior População: ' + oContinente.MaiorPopulacao.ToString + sLineBreak
                     + 'Menor População: ' + oContinente.MenorPopulacao.ToString + sLineBreak
                     + 'Maior Área: ' + oContinente.MaiorArea.ToString + sLineBreak
                     + 'Menor Área: ' + oContinente.MenorArea.ToString + sLineBreak
                     + 'Diferença entre áreas: ' + oContinente.MaiorMenor.ToString + sLineBreak
                     + ' ' + sLineBreak;
end;

destructor TMundo.Destroy;
begin
  FoListaDeContinentes.Free;
end;
end.

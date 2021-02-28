unit uContinente;

interface

uses
  System.Generics.Collections, uPais, uEnumContinente, System.SysUtils,
  uExceptions;

type
  TContinente = class
  private
    FNomeContinente : tContinentes;
    FoListaDePaises : TList<TPais>;
    function GetNome: tContinentes;
    procedure SetNome(const Value: tContinentes);
    function GetListaDePaises: TList<TPais>;
    procedure SetListaDePaises(const Value: TList<TPais>);
  public
    property Nome : tContinentes read GetNome write SetNome;
    property ListaDePaises : TList<TPais> read GetListaDePaises write SetListaDePaises;
    procedure Adicionar(AoPais: TPais);
    function ToString : String; override;
    function MaiorArea : Extended;
    function NomeContinente : String;
    function AreaTotal : Extended;
    function MaiorPopulacao : Integer;
    function MenorArea : Extended;
    function MenorPopulacao : Integer;
    function PopulacaoTotal : Integer;
    function Densidade : Extended;
    function MaiorMenor : Extended;
    constructor Create;
    destructor Destroy; override;

  end;

implementation

{ TContinente }

procedure TContinente.Adicionar(AoPais: TPais);
begin
  FoListaDePaises.Add(AoPais);
end;

function TContinente.AreaTotal: Extended;
var
  oPais: TPais;
begin
  Result := 0;
  for oPais in FoListaDePaises do
    Result:= Result + oPais.Dimensao;
end;

constructor TContinente.Create;
begin
  FoListaDePaises := TList<TPais>.Create;
end;

function TContinente.Densidade: Extended;
begin
  Result:= PopulacaoTotal / AreaTotal;
end;

destructor TContinente.Destroy;
begin
  if Assigned(FoListaDePaises) then
    FoListaDePaises.Free;
end;

function TContinente.GetListaDePaises: TList<TPais>;
begin
  Result := FoListaDePaises;
end;

function TContinente.GetNome: tContinentes;
begin
  Result := FNomeContinente;
end;

function TContinente.MaiorArea: Extended;
var
  oPais: TPais;
begin
  Result := 0;
  for oPais in FoListaDePaises do
    if oPais.Dimensao>Result then
      Result:= oPais.Dimensao;
end;

function TContinente.MaiorMenor: Extended;
begin
  Result:= MaiorArea / MenorArea;
end;

function TContinente.MaiorPopulacao: Integer;
var
  oPais: TPais;
begin
  Result:= 0;
  for oPais in FoListaDePaises do
    if oPais.Populacao>Result then
      Result:= oPais.Populacao;
end;

function TContinente.MenorArea: Extended;
var
  oPais: TPais;
begin
  Result := 9999999999;
  for oPais in FoListaDePaises do
    if oPais.Dimensao<Result then
      Result:= oPais.Dimensao;
end;

function TContinente.MenorPopulacao: Integer;
var
  oPais: TPais;
begin
  Result := 999999999;
  for oPais in FoListaDePaises do
    if oPais.Populacao<Result then
      Result:= oPais.Populacao;
end;

function TContinente.NomeContinente: String;
begin
  case FNomeContinente of
  tcAmerica   : Result := 'América';
  tcEuropa    : Result := 'Europa';
  tcAsia      : Result := 'Ásia';
  tcAfrica    : Result := 'África';
  tcOceania   : Result := 'Oceania';
  tcAntartida : Result := 'Antártida';
  end;

end;

function TContinente.PopulacaoTotal: Integer;
var
  oPais: TPais;
begin
  Result := 0;
  for oPais in FoListaDePaises do
    Result:= Result + oPais.Populacao;
end;

procedure TContinente.SetListaDePaises(const Value: TList<TPais>);
begin
  FoListaDePaises := Value;
end;

procedure TContinente.SetNome(const Value: tContinentes);
begin
  if Value = tcVazio then
    raise EContinenteObrigatorio.Create;
  FNomeContinente := Value;
end;

function TContinente.ToString: String;
var
  oPais : TPais;
begin
  Result := 'Continente: ' + NomeContinente + sLineBreak
          + 'Países: ' + sLineBreak;
  for oPais in FoListaDePaises do
  begin
    Result:= Result + oPais.ToString;
  end;
end;

end.

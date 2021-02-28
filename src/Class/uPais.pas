unit uPais;

interface

uses
  System.SysUtils;

type
  TPais = class
  private
    FNomePais  : String;
    FPopulacao : Integer;
    FDimensao  : Extended;
    function GetDimensao: Extended;
    function GetNomePais: String;
    function GetPopulacao: Integer;
    procedure SetDimensao(const Value: Extended);
    procedure SetNomePais(const Value: String);
    procedure SetPopulacao(const Value: Integer);
  public
    property NomePais  : String read GetNomePais write SetNomePais;
    property Populacao : Integer read GetPopulacao write SetPopulacao;
    property Dimensao  : Extended read GetDimensao write SetDimensao;
    function ToString  : String; override;
  end;

implementation

{ TPais }

function TPais.GetDimensao: Extended;
begin
  Result := FDimensao;
end;

function TPais.GetNomePais: String;
begin
  Result := FNomePais;
end;

function TPais.GetPopulacao: Integer;
begin
  Result := FPopulacao;
end;

procedure TPais.SetDimensao(const Value: Extended);
begin
  FDimensao := Value;
end;

procedure TPais.SetNomePais(const Value: String);
begin
  FNomePais := Value;
end;

procedure TPais.SetPopulacao(const Value: Integer);
begin
  FPopulacao := Value;
end;

function TPais.ToString: String;
begin
  Result := 'Nome do país: ' + FNomePais + ' | '
          + 'População: ' + FPopulacao.ToString + ' | '
          + 'Dimensão: ' + FDimensao.ToString + sLineBreak
          + ' ' + sLineBreak;
end;

end.

unit uExceptions;

interface

uses
  System.SysUtils;

type
  EContinenteObrigatorio = class(Exception)
  public
    constructor Create; reintroduce;
  end;

implementation

{ EContinenteObrigatorio }

constructor EContinenteObrigatorio.Create;
begin
  Self.Message := 'Você deve inserir um continente!';
end;

end.

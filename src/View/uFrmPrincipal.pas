unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uContinente, uPais, uMundo, uEnumContinente;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    btnInserirContinente: TButton;
    edtDimensao: TLabeledEdit;
    edtPopulacao: TLabeledEdit;
    edtNomePais: TLabeledEdit;
    btnExibir: TButton;
    btnInserirPais: TButton;
    cmbContinente: TComboBox;
    Label1: TLabel;
    Memo1: TMemo;
    procedure btnInserirContinenteClick(Sender: TObject);
    procedure btnExibirClick(Sender: TObject);
    procedure btnInserirPaisClick(Sender: TObject);
  private
    { Private declarations }
    oContinente : TContinente;
    oMundo      : TMundo;
    procedure AdicionarPais;
    procedure AdicionarContinente;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.AdicionarPais;
var
  oPais : TPais;
begin
  oPais           := TPais.Create;
  oPais.NomePais  := edtNomePais.Text;
  oPais.Populacao := StrToInt(edtPopulacao.Text);
  oPais.Dimensao  := StrToFloat(edtDimensao.Text);
  oContinente.Adicionar(oPais);
end;

procedure TFrmPrincipal.btnInserirContinenteClick(Sender: TObject);
begin
  AdicionarContinente;
end;

procedure TFrmPrincipal.btnInserirPaisClick(Sender: TObject);
begin
  AdicionarPais;
end;

procedure TFrmPrincipal.btnExibirClick(Sender: TObject);
begin
  Memo1.Lines.Add(oMundo.ToString);
end;

procedure TFrmPrincipal.AdicionarContinente;
begin
  oMundo           := TMundo.Create;
  oContinente      := TContinente.Create;
  oContinente.Nome := tContinentes(cmbContinente.ItemIndex);
  oMundo.AdicionarContinente(oContinente);
end;

end.

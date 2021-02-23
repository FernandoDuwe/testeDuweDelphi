unit uTask3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uSubForm, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TFTask3 = class(TFSubForm)
    pnBottom: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    lbTotal: TLabel;
    lbTotalDivisoes: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FClientDataSet : TClientDataSet;
    FDataSource    : TDataSource;

    procedure Internal_Prepare; override;
    procedure Internal_UpdateCalcs; override;
  public
    { Public declarations }
  end;

var
  FTask3: TFTask3;

implementation

{$R *.dfm}

procedure TFTask3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  FTask3 := nil;
end;

procedure TFTask3.FormCreate(Sender: TObject);
begin
  inherited;

  Self.FClientDataSet := TClientDataSet.Create(Self);
  Self.FDataSource    := TDataSource.Create(Self);

  Self.FDataSource.DataSet := Self.FClientDataSet;
  DBGrid1.DataSource       := Self.FDataSource;

  Self.FClientDataSet.FieldDefs.Add('IdProjeto', ftInteger);
  Self.FClientDataSet.FieldDefs.Add('NomeProjeto', ftString, 40);
  Self.FClientDataSet.FieldDefs.Add('Valor', ftFloat);

  Self.FClientDataSet.CreateDataSet;
end;

procedure TFTask3.FormDestroy(Sender: TObject);
begin
  inherited;

  DBGrid1.DataSource := nil;

  FreeAndNil(Self.FClientDataSet);
  FreeAndNil(Self.FDataSource);
end;

procedure TFTask3.Internal_Prepare;
var
  vrVez : Integer;
begin
  inherited;

  for vrVez := 1 to 10 do
  begin
    Self.FClientDataSet.Append;
    Self.FClientDataSet.FieldByName('IdProjeto').AsInteger  := vrVez;
    Self.FClientDataSet.FieldByName('NomeProjeto').AsString := Format('Projeto %0:d', [vrVez]);
    Self.FClientDataSet.FieldByName('Valor').AsFloat        := Random(100 );
    Self.FClientDataSet.Post;
  end;
end;

procedure TFTask3.Internal_UpdateCalcs;
var
  vrTotal         : Double;
  vrTotalDivisoes : Double;
  vrValorAnterior : Double;
begin
  inherited;

  vrTotal         := 0.0;
  vrTotalDivisoes := 0.0;
  vrValorAnterior := 0.0;

  Self.FClientDataSet.DisableControls;
  try
    Self.FClientDataSet.First;

    while not Self.FClientDataSet.Eof do
    begin
      vrTotal         := vrTotal + Self.FClientDataSet.FieldByName('Valor').AsFloat;

      if vrValorAnterior > 0 then    
        vrTotalDivisoes := vrTotalDivisoes + (Self.FClientDataSet.FieldByName('Valor').AsFloat / vrValorAnterior);

      vrValorAnterior := Self.FClientDataSet.FieldByName('Valor').AsFloat;

      Self.FClientDataSet.Next;
    end;

    lbTotal.Caption         := FormatFloat('R$ ###,###,###.00', vrTotal);
    lbTotalDivisoes.Caption := FormatFloat('R$ ###,###,###.00', vrTotalDivisoes);
  finally
    Self.FClientDataSet.First;
    Self.FClientDataSet.EnableControls;
  end;
end;

end.

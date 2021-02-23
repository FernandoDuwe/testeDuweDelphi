unit uTask2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uSubForm, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Samples.Spin, uCountThread;

type
  TFTask2 = class(TFSubForm)
    pbThread1: TProgressBar;
    Label2: TLabel;
    pbThread2: TProgressBar;
    Label1: TLabel;
    Label3: TLabel;
    seMiliSegundos: TSpinEdit;
    btnStart: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FThread1 : TCountThread;
    FThread2 : TCountThread;

    procedure Internal_OnProgressThread1(prProgress : Integer);
    procedure Internal_OnProgressThread2(prProgress : Integer);
  public
    { Public declarations }
  end;

var
  FTask2: TFTask2;

implementation

{$R *.dfm}

procedure TFTask2.btnStartClick(Sender: TObject);
begin
  inherited;

  Self.FThread1.WaitTime := seMiliSegundos.Value;
  Self.FThread2.WaitTime := seMiliSegundos.Value;

  Self.FThread1.Start;
  Self.FThread2.Start;
end;

procedure TFTask2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  FTask2 := nil;
end;

procedure TFTask2.FormCreate(Sender: TObject);
begin
  inherited;

  Self.FThread1 := TCountThread.Create(True);
  Self.FThread2 := TCountThread.Create(True);

  Self.FThread1.OnProgress := Self.Internal_OnProgressThread1;
  Self.FThread2.OnProgress := Self.Internal_OnProgressThread2;
end;

procedure TFTask2.FormDestroy(Sender: TObject);
begin
  inherited;

  FreeAndNil(Self.FThread1);
  FreeAndNil(Self.FThread2);
end;

procedure TFTask2.Internal_OnProgressThread1(prProgress: Integer);
begin
  pbThread1.Position := prProgress;
end;

procedure TFTask2.Internal_OnProgressThread2(prProgress: Integer);
begin
  pbThread2.Position := prProgress;
end;

end.

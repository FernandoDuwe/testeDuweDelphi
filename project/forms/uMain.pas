unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls;

type
  TFMain = class(TForm)
    sbStatus: TStatusBar;
    mmNavigation: TMainMenu;
    arefas1: TMenuItem;
    Sobre1: TMenuItem;
    arefa11: TMenuItem;
    arefa21: TMenuItem;
    arefa31: TMenuItem;
    procedure arefa11Click(Sender: TObject);
    procedure arefa21Click(Sender: TObject);
    procedure arefa31Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

uses uTask1, uTask2, uTask3;

procedure TFMain.arefa11Click(Sender: TObject);
begin
  if Assigned(FTask1) then
  begin
    FTask1.WindowState := wsMaximized;
    FTask1.BringToFront;
    Exit;
  end;

  Application.CreateForm(TFTask1, FTask1);
  FTask1.Show;
end;

procedure TFMain.arefa21Click(Sender: TObject);
begin
  if Assigned(FTask2) then
  begin
    FTask2.WindowState := wsMaximized;
    FTask2.BringToFront;
    Exit;
  end;

  Application.CreateForm(TFTask2, FTask2);
  FTask2.Show;
end;

procedure TFMain.arefa31Click(Sender: TObject);
begin
  if Assigned(FTask3) then
  begin
    FTask3.WindowState := wsMaximized;
    FTask3.BringToFront;
    Exit;
  end;

  Application.CreateForm(TFTask3, FTask3);
  FTask3.Show;
end;

procedure TFMain.Sobre1Click(Sender: TObject);
begin
  ShowMessage('Teste de Fernando Luiz Duwe');
end;

end.

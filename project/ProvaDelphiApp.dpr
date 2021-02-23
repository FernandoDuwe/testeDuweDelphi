program ProvaDelphiApp;

uses
  Vcl.Forms,
  FireDAC.VCLUI.Wait,
  uMain in 'forms\uMain.pas' {FMain},
  uSubForm in 'forms\uSubForm.pas' {FSubForm},
  uTask1 in 'forms\uTask1.pas' {FTask1},
  uTask2 in 'forms\uTask2.pas' {FTask2},
  uTask3 in 'forms\uTask3.pas' {FTask3},
  uCountThread in 'classes\uCountThread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.

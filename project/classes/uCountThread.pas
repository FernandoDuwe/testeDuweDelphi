unit uCountThread;

interface

uses
  System.Classes;

type
  TCountThreadOnProgress = procedure(prProgress : Integer) of Object;

  TCountThread = class(TThread)
  private
    { Private declarations }
    FWaitTime   : Integer;
    FOnProgress : TCountThreadOnProgress;
  published
    property WaitTime   : Integer read FWaitTime write FWaitTime;
    property OnProgress : TCountThreadOnProgress read FOnProgress write FOnProgress;
  protected
    procedure Execute; override;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure TCountThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; 
    
    or 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );
    
  where an anonymous method is passed.
  
  Similarly, the developer can call the Queue method with similar parameters as 
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.
    
}

{ TCountThread }

procedure TCountThread.Execute;
var
  vrVez : Integer;
begin
  { Place thread code here }

  for vrVez := 0 to 100 do
  begin
    if Assigned(Self.FOnProgress) then
      Self.FOnProgress(vrVez);

    Sleep(Self.FWaitTime);
  end;
end;

end.

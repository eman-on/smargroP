unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    SpeedButton1: TSpeedButton;
    bp: TSpeedButton;
    bn: TSpeedButton;
    Memo1: TMemo;
    List: TListBox;
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    Label3: TLabel;
    r: TTimer;
    procedure SpeedButton1Click(Sender: TObject);
    procedure bpClick(Sender: TObject);
    procedure bnClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure rTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Main;

{$R *.dfm}

procedure TForm2.bnClick(Sender: TObject);
begin
if list.ItemIndex+1 <=list.Items.Count-1 then
begin
list.ItemIndex:=list.ItemIndex+1;
 TCPClient.Socket.SendText('@Map.deSelectall');
  Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
 TCPClient.Socket.SendText('@Map.SelectObject '+list.Items.Strings[list.ItemIndex]);
 Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
   label2.Caption:='Объект №'+inttostr(list.ItemIndex+1);
  TCPClient.Socket.SendText('@Window.ShowSelected');
 Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
end;
end;

procedure TForm2.bpClick(Sender: TObject);
begin
if list.ItemIndex-1 > -1 then
begin
list.ItemIndex:=list.ItemIndex-1;
 TCPClient.Socket.SendText('@Map.deSelectall');
  Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
 TCPClient.Socket.SendText('@Map.SelectObject '+list.Items.Strings[list.ItemIndex]);
 Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
 label2.Caption:='Объект №'+inttostr(list.ItemIndex+1);
  TCPClient.Socket.SendText('@Window.ShowSelected');
 Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
form2.Left:=0;
form2.Top:=88;
form2.BringToFront;
end;

procedure TForm2.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
form2.BringToFront;
end;

procedure TForm2.rTimer(Sender: TObject);
begin
form1.visible:=true;
form2.Top:=-300;
form2.Left:=-300;
//form2.visible:=false;
r.Enabled:=false;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
timer1.Enabled:=false;
form1.visible:=true;
form2.Top:=-300;
form2.Left:=-300;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
label1.Caption:=inttostr(list.ItemIndex);
end;

end.

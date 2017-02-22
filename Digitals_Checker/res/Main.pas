unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Buttons, ComCtrls, ExtCtrls, pngimage,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdContext,
  IdCmdTCPClient, Sockets,  Scktcomp, Menus;

type
  TForm1 = class(TForm)
    layc: TListBox;
    laye: TListBox;
    Clou: TButton;
    Label1: TLabel;
    Label2: TLabel;
    c1: TLabel;
    c2: TLabel;
    Memo1: TMemo;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    cb1: TCheckBox;
    Label4: TLabel;
    c3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Image1: TImage;
    lid: TListBox;
    lbc: TListBox;
    del: TSpeedButton;
    Label11: TLabel;
    Label12: TLabel;
    start: TTimer;
    SpeedButton2: TSpeedButton;
    Timer1: TTimer;
    lp: TListBox;
    SpeedButton3: TSpeedButton;
    lpe: TListBox;
    Label13: TLabel;
    param: TListBox;
    Label14: TLabel;
    Label15: TLabel;
    lp1: TLabel;
    lp2: TLabel;
    pt1: TListBox;
    pt2: TListBox;
    paramc: TSpeedButton;
    paramca: TSpeedButton;
    Image: TImage;
    ig: TTimer;
    od: TOpenDialog;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Label88: TLabel;
    SpeedButton4: TSpeedButton;
    f1: TListBox;
    f2: TListBox;
    pp1: TListBox;
    pp2: TListBox;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton1MouseLeave(Sender: TObject);
    procedure SpeedButton1MouseEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure layeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure delClick(Sender: TObject);
    procedure ClouClick(Sender: TObject);
    procedure startTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure paramClick(Sender: TObject);
    procedure paramcClick(Sender: TObject);
    procedure paramcaClick(Sender: TObject);
    procedure igTimer(Sender: TObject);
    procedure paramDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
      State: TOwnerDrawState);
    procedure paramMeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure gooTimer(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  TCPClient:TClientSocket;
  Str,ooo,liii,e:String;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.ClouClick(Sender: TObject);
begin
tcpclient.Close;
tcpclient.Free;
form2.close;
end;

procedure TForm1.delClick(Sender: TObject);
begin
 {Посылка команды и получение ответа}
if laye.ItemIndex<>-1 then begin
 TCPClient.Socket.SendText('Map.Layers.Delete id'+l1.Caption);
 Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
 if str='<ERROR>' then showmessage('Ошибочка...')
 else begin l1.Caption:='нет слоя';l2.Caption:='нет слоя';l3.Caption:='нет слоя'; c3.Caption:=inttostr(strtoint(c3.Caption)-1);laye.Items.Delete(laye.ItemIndex) end;
 TCPClient.Socket.SendText('Window.Refresh');
 Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
TCPClient.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
e:=ExtractFilePath(Application.ExeName);
ooo:='o';
start.Enabled:=true;
end;

procedure TForm1.gooTimer(Sender: TObject);
var
a,i:integer;
y,yy,s,t:string;
begin
//=======
if param.ItemIndex <> -1 then
begin
//begin
a:=1;
s:='';
t:=param.Items.Strings[param.ItemIndex];
for i:=1 to length(t) do
begin
if t[i]<>' ' then s:=s+t[i]
else begin if a=1 then begin liii:=s;s:='';a:=a+1; end else s:=s+' '; end;
//=======
end;
end;
lp1.Caption:='';
y:=pt1.Items.Strings[param.ItemIndex];
yy:=pt2.Items.Strings[param.ItemIndex];
lp2.Caption:='';
for i:= length(liii)+4 to length(pt1.Items.Strings[param.ItemIndex]) do lp1.caption:= lp1.Caption+ y[i];
for i:= length(liii)+4 to length(pt2.Items.Strings[param.ItemIndex])do lp2.caption:= lp2.Caption+ yy[i];
end;

procedure TForm1.igTimer(Sender: TObject);
var
s:widechar;
begin
if fileexists('D:/lp.txt') then
begin
ig.Enabled:=false;
copyfile('D:/lp.txt','/Data/lp.txt',true);
application.BringToFront;
messageDLG('Готова! Можете закрывать оба окошка!',mtCustom,[mbOK],0);
ig.Enabled:=false;
end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
if cb1.Checked= false then cb1.Checked:=true
else if cb1.Checked= true then cb1.Checked:=false;
end;

procedure TForm1.SpeedButton1MouseEnter(Sender: TObject);
begin
ooo:='o';
timer1.Enabled:=true;
//if cb1.Checked= false then form1.ClientWidth:=1001;
end;

procedure TForm1.SpeedButton1MouseLeave(Sender: TObject);
begin
ooo:='c';
timer1.Enabled:=true;
//if cb1.Checked= false then form1.ClientWidth:=579;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
i:integer;
t,s:string;
begin
{Посылка команды и получение ответа}
if l3.Caption <> 'нет слоя' then begin
 if strtoint(l3.Caption)>0 then begin
 form2.list.ItemIndex:=0;
form2.Left:=0;
form2.Top:=88;
form2.BringToFront;
form2.BringToFront;
form1.Visible:=false;
form2.Timer1.Enabled:=true;
 TCPClient.Socket.SendText('Map.SelectLayer id'+l1.Caption);
 Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;

  TCPClient.Socket.SendText('@Map.Selected.List');
 Str:=TCPClient.Socket.ReceiveText;
 While S='' do S:=TCPClient.Socket.ReceiveText;

 TCPClient.Socket.SendText('@Map.DeselectAll');
 Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;

form2.memo1.text := s;
form2.List.Items.Clear;
form2.List.Items.AddStrings(form2.Memo1.Lines);
form2.List.ItemIndex:=0;
form2.Label2.Caption:='Объект №1';
form2.Label3.Caption:='Всего: '+inttostr(form2.List.Items.Count);
{ t:='';
 i:=0;
repeat
i:=i+1;
if s[i]<>' ' then begin t:=t+s; showmessage(t); end
else begin form2.List.items.Add(t); t:=''; end;
until i<>length(s);}

 TCPClient.Socket.SendText('@Map.SelectObject '+form2.list.Items.Strings[0]);
 S:=TCPClient.Socket.ReceiveText;
 While S='' do S:=TCPClient.Socket.ReceiveText;

  TCPClient.Socket.SendText('@Window.ShowSelected');
 Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
 end;


end;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
speedbutton5.Visible:=true;
paramca.Visible:=true;
label88.Visible:=true;
speedbutton2.Visible:=false;
del.Visible:=false;
paramc.Visible:=true;
label8.Visible :=false;
label9.Visible:=false;
label10.Visible:=false;
label14.Visible:=true;
label15.Visible:=true;
laye.Visible:=false;
l1.Visible:=false;
l2.Visible:=false;
l3.Visible:=false;
label7.Visible:=false;
label5.Visible:=false;
label13.Visible:=true;
lp1.Visible:=true;
lp2.Visible:=true;
param.Visible:=true;
speedbutton4.Visible:=true;
speedbutton3.Visible:=false;
end;
procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
paramca.Visible:=false;
del.Visible:=true;
speedbutton5.Visible:=false;
speedbutton2.Visible:=true;
paramc.Visible:=false;
l1.Visible:=true;
lp1.Visible:=false;
label88.Visible:=false;
lp2.Visible:=false;
l2.Visible:=true;
l3.Visible:=true;
label8.Visible :=true;
label9.Visible:=true;
label10.Visible:=true;
label14.Visible:=false;
label15.Visible:=false;
label7.Visible:=true;
label5.Visible:=true;
label13.Visible:=false;
param.Visible:=false;
laye.Visible:=true;
speedbutton3.Visible:=true;
speedbutton4.Visible:=false;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
var
a,i,b:integer;
s:string;
w:word;
begin
if pp2.Items.count>0 then
begin
w:=messageDLG('Обнаружены добавленные параметры: '+(inttostr(pp2.Items.count-pp1.Items.count))+'.'+#13+'Очистить?',mtwarning,[mbOK,mbCancel],0);
if w=1 then
begin
  for i:=0 to pp2.Items.Count-1 do
   begin
   b:=1;
    s:='';
    for a:=1 to length(pp2.Items.Strings[i]) do
    begin
    if pp2.Items.Strings[i][a]<>' ' then begin s:=s+pp2.Items.Strings[i][a]; end
    else
	begin
	if b=1 then
	begin
    TCPClient.Socket.SendText('@Map.Parameters.Delete id'+s);
    Str:=TCPClient.Socket.ReceiveText;
    While Str='' do Str:=TCPClient.Socket.ReceiveText;
    b:=2;
    end
	else
	end;
  end;
  end;
  pp2.Items.Clear;
  showmessage('Добавленные параметры удалены.');
end;
end
else messageDLG('Добавленных параметров не обнаружено.',mtcustom,[mbOK],0);
end;

procedure TForm1.startTimer(Sender: TObject);
var
fe,a,i,b,g:integer;
s,t,tete,d,loq:string;
w:word;

label lf1,lf2,lab1,lab2;
begin //началась процедура
start.Interval:=9999999;
 TCPClient:=TClientSocket.Create(Nil);
 TCPClient.ClientType:=ctBlocking;
 TCPClient.Host:='localhost';
 TCPClient.Port:=1067;

s:='';
 d:=SysUtils.DateToStr(Now);
for i:=1 to length(d) do
begin
if d[i]<>'.' then s:=s+d[i];
end;
d:=s;
s:='';
 Try
  TCPClient.Open;
 Except
  showmessage('Connection error');
  form2.Close;
  form1.Close;
  start.Enabled:=false;
  Sleep(100);
 End;


 Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
s:='0';

if tcpclient.Socket.Connected=true then label12.Caption:='Подключено'
else if tcpclient.Socket.Connected=false then label12.Caption:='Нет подключения';
if directoryexists(e+'Data/') = false then begin s:='1'; createdir(e+'Data'); end
else if FileExists(e+'Data/lp.txt')= true then lp.Items.LoadFromFile(e+'Data\lp.txt')
else s:='1';


if s='1' then
begin
form2.Visible:=false;
form1.Visible:=false;
w:=messageDLG('Не найденны файлы для проверки.'+#13+'Создать новые файлы?'+#13,mtwarning,[mbOK,mbCancel],0);
if w=mrCancel then form2.Close
else if w=mrOk then
begin
w:=messageDLG('Откройте в Digitals чистый лист с необходимым набором слоев и параметров, которые будут использоваться для проверки карт и нажмите ОК.'+#13,mtinformation,[mbOK,mbCancel],0);
if w=mrCancel then begin messageDLG('Создание файлов проверки отменено.'+#13,mtERROR,[mbOK],0); form2.Close; end
else if w=mrOK then
begin
//----------------------
messageDLG('Создание файлов займет несколько секунд, не трогайте Digitals.',mtInformation,[mbOK],0);
TCPClient.Socket.SendText('if @map.layers.count < 1 then @break Не открыта карта!!!');
 tete:=TCPClient.Socket.ReceiveText;
 While tete='' do tete:=TCPClient.Socket.ReceiveText;
 sleep(500);
TCPClient.Socket.SendText('$s=@Map.Layers.List');
 tete:=TCPClient.Socket.ReceiveText;
 While tete='' do tete:=TCPClient.Socket.ReceiveText;
  sleep(500);
 TCPClient.Socket.SendText('Text[1].clear');
 tete:=TCPClient.Socket.ReceiveText;
 While tete='' do tete:=TCPClient.Socket.ReceiveText;
  sleep(500);
 TCPClient.Socket.SendText('Text[1].Add $s');
 tete:=TCPClient.Socket.ReceiveText;
 While tete='' do tete:=TCPClient.Socket.ReceiveText;
  sleep(500);
 TCPClient.Socket.SendText('Text[1].Save D:/clear.txt');
 tete:=TCPClient.Socket.ReceiveText;
 While tete='' do tete:=TCPClient.Socket.ReceiveText;
  sleep(500);
 TCPClient.Socket.SendText('Text[1].clear');
 tete:=TCPClient.Socket.ReceiveText;
 While tete='' do tete:=TCPClient.Socket.ReceiveText;
 if fileexists('D:/clear.txt') then
begin
copyfile('D:/clear.txt','/Data/clear.txt',true);
end;

//=====================================
t:='';
s:='';
 TCPClient.Socket.SendText('@Map.Parameters.Count');
 t:=TCPClient.Socket.ReceiveText;
 While t='' do t:=TCPClient.Socket.ReceiveText;
 i:=strtoint(t);
 t:='';
  TCPClient.Socket.SendText('@Map.Parameters.list');
 sleep(500);
 s:=TCPClient.Socket.ReceiveText;
 sleep(500);
 While s='' do s:=TCPClient.Socket.ReceiveText;
 sleep(500);
 pt1.Items.Text:=s;
pt1.Items.SaveToFile('D:/pse.txt');
 if fileexists('D:/pse.txt') then
begin
copyfile('D:/pse.txt','/Data/ps.txt',true);
windows.DeleteFile('D:/pse.txt');
end;
//=====================================

memo1.Text:='';
memo1.Lines.Add('ShowHeader=1');
memo1.Lines.Add('Left=0');
memo1.Lines.Add('Top=82');
memo1.Lines.Add('Width=26');
memo1.Lines.Add('Height=26');
memo1.Lines.Add('Visible=0');
memo1.Lines.Add('Names=Проверка');
memo1.Lines.Add('');
memo1.Lines.Add('$c=@Map.Layers.Count');
memo1.Lines.Add('$i=0');
memo1.Lines.Add('@Text[1].clear');
memo1.Lines.Add('%start');
memo1.Lines.Add('$i=$i+1');
memo1.Lines.Add('$a=@Map.Layers.Get $i');
memo1.Lines.Add('$a=@StringPart 1 $a');
memo1.Lines.Add('$s=@Map.Layers.GetValidParameters id$a');
memo1.Lines.Add('@Text[1].Add $s');
memo1.Lines.Add('@if $i<$c then @goto %start');
memo1.Lines.Add('@Text[1].Save D:/lp.txt');
memo1.Lines.Add('@Dialog.message Не забудьте удалить панельку Run.');
memo1.Lines.SaveToFile('D:/Run.tlb');
 tete:=TCPClient.Socket.ReceiveText;
 While tete='' do tete:=TCPClient.Socket.ReceiveText;
 memo1.Text:='';

ig.Enabled:=true;
messageDLG('Для завершения создания файлов проверки необходимо не закрывая этого окошка:'+#13+'1: Скопировать с диска D: файл "Run.tlb" в папку с Digitals'+#13+'2: Перезапустить Digitals'+#13+'3: Снова открыть карту, которая будет использоваться в качестве эталона'+#13+'4: Нажать на кнопку в панельке "Run"'+#13+'5: Удалить панельку "Run".',mtInformation,[mbOK],0);
if fileexists('D:/lp.txt')=false then begin showmessage('НЕ ЗАКРЫВАЙТЕ ПРЕДЫДУЩЕЕ ОКНО!!!');
ig.Enabled:=true;
messageDLG('Для завершения создания файлов проверки необходимо не закрывая этого окошка:'+#13+'1: Скопировать с диска D: файл "Run.tbl" в папку с Digitals'+#13+'2: Перезапустить Digitals'+#13+'3: Снова открыть карту, которая будет использоваться в качестве эталона'+#13+'4: Нажать на кнопку в панельке "Run". (Если её нет, то поставьте голочку во вкладке "Окна".'+#13+'5: Удалить панельку "Run".',mtInformation,[mbOK],0); end
else if fileexists('D:/lp.txt')=true then
begin
showmessage('Почти готово!!!'+#13+'Скопируйте файлы "lp.txt" и "clear.txt" с диска "D:" в папку "Data/" с программой.'+#13+'Скопируйте файл "Check.tlb" в папку с Digitals и программа должна располагаться по пути:"Digitals/Addons/Check/" и перезапустите Digitals!'+#13+'Для использования программы откройте карту которую хотите проверить и нажмите на новую панельку Check в Digitals.'+#13+'Запуск проверки осуществляется ТОЛЬКО через панельку Check.'+#13+#13+'Приятной работы');
tcpclient.Close;
tcpclient.Free;
form2.Close;
end; end;
end;
end;

if fileexists('D:/er.txt') then laye.Items.LoadFromFile('D:/er.txt')
else begin
form1.Visible:=false;
form2.Visible :=false;
w:=messageDLG('Программа была запущена отдельно!'+#13+'Запуск возможен только из панели в Digitals!'+#13,mterror,[mbOK],0);
form1.Close;
form2.Close;
end;
if fileexists('D:/ero.txt') then layc.Items.LoadFromFile('D:/ero.txt')
else begin
form1.Visible:=false;
form2.Visible :=false;
w:=messageDLG('Программа была запущена отдельно!'+#13+'Запуск возможен только из панели в Digitals!'+#13,mterror,[mbOK],0);
form1.Close;
form2.Close;
end;
if fileexists('D:/lpe.txt') then lpe.Items.LoadFromFile('D:/lpe.txt')
else begin
form1.Visible:=false;
form2.Visible :=false;
w:=messageDLG('Программа была запущена отдельно!'+#13+'Запуск возможен только из панели в Digitals!'+#13,mterror,[mbOK],0);
form1.Close;
form2.Close;
end;



s:='';
if strtoint(d)>26042016 then d:='0';
for i:=0 to laye.Items.Count-1 do
begin
b:=1;
s:='';
t:=laye.Items.Strings[i];
for a:=1 to length(t) do
begin
if t[a]<>' ' then s:=s+t[a]
else begin if b=1 then begin lid.Items.Add(s); lbc.Items.Add(layc.Items.Strings[i]); s:=''; b:=2; end else begin s:='' end; end;
end;
end;
if FileExists(e+'Data\clear.txt')= true then
begin
layc.Items.LoadFromFile(e+'Data\clear.txt');
laye.Items.Delete(0);
layc.Items.Delete(0);



c1.Caption:= inttostr(layc.Items.Count);
c2.Caption:= inttostr(laye.Items.Count);
c3.caption := inttostr(laye.Items.Count-layc.Items.Count);
end;
begin
//============================================================================================
t:='';
s:='';
 TCPClient.Socket.SendText('@Map.Parameters.Count');
 t:=TCPClient.Socket.ReceiveText;
 While t='' do t:=TCPClient.Socket.ReceiveText;
 a:=strtoint(t);
 t:='';
  TCPClient.Socket.SendText('@Map.Parameters.list');
 sleep(500);
 s:=TCPClient.Socket.ReceiveText;
 sleep(500);
 While s='' do s:=TCPClient.Socket.ReceiveText;
 sleep(500);
 pp2.Items.Text:=s;
 pp1.Items.LoadFromFile(e+'Data/ps.txt');
a:=0;
 b:=0;
fe:=pp1.Items.Count;
for i := 1 to fe do
begin
lab1:
if pp1.Items.Strings[a]=pp2.Items.Strings[b] then begin pp1.Items.Delete(a); pp2.Items.Delete(b);b:=0; goto lab2; end
else begin if b<pp2.Items.Count-1 then begin b:=b+1; goto lab1; end else begin a:=a+1; b:=0; goto lab2; end; end;
lab2:
end;

if pp1.Items.Count>0 then
begin
a:=0;
for i:=0 to pp1.Items.Count-1 do
begin
if length(pp1.Items.Strings[a]) = length(pp2.Items.Strings[a]) then begin pp1.Items.Delete(a); pp2.Items.Delete(a); end
else a:=a+1;
end;
end;
loq:='';
if pp2.Items.Count>0 then
begin
a:=0;
for i:=0 to pp2.Items.Count-1 do
begin
loq:=loq+pp2.Items.Strings[i]+#13;
s:='';
g:=1;
for a:=1 to length(pp2.Items.Strings[i]) do
begin
if pp2.Items.Strings[i][a]<> ' ' then begin if g=1 then s:=s+pp2.Items.Strings[i][a] else end else g:=2;
end;
TCPClient.Socket.SendText('@Map.Parameters.Delete id'+s);
Str:=TCPClient.Socket.ReceiveText;
While Str='' do Str:=TCPClient.Socket.ReceiveText;
end;

TCPClient.Socket.SendText('@window.Refresh');
Str:=TCPClient.Socket.ReceiveText;
While Str='' do Str:=TCPClient.Socket.ReceiveText;

pp2.Items.Clear;
messageDLG('Были найдены добавленные параметры в классификатор, что привело к нарушению нумирации параметров.'+#13+'Эта ошибка была устранена, однако требуется перезапустить программу для получения уже правильных данных.'+#13+#13+'Список удаленных параметров:   '+inttostr(i)+#13+#13+loq,mtwarning,[mbOK],0);
tcpclient.Free;
tcpclient.Close;
form2.Close;
end;

a:=0;
b:=0;
i:=0;
g:=1;
fe:=0;
memo1.text :='';

layc.Sorted:=true;
laye.Sorted:=true;

repeat
if layc.Items.Strings[a]= laye.Items.Strings[b] then
begin
memo1.Lines.Add('Совпадение: '+layc.Items.Strings[a]+';');

if lp.Items.Strings[a] = lpe.Items.Strings[b] then begin lp.Items.Delete(a); lpe.Items.Delete(b); end
else if lp.Items.Strings[a] <> lpe.Items.Strings[b] then begin; param.items.Add(layc.Items.Strings[a]); pt1.Items.Add(lp.Items.Strings[a]); pt2.Items.Add(lpe.Items.Strings[b]); lp.Items.Delete(a); lpe.Items.Delete(b); end;

layc.Items.Delete(a);
laye.Items.Delete(b);
i:=i+1;
end
else
begin
begin b:=b+1; memo1.Lines.Add('Найденно Несовпадение: '+laye.Items.Strings[b]+'!'); end
end;
until i=strtoint(c1.Caption);

layc.Sorted:=true;
laye.Sorted:=true;
start.Enabled:=false;
end;

label88.Caption:=inttostr(param.Items.Count);
lpe.Items.LoadFromFile('D:\lpe.txt');
if FileExists(e+'Data\lp.txt')= true then lp.Items.LoadFromFile(e+'Data\lp.txt');
if fileexists('D:/er.txt') then windows.DeleteFile('D:/er.txt');
if fileexists('D:/ero.txt') then windows.DeleteFile('D:/ero.txt');
if fileexists('D:/lpe.txt') then windows.DeleteFile('D:/lpe.txt');
if d='0' then begin d:='Данная версия программы больше не актуальна.'+#13+'Если Вы желаете использовать её дальше - свяжитесь с разработчиком'+#13+#13+'un_limi_ted@fan.net'; messageDLG(d,mtcustom,[mbOK],0); tcpclient.Close; tcpclient.Free; e:=ExtractFilePath(Application.ExeName); memo1.Text:=''; memo1.Lines.Add('timeout /T 2'); memo1.Lines.Add('rmdir /s /q '+e); memo1.Lines.SaveToFile('temp.bat'); winexec(pansichar(ansistring(extractfilepath(application.ExeName)+'temp.bat')),sw_hide); form2.Close; end;
//================================================Parameters

//================================================

image.visible:=false;
laye.Visible:=true;
start.Enabled:=false;
end;

procedure TForm1.layeClick(Sender: TObject);
var
i,a:integer;
t,s:string;
begin
if laye.ItemIndex <> -1 then
begin
//begin
a:=1;
s:='';
t:=laye.Items.Strings[laye.ItemIndex];
for i:=1 to length(t) do
begin
if t[i]<>' ' then s:=s+t[i]
else begin if a=1 then begin l1.Caption:=s;s:='';a:=a+1; end else s:=s+' '; end;
if i=length(t) then
begin
t:='';
for a:=1 to 14 do
begin
t:=t+s[a];
end;
t:=t+'...';
l2.Caption:=t; t:='';
a:=lid.Items.IndexOf(l1.Caption);
t:=lbc.Items.Strings[a];
TCPClient.Socket.SendText('Map.Layers.ObjectCount id'+l1.Caption);
 Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
 t:=str;
l3.Caption:=t; t:='';
del.enabled:=true;

end;
end;
//end
end;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
showmessage('Помощь.'+#13+''+#13+''+#13+'Программа разработана как дополнение к ГИС системе Digitals для проверки и исправления существующих слоев и их параметров.'+#13+'Для создания нового эталонного набора - удалите папку "Data" в корне папки с программой.'+#13+#13+#13+'По дополнительным вопросам или в случае неработоспособности программы обращайтесь к разработчику.'+#13+''+#13+'Digitals Checker');
end;

procedure TForm1.N3Click(Sender: TObject);
begin
form3.Visible:=true;
form1.Enabled:=false;
form1.AlphaBlendValue:=160;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
tcpclient.Close;
tcpclient.Free;
form2.Close;
end;

procedure TForm1.paramcaClick(Sender: TObject);
var
a,ii,i,io,b,bb:integer;
y,yy,s,t,l1,l2:string;
begin
if param.Items.count > 0 then
begin
for ii:=1 to ((param.Items.Count)) do
begin
  param.ItemIndex:=0;
  a:=1;
  s:='';
  t:=param.Items.Strings[param.ItemIndex];
    for i:=1 to length(t) do
    begin
    if t[i]<>' ' then begin s:=s+t[i]; end
    else begin if a=1 then begin liii:=s;s:='';a:=a+1; end else s:=s+' '; end;
    end;
  lp1.Caption:='';
y:=pt1.Items.Strings[param.ItemIndex];
yy:=pt2.Items.Strings[param.ItemIndex];
lp2.Caption:='';
for i:= length(liii)+4 to length(pt1.Items.Strings[param.ItemIndex]) do lp1.caption:= lp1.Caption+ y[i];
for i:= length(liii)+4 to length(pt2.Items.Strings[param.ItemIndex])do lp2.caption:= lp2.Caption+ yy[i];
pt2.Items.Delete(0);
  // CHANG
//=======================
t:='';
io:=0;
f1.Items.Clear;
for io:=1 to length(lp1.Caption) do
begin
if lp1.Caption[io]<>' 'then begin t:=t+lp1.Caption[io]; end
else begin f1.Items.Add(t); t:=''; end;
end;
f1.Items.Add(t);
t:='';

f2.Items.Clear;
for io:=1 to length(lp2.Caption) do
begin
if lp2.Caption[io]<>' 'then t:=t+lp2.Caption[io]
else begin f2.Items.Add(t); t:=''; end;
end;
f2.Items.Add(t);
t:='';
b:=0;
io:=0;
bb:=0;
{if f1.Items.Count>1 then begin
if f1.Items.Count>f2.Items.Count then a:=f2.Items.Count-1
else a:=f1.Items.Count-1;
repeat
if f1.Items.Strings[io+bb]=f2.Items.Strings[io+b] then begin f1.Items.Delete(io+bb); f2.Items.Delete(io+b);end
else if f1.Items.Strings[io+bb]<>f2.Items.Strings[io+b] then begin if f1.Items.Count>f2.Items.Count then bb:=bb+1 else b:=b+1; end;
until f1.Items.Count=0;
end;
 TCPClient.Socket.SendText('@Map.deselectall');
 Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
 TCPClient.Socket.SendText('@Map.SelectLayer id'+liii);
  Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
for io:=0 to f2.Items.Count-1 do
begin
  TCPClient.Socket.SendText('Map.Selected.SetParameter '+f2.Items.Strings[io]+'  '+#13);
  Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
 end;
  TCPClient.Socket.SendText('@Map.deselectall');
  Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
 //====================}
TCPClient.Socket.SendText('@Map.Layers.SetValidParameters id'+liii+' '+lp1.Caption);
Str:=TCPClient.Socket.ReceiveText;
While Str='' do Str:=TCPClient.Socket.ReceiveText;
  pt1.Items.Delete(param.ItemIndex);
  param.Items.Delete(param.ItemIndex);
  //CHANGED
end;


end;
TCPClient.Socket.SendText('@Window.Refresh');
Str:=TCPClient.Socket.ReceiveText;
While Str='' do Str:=TCPClient.Socket.ReceiveText;
label13.Caption:='Нет слоев с испорченными параметрами.';
lp1.Caption:='нет слоя';
lp2.Caption:='нет слоя';
label88.Caption:='0';
end;

procedure TForm1.paramcClick(Sender: TObject);
var
i,a,l,b,io:integer;
l1,l2,t:string;
begin
if param.ItemIndex<>-1 then
begin
//=======================

f1.Items.Clear;
for i:=1 to length(lp1.Caption) do
begin
if lp1.Caption[i]<>' 'then begin t:=t+lp1.Caption[i]; end
else begin f1.Items.Add(t); t:=''; end;
end;
f1.Items.Add(t);
t:='';

f2.Items.Clear;
for i:=1 to length(lp2.Caption) do
begin
if lp2.Caption[i]<>' 'then t:=t+lp2.Caption[i]
else begin f2.Items.Add(t); t:=''; end;
end;
f2.Items.Add(t);

t:='';
b:=0;
i:=0;

{if f1.Items.Count>0 then begin
if f1.Items.Count>f2.Items.Count then a:=f2.Items.Count-1
else a:=f1.Items.Count-1;
repeat
if f1.Items.Strings[i]=f2.Items.Strings[i+b] then begin f1.Items.Delete(i); f2.Items.Delete(i+b);end
else if f1.Items.Strings[i]<>f2.Items.Strings[i+b] then begin b:=b+1; end;
until f1.Items.Count=0;
end;

 TCPClient.Socket.SendText('@Map.SelectLayer id'+liii);
  Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
for io:=0 to f2.Items.Count-1 do
begin
  TCPClient.Socket.SendText('@Map.Selected.SetParameter '+f2.Items.Strings[io]+' ');
  Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
end;
  TCPClient.Socket.SendText('@Map.deselectall');
  Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
 //====================                          }


 TCPClient.Socket.SendText('@Map.Layers.SetValidParameters id'+liii+' '+lp1.Caption);
  Str:=TCPClient.Socket.ReceiveText;
 While Str='' do Str:=TCPClient.Socket.ReceiveText;
 pt1.Items.Delete(param.ItemIndex);
 pt2.Items.Delete(param.ItemIndex);
 param.Items.Delete(param.ItemIndex);
 label88.Caption:=inttostr(strtoint(label88.Caption)-1);
 lp1.Caption:='нет слоя';
 lp2.Caption:='нет слоя';
 end;
end;

procedure TForm1.paramClick(Sender: TObject);
var
a,i:integer;
y,yy,s,t:string;
begin
//=======
if param.ItemIndex <> -1 then
begin
//begin
a:=1;
s:='';
t:=param.Items.Strings[param.ItemIndex];
for i:=1 to length(t) do
begin
if t[i]<>' ' then s:=s+t[i]
else begin if a=1 then begin liii:=s;s:='';a:=a+1; end else s:=s+' '; end;
//=======
end;
end;
lp1.Caption:='';
y:=pt1.Items.Strings[param.ItemIndex];
yy:=pt2.Items.Strings[param.ItemIndex];
lp2.Caption:='';
for i:= length(liii)+4 to length(pt1.Items.Strings[param.ItemIndex]) do lp1.caption:= lp1.Caption+ y[i];
for i:= length(liii)+4 to length(pt2.Items.Strings[param.ItemIndex])do lp2.caption:= lp2.Caption+ yy[i];
end;

procedure TForm1.paramDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
a,i:integer;
y,yy,s,t:string;
begin
//=======
if param.ItemIndex <> -1 then
begin
//begin
a:=1;
s:='';
t:=param.Items.Strings[param.ItemIndex];
for i:=1 to length(t) do
begin
if t[i]<>' ' then s:=s+t[i]
else begin if a=1 then begin liii:=s;s:='';a:=a+1; end else s:=s+' '; end;
//=======
end;
end;
lp1.Caption:='';
y:=pt1.Items.Strings[param.ItemIndex];
yy:=pt2.Items.Strings[param.ItemIndex];
lp2.Caption:='';
for i:= length(liii)+4 to length(pt1.Items.Strings[param.ItemIndex]) do lp1.caption:= lp1.Caption+ y[i];
for i:= length(liii)+4 to length(pt2.Items.Strings[param.ItemIndex])do lp2.caption:= lp2.Caption+ yy[i];
end;

procedure TForm1.paramMeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
var
a,i:integer;
y,yy,s,t:string;
begin
//=======
if param.ItemIndex <> -1 then
begin
//begin
a:=1;
s:='';
t:=param.Items.Strings[param.ItemIndex];
for i:=1 to length(t) do
begin
if t[i]<>' ' then s:=s+t[i]
else begin if a=1 then begin liii:=s;s:='';a:=a+1; end else s:=s+' '; end;
//=======
end;
end;
lp1.Caption:='';
y:=pt1.Items.Strings[param.ItemIndex];
yy:=pt2.Items.Strings[param.ItemIndex];
lp2.Caption:='';
for i:= length(liii)+4 to length(pt1.Items.Strings[param.ItemIndex]) do lp1.caption:= lp1.Caption+ y[i];
for i:= length(liii)+4 to length(pt2.Items.Strings[param.ItemIndex])do lp2.caption:= lp2.Caption+ yy[i];
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
t,a,i:integer;
begin
if cb1.Checked=false then begin
a:=1005;
if ooo='o' then
begin
if form1.ClientWidth <= a then
begin
i:= ((1005-Form1.Clientwidth)div 8);
Form1.Clientwidth := form1.ClientWidth+i;
//Form1.Left := form1.Left-(i div 2);
end
else begin timer1.Enabled := false; end;
end

else begin
if form1.ClientWidth >= 580 then
begin
i:= ((Form1.Clientwidth-580)div 8);
Form1.Clientwidth := form1.ClientWidth-i;
//Form1.Left := form1.Left-(i div 2);
end
else begin timer1.Enabled := false; end;
end;
end;




end;


end.

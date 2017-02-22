unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    CheckBox3: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    cb1: TCheckBox;
    cb2: TCheckBox;
    cb3: TCheckBox;
    cb4: TCheckBox;
    cb7: TCheckBox;
    cb8: TCheckBox;
    cb9: TCheckBox;
    cb10: TCheckBox;
    cb11: TCheckBox;
    cb12: TCheckBox;
    cb13: TCheckBox;
    cb14: TCheckBox;
    cb15: TCheckBox;
    cb5: TCheckBox;
    cb6: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label5: TLabel;
    Timer1: TTimer;
    Memo: TMemo;
    cb16: TCheckBox;
    cb17: TCheckBox;
    cb18: TCheckBox;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Label8: TLabel;
    ProgressBar1: TProgressBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure CheckBox1MouseEnter(Sender: TObject);
    procedure CheckBox1MouseLeave(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBox2MouseEnter(Sender: TObject);
    procedure CheckBox2MouseLeave(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure RadioButton1MouseEnter(Sender: TObject);
    procedure RadioButton1MouseLeave(Sender: TObject);
    procedure RadioButton2MouseEnter(Sender: TObject);
    procedure RadioButton2MouseLeave(Sender: TObject);
    procedure RadioButton3MouseEnter(Sender: TObject);
    procedure RadioButton3MouseLeave(Sender: TObject);
    procedure cb1MouseLeave(Sender: TObject);
    procedure cb2MouseLeave(Sender: TObject);
    procedure cb3MouseLeave(Sender: TObject);
    procedure cb4MouseLeave(Sender: TObject);
    procedure cb5MouseLeave(Sender: TObject);
    procedure cb6MouseLeave(Sender: TObject);
    procedure cb7MouseLeave(Sender: TObject);
    procedure cb8MouseLeave(Sender: TObject);
    procedure cb9MouseLeave(Sender: TObject);
    procedure cb10MouseLeave(Sender: TObject);
    procedure cb11MouseLeave(Sender: TObject);
    procedure cb12MouseLeave(Sender: TObject);
    procedure cb13MouseLeave(Sender: TObject);
    procedure cb14MouseLeave(Sender: TObject);
    procedure cb15MouseLeave(Sender: TObject);
    procedure cb16MouseLeave(Sender: TObject);
    procedure cb17MouseEnter(Sender: TObject);
    procedure cb17MouseLeave(Sender: TObject);
    procedure cb18MouseEnter(Sender: TObject);
    procedure cb18MouseLeave(Sender: TObject);
    procedure cb1MouseEnter(Sender: TObject);
    procedure cb2MouseEnter(Sender: TObject);
    procedure cb3MouseEnter(Sender: TObject);
    procedure cb4MouseEnter(Sender: TObject);
    procedure cb5MouseEnter(Sender: TObject);
    procedure cb6MouseEnter(Sender: TObject);
    procedure cb7MouseEnter(Sender: TObject);
    procedure cb8MouseEnter(Sender: TObject);
    procedure cb9MouseEnter(Sender: TObject);
    procedure cb10MouseEnter(Sender: TObject);
    procedure cb11MouseEnter(Sender: TObject);
    procedure cb12MouseEnter(Sender: TObject);
    procedure cb13MouseEnter(Sender: TObject);
    procedure cb14MouseEnter(Sender: TObject);
    procedure cb15MouseEnter(Sender: TObject);
    procedure cb16MouseEnter(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBox3MouseEnter(Sender: TObject);
    procedure CheckBox3MouseLeave(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
num,l0,l1,l2,l3:integer;
i:integer;
s:string;
begin
num:=0;
progressbar1.Position := 0;
l0:=0;
l1:=0;
l2:=0;
l3:=0;
if checkbox1.Checked = true then l1:=1;
if checkbox2.Checked = true then l2:=1;
if checkbox3.Checked = true then l3:=1;
if l1=1 then l0:=1;
if l2=1 then l0:=1;
if l3=1 then l0:=1;
if l0=1 then
begin
s:='';
for i := 1 to length(label8.Caption)-7 do
begin
s:=s+label8.Caption[i];
end;
label8.Caption:=s;
end;



if l1=1 then
begin
Memo.Text:=('');
memo.Lines.Add('ShowHeader=0');
memo.Lines.Add('Left=711');
memo.Lines.Add('Top=44');
memo.Lines.Add('Width=70');
memo.Lines.Add('Height=35');
memo.Lines.Add('Visible=1');
memo.Lines.Add('Names=Кнопка Счастья ^-^,Настройки');
memo.Lines.Add('');
memo.Lines.Add(';Happynes button ^-^');
memo.Lines.Add('%Events.OnCollect');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('@if $N=0 then @Break');
memo.Lines.Add(';Вібор рабочего слоя');
memo.Lines.Add('$lay=@Map.Object[$N].LayerID');
if cb1.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=51470100 then @Goto Stolb');
memo.Lines.Add('@if $lay=51470200 then @Goto Stolb');
memo.Lines.Add('@if $lay=51470300 then @Goto Stolb');
memo.Lines.Add('@if $lay=51470400 then @Goto Stolb');
memo.Lines.Add('@if $lay=51470500 then @Goto Stolb');
memo.Lines.Add('@if $lay=51470600 then @Goto Stolb');
end;
if cb2.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=65400000 then @Goto Ukos');
memo.Lines.Add('@if $lay=65300000 then @Goto Ukos');
end;
if cb3.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=71132410 then @Goto Der');
memo.Lines.Add('@if $lay=71132420 then @Goto Der');
memo.Lines.Add('@if $lay=71132430 then @Goto Der');
memo.Lines.Add('@if $lay=71132400 then @Goto Der');
memo.Lines.Add('@if $lay=71132100 then @Goto Der');
memo.Lines.Add('@if $lay=71132200 then @Goto Der');
memo.Lines.Add('@if $lay=71132300 then @Goto Der');
end;

if cb5.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=44550000 then @Goto Navi');
end;

if cb6.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=44210000 then @Goto Build');
end;

if cb7.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=44411100 then @Goto Alt');
end;

if cb8.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=31133000 then @Goto Bas');
end;

if cb9.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=31134000 then @Goto Kop');
end;

if cb10.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=44230000 then @Goto Ruin');
end;

if cb11.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=44220000 then @Goto Budu');
end;

if cb12.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=51326000 then @Goto Trp');
end;

if cb13.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=51327000 then @Goto Trm');
end;

if cb14.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=53700000 then @Goto Spor');
end;

if cb15.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=53710000 then @Goto DitMayd');
end;

if cb16.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=44412000 then @Goto Gar');
end;

if cb17.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=1000000005 then @Goto Korek');
memo.Lines.Add('@if $lay=1000000007 then @Goto Korek');
end;

if cb18.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=11310000 then @Goto Trian1');
end;

if cb4.Checked=true then
begin
num:=num+1;
memo.Lines.Add('@if $lay=31510000 then @Goto UrezV');
end;
memo.Lines.Add('@if $lay=99999999 then $h=777 else @break');
progressbar1.Max:=num+4;
//*****************************************************
if cb1.Checked=true then
begin
memo.Lines.Add('%stolb');
memo.Lines.Add('$an=@Dialog.select Вид ліхтаря:|Одинарний|Двойний|Декоративний');
memo.Lines.Add('@if $an=Одинарний then $l=2000 else');
memo.Lines.Add('@if $an=Двойний then $l=2100 else');
memo.Lines.Add('@if $an=Декоративний then $l=2200 else');
memo.Lines.Add('@Map.Selected.Copy');
memo.Lines.Add('EditPaste');
memo.Lines.Add('@Map.Selected.ChangeLayer id$l');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb2.Checked=true then
begin
memo.Lines.Add('%Ukos');
memo.Lines.Add('$t=@Dialog.Confirm Реверс?');
memo.Lines.Add('@if $t = 1 then @Map.Object[$N].Reverse');
memo.Lines.Add('@Map.Selected.Copy');
memo.Lines.Add('EditPaste');
memo.Lines.Add('@Map.Selected.ChangeLayer id90800000');
memo.Lines.Add('spbSplit');
memo.Lines.Add('$Nn=$N+1');
memo.Lines.Add('@Map.SelectObject $Nn');
memo.Lines.Add('@Map.Selected.delete');
memo.Lines.Add(';укриплен');
memo.Lines.Add('@if $lay=65300000 then @break');
memo.Lines.Add('@Map.SelectObject $N');
memo.Lines.Add('spbSplit');
memo.Lines.Add('$Nn=$N+3');
memo.Lines.Add('@Map.SelectObject $Nn');
memo.Lines.Add('@Map.Selected.MarkPoints ALL');
memo.Lines.Add('@Map.SelectObject $N');
memo.Lines.Add('spbJoin');
memo.Lines.Add('@SelectTab 2');
memo.Lines.Add('@Dialog.InfoBox 2000 Зробіть невидиму лінію');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb3.Checked=true then
begin
memo.Lines.Add('%Der');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('$an=@Dialog.select Кількість видів:|Один|Два');
memo.Lines.Add('$s=@Dialog.Ask Введіть вид дерев:');
memo.Lines.Add('@if $an=Два then $ss=@Dialog.Ask Введіть другий вид дерев:');
memo.Lines.Add('@if $an=Два then @Map.Object[$N].Parameter[ID89]=$ss');
memo.Lines.Add('$sv=@Dialog.Ask Висота:');
memo.Lines.Add('$sd=@Dialog.Ask Діаметр:');
memo.Lines.Add('$sm=@Dialog.Ask Відстань між деревами:');
memo.Lines.Add('@Map.Object[$N].Parameter[ID62]=$s');
memo.Lines.Add('@Map.Object[$N].Parameter[ID113]=$sv');
memo.Lines.Add('@Map.Object[$N].Parameter[ID60]=$sd');
memo.Lines.Add('@Map.Object[$N].Parameter[ID61]=$sm');
memo.Lines.Add('@if $an=Два then $TM=2 else $TM=1 ');
memo.Lines.Add('@if $lay=71132400 then $z1=$TM-0.9 else $z1=$TM+0.1');
memo.Lines.Add('@if $lay=71132400 then $z2=-1.1 else $z2=0.2');
memo.Lines.Add('@if $lay=71132400 then $z3=1.2 else $z3=2.2');
memo.Lines.Add('@if $lay=71132400 then $z4=-1.2 else $z4=-0.2');
memo.Lines.Add('@if $lay=71132400 then $z5=0 else $z5=1');
memo.Lines.Add('@Map.Selected.CreateCaptions ID62 1 0 1 1 -4.1 $z1');
memo.Lines.Add('@if $an=Два then @Map.Selected.CreateCaptions ID89 1 0 1 1 -4.1 $z2');
memo.Lines.Add('@Map.Selected.CreateCaptions ID113 1 0 1 1 3.1 $z3');
memo.Lines.Add('@Map.Selected.CreateCaptions ID60 1 0 1 1 3.1 $z4');
memo.Lines.Add('@Map.Selected.CreateCaptions ID61 1 0 1 3 5.6 $z5');
memo.Lines.Add('spbCollectLine');
memo.Lines.Add('@Map.SetCollectionLayer ID90100000');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb4.Checked=true then
begin
memo.Lines.Add('%UrezV');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('$s=@Dialog.Ask Введіть позначку:');
memo.Lines.Add('$ss=@Dialog.Ask Введіть дату:');
memo.Lines.Add('@Map.Selected.ChangeHeight $s');
memo.Lines.Add('@Map.Object[$N].Parameter[ID130]=$ss');
memo.Lines.Add('$an=@Dialog.select Як розміщувати:|Зправа|Зліва');
memo.Lines.Add('@if $an=Зправа then $l=3.8 else $l=-3.8');
memo.Lines.Add('@Map.Selected.CreateCaptions -2 1 0 1 1 $l 1.2');
memo.Lines.Add('@Map.Selected.CreateCaptions 130 1 0 1 1 $l -1.2');
memo.Lines.Add('spbCollectLine');
memo.Lines.Add('@Map.SetCollectionLayer ID90100000');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb5.Checked=true then
begin
memo.Lines.Add('%Navi');
memo.Lines.Add('spbCollectPoint');
memo.Lines.Add('spbCollectLine');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb6.Checked=true then
begin
memo.Lines.Add('%Build');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('$x=@Map.Object[$N].Point[1].X');
memo.Lines.Add('$y=@Map.Object[$N].Point[1].Y');
memo.Lines.Add('$z=@Map.Object[$N].Point[1].Z');
memo.Lines.Add('$s=@Map.NearestObject 0 $N $X $Y $Z');
memo.Lines.Add('@Map.DeselectAll');
memo.Lines.Add('@if $s<>0 then @Map.SelectObject $s');
memo.Lines.Add('@Map.SelectObject $N');
memo.Lines.Add('EditAlign');
memo.Lines.Add('@Map.DeselectAll');
memo.Lines.Add('@Map.SelectObject $N');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb7.Checked=true then
begin
memo.Lines.Add('%Alt');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('@Map.Object[$N].Parameter[ID119]=альт.');
memo.Lines.Add('@Map.Selected.CreateCaptions ID119 1 0 1 0 2');
memo.Lines.Add('%Script.Bnum_1-50.show');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb8.Checked=true then
begin
memo.Lines.Add('%Bas');
memo.Lines.Add('$t=@Dialog.Confirm Підписати?');
memo.Lines.Add('@if $t=0 then @break');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('@Map.Object[$N].Parameter[ID119]=бас.');
memo.Lines.Add('@Map.Selected.CreateCaptions ID119 1 0 1 1 0 0.5');
memo.Lines.Add('@SelectTab 2');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb9.Checked=true then
begin
memo.Lines.Add('%Kop');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('@Map.Object[$N].Parameter[ID119]=коп.');
memo.Lines.Add('@Map.Selected.CreateCaptions ID119 1 0 1 1 0 0.5');
memo.Lines.Add('@SelectTab 2');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb10.Checked=true then
begin
memo.Lines.Add('%Ruin');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('@Map.Object[$N].Parameter[ID119]=руїна');
memo.Lines.Add('@Map.Selected.CreateCaptions ID119 1 0 1 1 0 0.5');
memo.Lines.Add('@SelectTab 2');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb11.Checked=true then
begin
memo.Lines.Add('%Budu');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('@Map.Object[$N].Parameter[ID119]=буд.');
memo.Lines.Add('@Map.Selected.CreateCaptions ID119 1 0 1 1 0 0.5');
memo.Lines.Add('@SelectTab 2');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb12.Checked=true then
begin
memo.Lines.Add('%Trp');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('@Map.Object[$N].Parameter[ID119]=б.тр.');
memo.Lines.Add('@Map.Selected.CreateCaptions ID119 1 0 1 1 0 -1.3');
memo.Lines.Add('@SelectTab 2');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb13.Checked=true then
begin
memo.Lines.Add('%Trm');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('@Map.SelectObject $N');
memo.Lines.Add('@Map.Object[$N].Parameter[ID119]=б.тр.');
memo.Lines.Add('@Map.Selected.CreateCaptions ID119 1 0 1 1 0 0.5');
memo.Lines.Add('@Map.SetCollectionLayer ID51327200');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb14.Checked=true then
begin
memo.Lines.Add('%Spor');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('@Map.Object[$N].Parameter[ID119]=спорт.майд.');
memo.Lines.Add('@Map.Selected.CreateCaptions ID119 1 0 1 1 0 0.5');
memo.Lines.Add('@SelectTab 2');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb15.Checked=true then
begin
memo.Lines.Add('%DitMayd');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('@Map.Object[$N].Parameter[ID119]=дит.майд.');
memo.Lines.Add('@Map.Selected.CreateCaptions ID119 1 0 1 1 0 0.5');
memo.Lines.Add('@SelectTab 2');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;
if cb16.Checked=true then
begin
memo.Lines.Add('%Gar');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('@Map.Object[$N].Parameter[ID119]=гар.');
memo.Lines.Add('@Map.Object[$N].Parameter[ID99]=М');
memo.Lines.Add('@Map.Object[$N].Parameter[ID100]=1');
memo.Lines.Add('@Map.Selected.CreateCaptions ID99 1 0 1 2 0 0');
memo.Lines.Add('@Map.Selected.CreateCaptions ID119 1 0 1 0 0 0');
memo.Lines.Add('@selecttab 2');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;

if cb17.Checked=true then
begin
memo.Lines.Add('%Korek');
memo.Lines.Add('$s=@Dialog.Ask Зауваження:');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('@Map.Object[$N].Parameter[ID119]=$s');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;

if cb18.Checked=true then
begin
memo.Lines.Add('%Trian1');
memo.Lines.Add('$s=@Dialog.Ask Номер пункту:');
memo.Lines.Add('$ss=@Dialog.Ask Позначка пункту:');
memo.Lines.Add('$N=@Map.NextSelected 0');
memo.Lines.Add('@Map.Object[$N].Parameter[ID37]=$s');
memo.Lines.Add('@Map.Selected.ChangeHeight $ss');
memo.Lines.Add('@Map.Selected.CreateCaptions ID37 1 0 1 3 1.5 1.2');
memo.Lines.Add('@Map.Selected.CreateCaptions ID4 1 0 1 3 1.5 -1.2');
memo.Lines.Add('@break');
memo.Lines.Add(';');
progressbar1.Position := progressbar1.Position+1;
end;

memo.Lines.Add('{');
memo.Text:=memo.Text+'424D9A0B00000000000036000000280000001B0000001B0000000100200000000000640B000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF';
memo.Text:=memo.Text+'FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFF00';
memo.Text:=memo.Text+'FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000';
memo.Text:=memo.Text+'00000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF';
memo.Text:=memo.Text+'FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00000000007F7F7F00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF';
memo.Text:=memo.Text+'FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00';
memo.Text:=memo.Text+'FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000007F7F7F00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00';
memo.Text:=memo.Text+'FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF';
memo.Text:=memo.Text+'FF0000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000';
memo.Text:=memo.Text+'000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000';
memo.Text:=memo.Text+'0000000000000000000000000000000000000000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000';
memo.Text:=memo.Text+'0000000000000000000000000000000000000000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000F2FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000000000000000000000000000';
memo.Text:=memo.Text+'00000000000000000000000000000000000000000000000000007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000F2FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000000000000000000000000000';
memo.Text:=memo.Text+'00000000000000000000000000000000000000000000000000007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000F2FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000F2FF000000000000000000000000000000000000000000FFFFFF000000000000000000000000000000000000000000';
memo.Text:=memo.Text+'0000000000F2FF0000F2FF00000000007F7F7F000000000000000000FFFFFF00FFFFFF00FFFFFF0000F2FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000F2FF0000000000000000000000000000000000FFFFFF00000000000000000000000000000000000000000000000000';
memo.Text:=memo.Text+'000000000000000000F2FF0000F2FF007F7F7F00000000000000000000000000FFFFFF00FFFFFF0000F2FF00FFFFFF00FFFFFF00FFFFFF0000F2FF0000F2FF00000000000000000000000000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000000000000000000000000000';
memo.Text:=memo.Text+'000000F2FF0000F2FF0000000000000000000000000000000000FFFFFF0000F2FF00FFFFFF00FFFFFF00FFFFFF0000F2FF0000000000000000000000000000000000FFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000';
memo.Text:=memo.Text+'00000000000000F2FF0000F2FF00000000000000000000000000FFFFFF00FFFFFF0000F2FF00FFFFFF00FFFFFF0000F2FF00000000000000000000000000FFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007F7F7F00';
memo.Text:=memo.Text+'0000000000F2FF00000000000000000000000000FFFFFF0000F2FF00FFFFFF0000F2FF00000000000000000000000000FFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007F7F7F00';
memo.Text:=memo.Text+'000000000000000000F2FF0000000000000000000000000000F2FF00FFFFFF0000F2FF000000000000000000FFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007F7F7F00000000000000000000F2';
memo.Text:=memo.Text+'FF0000F2FF00000000000000000000F2FF000000000000F2FF000000000000F2FF00FFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007F7F7F0000000000000000000000';
memo.Text:=memo.Text+'00000000000000F2FF000000000000F2FF00000000000000000000F2FF0000F2FF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007F7F7F000000000000000000000000000000000000F2FF00';
memo.Text:=memo.Text+'00000000000000000000000000F2FF0000F2FF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000';
memo.Text:=memo.Text+'C3C3C300C3C3C300C3C3C300C3C3C3000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007F7F7F007F7F7F00C3C3C300C3C3C300C3C3';
memo.Text:=memo.Text+'C300C3C3C30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007F7F7F00C3C3C300C3C3';
memo.Text:=memo.Text+'C300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
memo.Text:=memo.Text+'00000000000000000000000000000000000000000000000000000000000000';
memo.Lines.Add('}');
progressbar1.Position := progressbar1.Position+1;
memo.Lines.Add('');
memo.Lines.Add('');
memo.Lines.Add('$a=@Dialog.Confirm Внимание! В случае сохранения настроек Кнопка Счастья будет пересобрана! Продолжать?');
memo.Lines.Add('@if $a=1 then @Run HB-Settings.exe');
memo.Lines.Add('{');
progressbar1.Position := progressbar1.Position+1;
memo.Text:=memo.Text+'424D9A0B00000000000036000000280000001B0000001B0000000100200000000000640B000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF';
memo.Text:=memo.Text+'FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5B50073737300686868006363630063636300626262006767670074747';
memo.Text:=memo.Text+'400B7B7B700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9F90071717100595959001E1E1E0027272700363636003B3B3B003C3C3C003B3B3B0036363600282828001E1E1E005757570074747';
memo.Text:=memo.Text+'400F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCDCDC007676760027272700272727003E3E3E003E3D3E003C3C3C003C3C3C003C3C3C003C3C3C003C3C3C003D3D3D003E3E3E0028282800262626';
memo.Text:=memo.Text+'007B7B7B00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CACACA00727272002C2C2C003A3A3A003E3E3E003C3C3C003B3B3B003B3C3B003B3C3B003B3B3B003B3B3B003B3C3B003B3B3B003C3C3C003E3E3E003B3B3B002929290076767600F9F9F9';
memo.Text:=memo.Text+'00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFDFDF004E4E4E0025252500404040003D3D3D003C3C3C003C3C3C003C3C3C003C3C3C0050505000A6A6A600505050003C3C3C003C3C3C003C3C3C003C3C3C003D3D3D0041414100262626008383830';
memo.Text:=memo.Text+'0E1E1E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA008F8F8F0023232300404040003F3F3F003C3C3C003B3B3B005D5D5D003D3D3D003B3B3B0099999900CECECE00979797003C3C3C003D3D3D005D5D5D003B3B3B003C3C3C003E3E3E00424242002C2C2C0097979700FAFAFA00FFFFFF0';
memo.Text:=memo.Text+'0FFFFFF00FFFFFF00FFFFFF009B9B9B002E2E2E00414141003E3E3E003D3D3D002A2A2A00B6B6B600CFCFCF00BABABA00ABABAB00D0D0D000CFCFCF00CFCFCF00ABABAB00BABABA00CFCFCF00B5B5B5002B2B2B003D3D3D003E3E3E003D3D3D002B2B2B00A3A3A300FFFFFF00';
memo.Text:=memo.Text+'FFFFFF00FFFFFF00FFFFFF00717171002A2A2A003E3E3E003D3D3D003C3C3C003C3C3C0080808000D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D1007E7E7E003D3D3D003D3D3D003D3D3D003F3F3F002B2B2B0074747400FFFFFF00FFFFFF00FFFFFF00DFDFDF00';
memo.Text:=memo.Text+'262626003E3E3E003D3D3D003D3D3D00343434003535350086868600D3D3D300D4D4D400B9B9B900696969002020200069696900B9B9B900D4D4D400D3D3D3008787870036363600333333003D3D3D003E3E3E003E3E3E0027272700E3E3E300FFFFFF00FFFFFF00C1C1C1002';
memo.Text:=memo.Text+'B2B2B003E3E3E003C3C3C0020202000BEBEBE009D9D9D00DBDBDB00D6D6D600C1C1C1003A3A3A003C3C3C003C3C3C003C3C3C003A3A3A00C1C1C100D6D6D600DBDBDB009D9D9D00BEBEBE00202020003C3C3C003D3D3D0030303000CACACA00FFFFFF00FFFFFF00B7B7B700393939003D3D3D003D3D3D008';
memo.Text:=memo.Text+'4848400DBDBDB00DADADA00DADADA00BBBBBB003B3B3B003D3D3D0073737300AFAFAF00737373003C3C3C003B3B3B00BBBBBB00DADADA00DADADA00DCDCDC00848484003D3D3D003D3D3D003E3E3E00BEBEBE00FFFFFF00FFFFFF00B2B2B2003C3C3C003D3D3D003C3C3C003C';
memo.Text:=memo.Text+'3C3C0053535300DEDEDE00DDDDDD006D6D6D003D3D3D0075757500B1B1B100B1B1B100B1B1B100757575003C3C3C006C6C6C00DDDDDD00DEDEDE004F4F4F003C3C3C003C3C3C003D3D3D0042424200B8B8B800FFFFFF00FFFFFF00B3B3B300404040003C3C3C003C3C3C003B3B3B003B3B3B00E6E6E600DF';
memo.Text:=memo.Text+'DFDF001C1C1C003B3B3B00B3B3B300B2B2B200B2B2B200B2B2B200B4B4B4003B3B3B001D1D1D00DFDFDF00E6E6E6003C3C3C003B3B3B003C3C3C003B3B3B0046464600B7B7B700FFFFFF00FFFFFF00C6C6C600454545003D3D3D003C3C3C003C3C3C004E4E4E00E3E3E300E1E';
memo.Text:=memo.Text+'1E1006C6C6C003D3D3D0076767600B6B6B600B6B6B600B6B6B600777777003D3D3D006B6B6B00E1E1E100E3E3E3004E4E4E003C3C3C003C3C3C003E3E3E0049494900CBCBCB00FFFFFF00FFFFFF00D9D9D90048484800404040003C3C3C0087878700E6E6E600E4E4E400E4E4E400C4C4C4003B3B3B003D3';
memo.Text:=memo.Text+'D3D0077777700BABABA00777777003D3D3D003B3B3B00C4C4C400E4E4E400E4E4E400E6E6E600888888003D3D3D00444444004D4D4D00DBDBDB00FFFFFF00FFFFFF00F3F3F3003D3D3D004F4F4F004242420022222200CDCDCD00AEAEAE00EDEDED00E8E8E800D1D1D1003F3F';
memo.Text:=memo.Text+'3F004242420042424200424242003F3F3F00D1D1D100E8E8E800EEEEEE00A7A7A700CCCCCC0022222200454545005353530041414100F6F6F600FFFFFF00FFFFFF00FEFEFE00383838005656560045454500444444003C3C3C003D3D3D0093939300EAEAEA00EAEAEA00CBCBCB0076767600212121007676';
memo.Text:=memo.Text+'7600CBCBCB00EAEAEA00EAEAEA00939393003E3E3E003C3C3C00444444004E4E4E005959590037373700FFFFFF00FFFFFF00FFFFFF00FFFFFF00ABABAB0040404000525252004646460043434300434343008C8C8C00ECECEC00EDEDED00ECECEC00ECECEC00ECECEC00ECECE';
memo.Text:=memo.Text+'C00ECECEC00EDEDED00ECECEC008D8D8D004343430042424200494949005A5A5A0044444400A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEE004C4C4C005A5A5A00515151004647460033333300CBCBCB00EFEFEF00D6D6D600C2C2C200EEEEEE00EEEEEE00EFEFEF00C2C2C200D1D1D100EFEFE';
memo.Text:=memo.Text+'F00CCCCCC00343434004A4A4A00535353005B5B5B0048484800EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F0003D3D3D005F5F5F00585858004C4C4C0044444400666666004545450043434300A7A7A700EFEFEF00A7A7A7004343430045454500666666';
memo.Text:=memo.Text+'00454545004E4E4E0059595900606060004C4C4C00F0F0F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D00414141006161610058585800535353004A4A4A0046464600454545005A5A5A00C1C1C1005B5B5B0044444400464646004C4C4C00545454005A5A5A00626262';
memo.Text:=memo.Text+'0043434300DFDFDF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F8008F8F8F003F3F3F00616161005B5B5B00585858005454540051515100505050004E4E4E00505050005050500055555500595959005C5C5C00616161003F3F3F0';
memo.Text:=memo.Text+'08A8A8A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6F6004F4F4F004949490062626200626262005F5F5F005E5E5E005F5F5F005F5F5F00606060006262620062626200494949004C4C4C00F6F6F600FFFFFF00FFFFFF00FFFFFF0';
memo.Text:=memo.Text+'0FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9F900AEAEAE00424242004A4A4A005C5C5C006161610063636300616161005D5D5D004C4C4C0041414100AAAAAA00F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00';
memo.Text:=memo.Text+'FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEBEB00DADADA00D0D0D000DADADA00EBEBEB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00';
memo.Text:=memo.Text+'FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00';
memo.Text:=memo.Text+'}';
progressbar1.Position := progressbar1.Position+1;
memo.Lines.SaveToFile(s+'HB.tlb');
progressbar1.Position := progressbar1.Position+1;


//*****************************************************
end;
if l2=1 then
begin
if fileexists(s+'BNum_one.tlb')=true then windows.DeleteFile(pWidechar(s+'BNum_one.tlb'));
if fileexists(s+'BNum_1.tlb')=true then windows.DeleteFile(pWidechar(s+'BNum_1.tlb'));
if fileexists(s+'BNum_2.tlb')=true then windows.DeleteFile(pWidechar(s+'BNum_2.tlb'));
if fileexists(s+'BNum_calc.tlb')=true then windows.DeleteFile(pWidechar(s+'BNum_calc.tlb'));
if radiobutton1.Checked = true then begin memo.Lines.LoadFromFile('BNf'); memo.Lines.SaveToFile(s+'BNum_one.tlb'); end
else if radiobutton2.Checked = true then begin memo.Lines.LoadFromFile('BN1'); memo.Lines.SaveToFile(s+'BNum_1.tlb'); memo.Lines.LoadFromFile('BN2'); memo.Lines.SaveToFile(s+'BNum_2.tlb'); end
else if radiobutton3.Checked = true then begin memo.Lines.LoadFromFile('BC'); memo.Lines.SaveToFile(s+'BNum_calc.tlb'); end;
end;


if l3=1 then
begin
memo.Lines.LoadFromFile('bt');
memo.Lines.SaveToFile(s+'Building-Type_2.tlb');
end;

winExec(PAnsiChar(label8.Caption),SW_SHOW);
close;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.cb10MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('При сборе на выбранном слое автоматически подписывает');
Memo1.Lines.Add('собранный объект.');
end;

procedure TForm1.cb10MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb11MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('При сборе на выбранном слое автоматически подписывает');
Memo1.Lines.Add('собранный объект.');
end;

procedure TForm1.cb11MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb12MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('При сборе на выбранном слое автоматически подписывает');
Memo1.Lines.Add('собранный объект.');
end;

procedure TForm1.cb12MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb13MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('При сборе на выбранном слое автоматически подписывает');
Memo1.Lines.Add('собранный объект и выбирает слой сбора со знаком');
Memo1.Lines.Add('стрелки трансформатора, остается поставить.');
end;

procedure TForm1.cb13MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb14MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('При сборе на выбранном слое автоматически подписывает');
Memo1.Lines.Add('собранный объект.');
end;

procedure TForm1.cb14MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb15MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('При сборе на выбранном слое автоматически подписывает');
Memo1.Lines.Add('собранный объект.');
end;

procedure TForm1.cb15MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb16MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('При сборе на выбранном слое автоматически подписывает');
Memo1.Lines.Add('собранный объект.');
end;

procedure TForm1.cb16MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;


procedure TForm1.cb1MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('Упрощает сбор столбов.');
Memo1.Lines.Add('При сборе столбов выдает запрос на добавление фонаря в виде');
Memo1.Lines.Add('всплывающего окошка, где дается несколько видов фонарей на');
Memo1.Lines.Add('выбор. В случае отсутствия фанаря нажмите "Отмена".');
end;

procedure TForm1.cb1MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb2MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('Упрощает сбор укосов.');
Memo1.Lines.Add('Предлагает автореверс и автоматически достраивает линию контур.');
Memo1.Lines.Add('При сборе укрепленных укосов необходимо сделать линию невидимой');
Memo1.Lines.Add('нажав правой кнопкой "Невидимая" (она автоматически выделяется).');
end;

procedure TForm1.cb2MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb3MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('Упращает сбор деревьев.');
Memo1.Lines.Add('Просит ввод необходимых данных в всплывающие окошки,');
Memo1.Lines.Add('после чего создает необходимые подписи. Необходимо');
Memo1.Lines.Add('дорисовать черную линию (она автоматически выбрана)');
end;

procedure TForm1.cb3MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb4MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('Упращает сбор урезов воды.');
Memo1.Lines.Add('Просит ввод необходимых данных в всплывающие окошки,');
Memo1.Lines.Add('после чего создает необходимые подписи. Необходимо');
Memo1.Lines.Add('дорисовать черную линию (она автоматически выбрана)');
end;

procedure TForm1.cb4MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb18MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('Упращает сбор геодезических пунктов.');
Memo1.Lines.Add('Просит ввод необходимых данных в всплывающие окошки,');
Memo1.Lines.Add('после чего создает необходимые подписи. Необходимо');
Memo1.Lines.Add('дорисовать черную линию (она автоматически выбрана)');
end;

procedure TForm1.cb18MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb5MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('После сбора навеса автоматически выбирает');
Memo1.Lines.Add('линию для создания столбов.');
Memo1.Lines.Add('Мелоч, а приятно )');
end;

procedure TForm1.cb5MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb6MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('ЭКСПЕРЕМЕНТАЛЬНАЯ ВЕРСИЯ!');
Memo1.Lines.Add('');
Memo1.Lines.Add('Доставляет точки в линии домов при сборе. Исключает ошибки.');
Memo1.Lines.Add('Но иногда и не исключает. Работаем над этим.');
end;

procedure TForm1.cb6MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb17MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Запрос на ввод замечаний в сплывающее окошко.');
Memo1.Lines.Add('Удобно - но долго.');
end;

procedure TForm1.cb17MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb7MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('При сборе на выбранном слое автоматически подписывает');
Memo1.Lines.Add('собранный объект.');
end;

procedure TForm1.cb7MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb8MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('При сборе на выбранном слое автоматически подписывает');
Memo1.Lines.Add('собранный объект.');
end;

procedure TForm1.cb8MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.cb9MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('При сборе на выбранном слое автоматически подписывает');
Memo1.Lines.Add('собранный объект.');
end;

procedure TForm1.cb9MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked = true then
begin
timer1.Enabled := true;
cb1.Enabled := true;
cb2.Enabled := true;
cb3.Enabled := true;
cb4.Enabled := true;
cb5.Enabled := true;
cb6.Enabled := true;
cb7.Enabled := true;
cb8.Enabled := true;
cb9.Enabled := true;
cb10.Enabled := true;
cb11.Enabled := true;
cb12.Enabled := true;
cb13.Enabled := true;
cb14.Enabled := true;
cb15.Enabled := true;
cb16.Enabled := true;
cb17.Enabled := true;
cb18.Enabled := true;
end
else if checkbox1.Checked = false then
begin
cb1.Enabled := false;
cb2.Enabled := false;
cb3.Enabled := false;
cb4.Enabled := false;
cb5.Enabled := false;
cb6.Enabled := false;
cb7.Enabled := false;
cb8.Enabled := false;
cb9.Enabled := false;
cb10.Enabled := false;
cb11.Enabled := false;
cb12.Enabled := false;
cb13.Enabled := false;
cb14.Enabled := false;
cb15.Enabled := false;
cb16.Enabled := false;
cb17.Enabled := false;
cb18.Enabled := false;
cb1.Checked := false;
cb2.Checked := false;
cb3.Checked := false;
cb4.Checked := false;
cb5.Checked := false;
cb6.Checked := false;
cb7.Checked := false;
cb8.Checked := false;
cb9.Checked := false;
cb10.Checked := false;
cb11.Checked := false;
cb12.Checked := false;
cb13.Checked := false;
cb14.Checked := false;
cb15.Checked := false;
cb16.Checked := false;
cb17.Checked := false;
cb18.Checked := false;
end;

end;

procedure TForm1.CheckBox1MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('Позволяет сильно упростить сбор объектов:');
Memo1.Lines.Add(' автоматически достраивать составные оьъекты;');
Memo1.Lines.Add(' выполнять автоматические переходы между шаблонами сбора а так же слоями;');
Memo1.Lines.Add(' автоматически подписывать объекты.');
end;

procedure TForm1.CheckBox1MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if checkbox2.Checked = true then
begin
radiobutton1.Enabled := true;
radiobutton2.Enabled := true;
radiobutton3.Enabled := true;
end
else if checkbox2.Checked = false then
begin
radiobutton1.Enabled := false;
radiobutton2.Enabled := false;
radiobutton3.Enabled := false;
radiobutton1.Checked := false;
radiobutton2.Checked := false;
radiobutton3.Checked := false;
end;
end;

procedure TForm1.CheckBox2MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('Позволяет быстро выставлять нумерацию домов:');
Memo1.Lines.Add(' набор от 1 до 100 (одной строкой);');
Memo1.Lines.Add(' набор от 1 до 100 (разбит по 50);');
Memo1.Lines.Add(' набор вида калькулятора.');
end;

procedure TForm1.CheckBox2MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.CheckBox3MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('Удобный набор с параметрами материалов домов.');
Memo1.Lines.Add('Позволяет быстро выбрать нужный набор параметров. Имеет ограничение,');
Memo1.Lines.Add('которое позволяет набору работать только со слоями "Дома", "Церкви" и');
Memo1.Lines.Add('"Дома трансформаторные" дабы исключить возможность испортить классификатор.');
end;

procedure TForm1.CheckBox3MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.FormCreate(Sender: TObject);
var
i,a,b:integer;
s,ss:string;
begin
i:=0;
if fileexists('C:/Digitals/Ged.exe')=true then
begin
label7.Caption := 'Найден';
label8.Caption:='C:/Digitals/Ged.exe';
//==================================================================================================
if fileexists('C:/Digitals/HB.tlb')=true then
begin
memo.Lines.LoadFromFile('C:/Digitals/HB.tlb');
repeat
i:=i+1;
s:=s+memo.Text[i]
until memo.Text[i]+memo.Text[i+1]+memo.Text[i+2]+memo.Text[i+3] = 'brea';
memo.Text:='';
memo.Text:=s;
s:='';


end;
//==================================================================================================
end
else if fileexists('C:/Digitals/Ged.exe')=false then
begin
label7.Caption := 'Не найден';
speedbutton1.Visible:=true;
bitbtn1.Enabled:=false;
end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
form1.AlphaBlendvalue := 150;
form2.Visible:=true;
form1.Enabled:=false;
end;

procedure TForm1.RadioButton1MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Добавляет набор с цифрами домов.');
Memo1.Lines.Add('Набор содержит цифры в один ряд от 1 до 100 плюс буквы.');
end;

procedure TForm1.RadioButton1MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.RadioButton2MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Добавляет набор с цифрами домов.');
Memo1.Lines.Add('Набор содержит цифры в два ряда от 1 до 100 плюс буквы.');
end;

procedure TForm1.RadioButton2MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.RadioButton3MouseEnter(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('Добавляет набор с цифрами домов');
Memo1.Lines.Add('Содержит в себе цифры от 0 до 9, буквы и дробь.');
Memo1.Lines.Add('Удобен при необходимости нумерации домов вида "13г/13в".');
Memo1.Lines.Add('Не заменяет набранного номера.');
end;

procedure TForm1.RadioButton3MouseLeave(Sender: TObject);
begin
Memo1.text := '';
Memo1.Lines.Add('');
Memo1.Lines.Add('');
Memo1.Lines.Add('Включите или выключите наборы/компоненты.');
Memo1.Lines.Add('Для получения подсказки наведите на компонент.');
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
s:string;
begin
If opendialog1.Execute then
begin
s := Form1.OpenDialog1.FileName;
label8.Caption:=s;
speedbutton1.Visible:=false;
label7.Caption:='Найден';
bitbtn1.Enabled:=true;
end;


//
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
t,a,i:integer;
begin
a:=539;
if form1.ClientWidth < a then
begin
i:= ((550-Form1.Clientwidth)div 8);
Form1.Clientwidth := form1.ClientWidth+i;
Form1.Left := form1.Left-(i div 2);
end
else timer1.Enabled := false;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
t,a,i:integer;
begin
//if form1.ClientWidth < 3 then begin timer1.Enabled := true; timer2.Enabled := false; end;
a:=0;
if form1.ClientWidth > 1 then
begin
i:= ((550-Form1.Clientwidth));
if i<1 then i := 1;
i := 1;
Form1.Clientwidth := form1.ClientWidth-i;
//Form1.Left := form1.Left+(i div 2);
end
end;

end.

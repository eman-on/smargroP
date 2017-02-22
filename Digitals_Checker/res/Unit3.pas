unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Main;

{$R *.dfm}

procedure TForm3.Image1Click(Sender: TObject);
begin
form1.Enabled:=true;
form1.AlphaBlendValue:=240;
form3.Visible:=false;
end;

end.

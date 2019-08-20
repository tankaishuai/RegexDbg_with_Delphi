unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Contnrs, RegExpr;

type
  TForm1 = class(TForm)
    edtPatten: TEdit;
    edtText: TEdit;
    btnMatch: TButton;
    edtResult: TEdit;
    procedure btnMatchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnMatchClick(Sender: TObject);
var
  RegExpr: TRegExpr;
  ret : string;
  i : integer;
  i2 : integer;
  tmp : string;
begin
  edtResult.Text := '';
  RegExpr := TRegExpr.Create;
  RegExpr.Expression := edtPatten.Text;
  if RegExpr.Exec(edtText.Text) then
  begin
     ret := RegExpr.Match[0];
     i := 0;
     //while (i >= 0) and (i < 1) do
     //   tmp := RegExpr.Match[i];
     //  if length(tmp) = 0 then
     //   begin
     //     i := -1;
     //   end
     //   else
     //   begin
     //     ret := concat(ret, #13, tmp);
     //     i2 := i + 1;
     //     i := i2;
     //   end;
     //end;
     edtResult.Text := ret;
  end;
  //RegExpr.Destroy;
  RegExpr.Free;
end;

end.


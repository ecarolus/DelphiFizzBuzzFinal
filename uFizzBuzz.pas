unit uFizzBuzz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure  fizzbuzz;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  memo1.Clear;
  fizzbuzz;
end;

procedure TForm1.fizzbuzz;
var
  cnt : integer;
  function fizzOrBuzz(i: integer): string;
  begin
    if ((i mod 3) + (i mod 5))=0 then //or  (i mod 15)
      result := 'FIZZBUZZ'
    else if (i mod 3) = 0 then
      result := 'FIZZ'
    else if (i mod 5) = 0 then
      result := 'BUZZ'
    else
      result := inttostr(i);
  end;
begin
  for cnt := 1 to 100 do
  begin
    memo1.Lines.add(fizzOrBuzz(cnt));
  end
end;



end.

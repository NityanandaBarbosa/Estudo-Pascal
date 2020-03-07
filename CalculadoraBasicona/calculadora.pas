unit calculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSoma: TButton;
    btnSubt: TButton;
    btnMultip: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubtClick(Sender: TObject);
    procedure btnMultipClick(Sender: TObject);
  private
         var x: Double;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnSomaClick(Sender: TObject);

begin
     x := (StrToFloat(Edit1.Text)) + (StrToFloat(Edit2.Text));
     Edit3.Text := x.ToString();
end;

procedure TForm1.btnSubtClick(Sender: TObject);
begin
     x := (StrToFloat(Edit1.Text)) + (StrToFloat(Edit2.Text));
     Edit3.Text := x.ToString();
end;

procedure TForm1.btnMultipClick(Sender: TObject);
begin
     x := (StrToFloat(Edit1.Text)) + (StrToFloat(Edit2.Text));
     Edit3.Text := x.ToString();
end;

end.


unit calculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btn1: TButton;
    btnClean: TButton;
    btn0: TButton;
    btnPonto: TButton;
    btnMultipl: TButton;
    btnBack: TButton;
    btnSoma: TButton;
    btnSub: TButton;
    btnResult: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnDiv: TButton;
    edtNumeros: TEdit;
    Label1: TLabel;
    procedure btn0Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnCleanClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnPontoClick(Sender: TObject);
    procedure btnResultClick(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
  private
         var resultado, aux : Double;
             ultOperador : String;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btn1Click(Sender: TObject);
begin
   edtNumeros.text := edtNumeros.text+'1';
end;

procedure TForm1.btn0Click(Sender: TObject);
begin
  edtNumeros.text := edtNumeros.text+'0';
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  edtNumeros.text := edtNumeros.text+'2';
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  edtNumeros.text := edtNumeros.text+'3';
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  edtNumeros.text := edtNumeros.text+'4';
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  edtNumeros.text := edtNumeros.text+'5';
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  edtNumeros.text := edtNumeros.text+'6';
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  edtNumeros.text := edtNumeros.text+'7';
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  edtNumeros.text := edtNumeros.text+'8';
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  edtNumeros.text := edtNumeros.text+'9';
end;

procedure TForm1.btnBackClick(Sender: TObject);
var stringAux : string;
begin
  stringAux := edtNumeros.Text;
  Delete(stringAux,Length(stringAux),1);
  edtNumeros.Text := stringAux;
end;

procedure TForm1.btnCleanClick(Sender: TObject);
begin

end;

procedure TForm1.btnPontoClick(Sender: TObject);
var
  stringAux : string;
  count : Integer;
  ponto : Boolean;
begin
  stringAux := edtNumeros.Text;
  for count := 1 to Length(stringAux) do
  begin
       if stringAux[count] = '.'  then
         begin
            ponto := False;
            Break;
         end
       else
         begin
             ponto := True
         end;
  end;
  if ponto = True then
    edtNumeros.text := edtNumeros.text+'.';
end;

procedure TForm1.btnResultClick(Sender: TObject);
begin
  aux := resultado;
   if ultOperador = '+' then
     begin
       btnSomaClick(btnSoma);
       //aux := 0;
     end
   else if ultOperador = '-' then
     Begin
       btnSubClick(btnSub);
       resultado := resultado*(-1);
       //aux := 0;
     end
   else if ultOperador = '/' then
     begin
        btnDivClick(btnDiv);
        //aux := 0
     end;
   edtNumeros.Text := FloatToStr(resultado);
   aux := 0
end;

procedure TForm1.btnSomaClick(Sender: TObject);
begin
  resultado := StrToFloat(edtNumeros.Text) + aux;
  edtNumeros.Text := '';
  ultOperador := '+';
end;

procedure TForm1.btnSubClick(Sender: TObject);
begin
  resultado := StrToFloat(edtNumeros.Text) - aux;
  edtNumeros.Text := '';
  ultOperador := '-';
end;

procedure TForm1.btnDivClick(Sender: TObject);
begin
  if aux = 0 then
    begin
     resultado := StrToFloat(edtNumeros.Text);
    end
  else
    begin
      resultado := aux / StrToFloat(edtNumeros.Text) ;
    end;
  edtNumeros.Text := '';
  ultOperador := '/';
end;

end.


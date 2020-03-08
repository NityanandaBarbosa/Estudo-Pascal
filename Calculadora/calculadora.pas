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
    btnPorcent: TButton;
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
  private
         var resultado, aux : Double;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }



end.


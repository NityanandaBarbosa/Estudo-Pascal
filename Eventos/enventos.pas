unit enventos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmTela }

  TfrmTela = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
         bFechar : Boolean;
  public

  end;

var
  frmTela: TfrmTela;

implementation

{$R *.lfm}

{ TfrmTela }

procedure TfrmTela.FormDblClick(Sender: TObject);
begin
     ShowMessage('Evento 2xClicks');
end;

procedure TfrmTela.FormDestroy(Sender: TObject);
begin
     ShowMessage('Destroy it!!');
end;

procedure TfrmTela.FormShow(Sender: TObject);
begin
     ShowMessage('OnShow');
end;

procedure TfrmTela.FormActivate(Sender: TObject);
begin
     ShowMessage('OnActive');
end;

procedure TfrmTela.Button1Click(Sender: TObject);
begin
     bFechar := true;
     Close;
end;

procedure TfrmTela.FormClick(Sender: TObject);
begin
     //ShowMessage('Evento OnClick');
end;

procedure TfrmTela.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
     ShowMessage('Tá fechando');
end;

procedure TfrmTela.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
     CanClose := bFechar;
end;

procedure TfrmTela.FormCreate(Sender: TObject);
begin
     ShowMessage('OnCreate');
     bFechar := false;
end;

end.


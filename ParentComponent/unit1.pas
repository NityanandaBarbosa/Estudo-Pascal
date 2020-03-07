unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    btnOK: TButton;
    Button2: TButton;
    chkPainel: TCheckBox;
    edtMensagem: TEdit;
    Edit2: TEdit;
    Panel1: TPanel;
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

end.


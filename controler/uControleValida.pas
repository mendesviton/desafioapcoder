unit uControleValida;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage,uUtil, uCadPadrao, Vcl.Buttons,Vcl.Menus, Vcl.ExtCtrls, Vcl.ExtDlgs, Vcl.StdCtrls,uControleSQL;

  type
    TValidaCampo = class
      private
      public
        procedure pValidaNome(edNome:TEdit);
    end;
implementation

{ TValidaCampo }

procedure TValidaCampo.pValidaNome(edNome: TEdit);
var
contador:integer;
begin
   for contador:= 1 to length(trim(edNome.Text)) do
    if trim(edNome.Text)[contador]  in ['0'..'9'] then
    begin
      MessageDlg('Foi digitado um número no campo nome',mtWarning,[mbOK],1 );
      edNome.SetFocus;
      edNome.Text:=EmptyStr;
      exit;
    end;

    if trim(edNome.Text) = EmptyStr then
      begin
       MessageDlg('Foi digitado um número no campo nome',mtWarning,[mbOK],1 );
       edNome.SetFocus;
      end;




end;

end.

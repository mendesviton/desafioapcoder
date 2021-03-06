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
       function pValidaCod(edCodigo:Tedit):boolean;
    end;
implementation

{ TValidaCampo }

function TValidaCampo.pValidaCod(edCodigo: Tedit):boolean;
var
contador:integer;
begin
 if (trim(edCodigo.Text)<> EmptyStr) then
    begin
      for contador:= 1 to length(trim(edCodigo.Text)) do
          if not((edCodigo.Text)[contador]  in ['1'..'9'])  then
          begin
            MessageDlg('Apenas n?meros acima de 1 no campo c?digo',mtWarning,[mbOK],1 );
            edCodigo.Text:=EmptyStr;
            edCodigo.SetFocus;
            result:=false ;
            exit;
          end
          else
          result:=true;
    end
    else
     begin
      MessageDlg('Apenas n?meros acima de 1 no campo c?digo',mtWarning,[mbOK],1 );
      edCodigo.Text:=EmptyStr;
      edCodigo.SetFocus;
      result:=false ;
      exit;
     end;




end;

procedure TValidaCampo.pValidaNome(edNome: TEdit);
var
contador:integer;
begin
   for contador:= 1 to length(trim(edNome.Text)) do
    if trim(edNome.Text)[contador]  in ['0'..'9'] then
    begin
      MessageDlg('Foi digitado um n?mero no campo nome',mtWarning,[mbOK],1 );
      edNome.SetFocus;
      edNome.Text:=EmptyStr;
      exit;
    end;

    if trim(edNome.Text) = EmptyStr then
      begin
       MessageDlg('Campo obrigat?rio ',mtWarning,[mbOK],1 );
       edNome.SetFocus;
      end;




end;

end.

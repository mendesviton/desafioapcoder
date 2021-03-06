unit uUtil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.ExtDlgs, Vcl.StdCtrls,pngimage;

type
  TUtil = class
    private
    public
    class function PngToBmp(Png : TPngImage) : TBitmap;
    function MessageDlg2(const prMensagem: String; prTipo: TMsgDlgType;
    prBotoes: array of TMsgDlgBtn; prCaption: Array of String;
    prBotaoDefault: integer; prHelp: LongInt): TModalResult;
    function fTamLetraPadrao2(Font: TFont; const prCaption: String): integer;
    class function FConverteData(prdate:String):String;
    class function FConverteVirgula(prvalor:string):String;


  end;
  var
  FButtonNames: array [TMsgDlgBtn] of string = (
  'Yes',
  'No',
  'OK',
  'Cancel',
  'Abort',
  'Retry',
  'Ignore',
  'All',
  'NoToAll',
  'YesToAll',
  'Help'{$IFNDEF VER150},
  'Close'{$ENDIF});
implementation

{ TUtil }


class function TUtil.PngToBmp(Png: TPngImage): TBitmap;
begin
    Result := TBitmap.Create;
    Result.Assign(Png);
end;

function TUtil.MessageDlg2(const prMensagem: String; prTipo: TMsgDlgType;
  prBotoes: array of TMsgDlgBtn; prCaption: Array of String;
  prBotaoDefault: integer; prHelp: LongInt): TModalResult;
var
 wConta, wBotao: integer; { Vari?vel que indicar? o bot?o atual }
 wButton: TButton;
 wTamTotBotoes: integer;
 wLeft: integer;
 wIBtn: integer;
 wCjtoBtn: TMsgDlgButtons;
 wEspaco: integer;

const
 C_ESPACO = 5;

begin
 wCjtoBtn := [];
 for wIBtn := 0 to Length(prBotoes) - 1 do
  Include(wCjtoBtn, prBotoes[wIBtn]);

 wBotao := 0;
 wTamTotBotoes := 0;

 with CreateMessageDialog(prMensagem, prTipo, wCjtoBtn) do
  try
   // Ajusta o tamanho e posi??o dos bot?es
   for wConta := 0 to ComponentCount - 1 do
   begin
    if Components[wConta] is TButton then
    begin
     { Altera o Caption dos Bot?es }
     wButton := TButton(Components[wConta]);
     wButton.Width := fTamLetraPadrao2(wButton.Font, '    ' + prCaption[wBotao]
       + '    ');
     wTamTotBotoes := wTamTotBotoes + wButton.Width;
     Inc(wBotao);
    end;
   end;
   if (wTamTotBotoes + (C_ESPACO * (wBotao + 1)) + C_ESPACO) > Width then
   begin
    Width := (wTamTotBotoes + (C_ESPACO * (wBotao + 1)) + C_ESPACO);
    wEspaco := C_ESPACO;
   end
   else
   begin
    wEspaco := (Width - wTamTotBotoes) div (wBotao + 1);
   end;
   wBotao := 0;
   wLeft := wEspaco;

   for wIBtn := 0 to Length(prBotoes) - 1 do
   begin
    wConta := 0;

    while wConta <= ComponentCount - 1 do
    begin
     if Components[wConta] is TButton then
     begin
      { Altera o Caption dos Bot?es }
      wButton := TButton(Components[wConta]);

      if wButton.Name = FButtonNames[prBotoes[wIBtn]] then
      begin
       wButton.Width := fTamLetraPadrao2(wButton.Font,
         '    ' + prCaption[wBotao] + '    ');
       wButton.Left := wLeft;
       wLeft := wLeft + wButton.Width + wEspaco;
       wButton.Caption := prCaption[wBotao];
       wButton.TabOrder := wBotao;
       Inc(wBotao);

       { Faz o Bot?o ficar Default conforme o par?metro }
       if (wButton.Caption = prCaption[prBotaoDefault]) then
        ActiveControl := (Components[wConta] as TWinControl);

       Break;
      end;
     end;

     Inc(wConta);
    end;
   end;

   case prTipo of
    mtWarning:
     Caption := 'Aten??o!';
    mtError:
     Caption := 'Erro!';
    mtInformation:
     Caption := 'Informa??o!';
    mtConfirmation:
     Caption := 'Confirma??o!';
   end;
   Position := poScreenCenter;
   Result := ShowModal;
  finally
   Free;
  end;

end;
class function TUtil.FConverteData(prdate: String): String;
var
  wMes:string;
  wDia:String;
  wAno:String;
begin
 wDia := Copy(prdate,0,2);
 wMes := Copy(prdate,4,2);
 wAno := Copy(prdate,7,4);

 result:=( wMes+'/'+wDia+'/'+wAno )
 end;

class function TUtil.FConverteVirgula(prvalor:String): String;
var
wCont:integer;
begin
 for wCont := 0 to Length(prvalor) do
     begin
       if prvalor[wCont] = ',' then
          prvalor[wCont] := '.'
     end;

result:=(prvalor);

end;

function TUtil.fTamLetraPadrao2(Font: TFont; const prCaption: String): integer;
var
 wCalculaTamanho: TBitmap;
 I: integer;

begin
 wCalculaTamanho := nil;

 try
  wCalculaTamanho := TBitmap.Create;
  wCalculaTamanho.Canvas.Font := Font;

  Result := 0;

  for I := 1 to Length(prCaption) do
   Result := Result + wCalculaTamanho.Canvas.TextWidth(prCaption[I]);

  wCalculaTamanho.FreeImage;
  wCalculaTamanho.ReleaseHandle;
 finally
  FreeAndNil(wCalculaTamanho);
 end;
end;

end.

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
  end;
implementation

{ TUtil }

class function TUtil.PngToBmp(Png: TPngImage): TBitmap;
begin
    Result := TBitmap.Create;
    Result.Assign(Png);
end;

end.

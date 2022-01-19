{
 10/12/2021 - Vitor Daniel - Criação da classe uConexãoBanco
}
unit uConexaoBanco;

interface

uses

  SqlExpr, inifiles, SysUtils, Forms;



  type
   TBDConnection = class
    wLogErro : String;

    private
     FDBConnection : TSQLConnection;
     function GetConnection : TSQLConnection;

    public
     constructor Create;
     destructor  Destroy; override;
     property BDConnection : TSQLConnection   read GetConnection;
   end;


implementation

{ TBDConnection }

{ Vitor Daniel - 10/12/2021 - D:\AmauriFinanceiro\Win32\Debug\config.ini   , implementação paliativa
  do arquivo que seta as informaçoes para a conexão, mudanças para no quando for usado um instalador,
  criar pastas específicas na instalação, ou criar uma arquitetura de conexão com banco de dados via serviço}

constructor TBDConnection.Create;
var
 ArquivoINI,
 Server,
 Path,
 DriverName,
 UserName,
 PassWord : string;
 LocalServer : Integer;
 Configuration : TIniFile;
begin
   wLogErro := EmptyStr;
   ArquivoINI := ExtractFilePath(Application.ExeName) + 'config.ini';

   if not FileExists(ArquivoINI) then
      begin
       wLogErro:=' Arquivo de Config não Encontrado '
      end;

   Configuration := TIniFile.Create(ArquivoINI);

    try
     Server     := Configuration.ReadString('Dados', 'Servidor',   Server);
     Path       := Configuration.ReadString('Dados', 'DataBase',   Path);
     DriverName := Configuration.ReadString('Dados', 'DriverName', DriverName);
     UserName   := Configuration.ReadString('Dados', 'UserName',   UserName);
     PassWord   := Configuration.ReadString('Dados', 'PassWord',   PassWord);
    finally
     Configuration.Free;
    end;

    try
     FDBConnection := TSQLConnection.Create(Application);
     FDBConnection.ConnectionName := 'FBConnection';
     FDBConnection.DriverName     := 'Firebird';
     FDBConnection.LibraryName    := 'dbxfb.dll';
     FDBConnection.VendorLib      := 'fbclient.dll';
     FDBConnection.GetDriverFunc  := 'getSQLDriverINTERBASE';
     FDBConnection.LoginPrompt    := false;
     FDBConnection.Connected      := False;
     FDBConnection.Params.Values['DataBase']   := Server ;
     FDBConnection.Params.Values['User_Name']  := UserName;
     FDBConnection.Params.Values['Password']   := PassWord;
     FDBConnection.Connected  := True;

    except
      wLogErro:=' Erro ao Conectar o Banco de dados. Verifique as preferencias do sistema! '
    end;



end;

destructor TBDConnection.Destroy;
begin
   FDBConnection.Free;
  inherited;
end;

function TBDConnection.GetConnection: TSQLConnection;
begin
   Result := FDBConnection;
end;

end.

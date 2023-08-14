unit Router.Default;

interface

uses
  Horse,
  Utils;

procedure LoadRouters;
procedure pGetDefault(Req: THorseRequest; Res: THorseResponse; Next: TProc);

implementation

procedure LoadRouters;
begin
  THorse.Get('/', pGetDefault);
end;

procedure pGetDefault(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

  Res.Send('API Horse v' + GetFileVersionUtils(ParamStr(0))).Status(200);
  doPrintLog('Consultando Rota Inicial.');

end;

end.

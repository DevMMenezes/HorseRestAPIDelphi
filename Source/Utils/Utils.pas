unit Utils;

interface

uses
  SysUtils, IniFiles, Classes, uMain, Winapi.Windows;

Procedure doSaveLog(pNomeArqLog, Msg: String);
procedure doPrintLog(sMsg: String);
function GetFileVersionUtils(exeName: string): string;

implementation

procedure doPrintLog(sMsg: String);
begin
  with uFrmMain do
  begin
    mmLog.Lines.Add(DateTimeToStr(Now) + ' - ' + sMsg);
  end;
end;

Procedure doSaveLog(pNomeArqLog, Msg: String);
var
  loLista: TStringList;
  pCaminhoLog: String;
begin

  loLista := TStringList.Create;
  try
    try
      pCaminhoLog := ExtractFilePath(ParamStr(0)) + 'Logs/';
      pNomeArqLog := FormatDateTime('yyyy_mm_dd', Date) + '-' +
        pNomeArqLog + '.log';

      if DirectoryExists(pCaminhoLog) = False then
        ForceDirectories(pCaminhoLog);

      if FileExists(pCaminhoLog + pNomeArqLog) then
        loLista.LoadFromFile(pCaminhoLog + pNomeArqLog);

      loLista.Add(TimeToStr(Now) + ':' + Msg);
      loLista.SaveToFile(pCaminhoLog + pNomeArqLog);
    except
      on E: Exception do
      begin
        loLista.Add(TimeToStr(Now) + ': Erro ' + E.Message);
      end;
    end;
  finally
    loLista.Free;
  end;
end;

function GetFileVersionUtils(exeName: string): string;
const
  c_StringInfo = 'StringFileInfo\040904E4\FileVersion';
var
  n, Len: cardinal;
  Buf, Value: PChar;
begin
  Result := '';
  n := GetFileVersionInfoSize(PChar(exeName), n);
  if n > 0 then
  begin
    Buf := AllocMem(n);
    try
      GetFileVersionInfo(PChar(exeName), 0, n, Buf);
      if VerQueryValue(Buf, PChar(c_StringInfo), Pointer(Value), Len) then
      begin
        Result := Trim(Value);
      end;
    finally
      FreeMem(Buf, n);
    end;
  end;
end;

end.

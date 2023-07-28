unit Utils;

interface

uses
  SysUtils, IniFiles, Classes, uMain;

Procedure doSaveLog(pNomeArqLog, Msg: String);
procedure doPrintLog(sMsg: String);

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

end.

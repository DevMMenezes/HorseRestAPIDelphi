unit uMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  {Horse}
  Horse;
{ Horse }

type
  TuFrmMain = class(TForm)
    mmLog: TMemo;
    TBIniciarParar: TButton;
    procedure TBIniciarPararClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmMain: TuFrmMain;

implementation

uses
  Utils;

{$R *.dfm}

procedure TuFrmMain.TBIniciarPararClick(Sender: TObject);
begin

  THorse.Port := 3000;

  uFrmMain.Caption := 'Horse API v' + GetFileVersionUtils(ParamStr(0));

  if THorse.IsRunning then
  begin
    { Parar a Aplicação }
    THorse.StopListen;
    TBIniciarParar.Caption := 'Iniciar';
  end
  else
  begin
    { Iniciar a Aplicação }
    THorse.Listen(THorse.Port);
    TBIniciarParar.Caption := 'Parar';
  end;

end;

end.

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
  Horse,
  Horse.Jhonson,
  Horse.CORS,
  Horse.ETag;
{ Horse }

type
  TuFrmMain = class(TForm)
    mmLog: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmMain: TuFrmMain;

implementation

uses
  Router.Client;

{$R *.dfm}
begin
  THorse.Port := 3000;

  { Middlewares }
  THorse.Use(CORS).Use(Jhonson()).Use(ETag);

  { Carregar todas as Rotas }
  Router.Client.LoadRouters;

  { Iniciar a Aplica��o }
  THorse.Listen(THorse.Port);
end.

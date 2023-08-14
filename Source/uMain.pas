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
  Horse, Vcl.ExtCtrls, Vcl.Buttons;
{ Horse }

type
  TuFrmMain = class(TForm)
    mmLog: TMemo;
    PnTituloForm: TPanel;
    lblNomeAplicacao: TLabel;
    Shape2: TShape;
    Label6: TLabel;
    Shape3: TShape;
    Label1: TLabel;
    Shape1: TShape;
    pnBtnServico: TPanel;
    btnServico: TSpeedButton;
    Shape4: TShape;
    procedure Label1Click(Sender: TObject);
    procedure btnServicoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

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

procedure TuFrmMain.btnServicoClick(Sender: TObject);
begin
  THorse.Port := 3000;

  if THorse.IsRunning then
  begin
    { Parar a Aplicação }
    THorse.StopListen;
    pnBtnServico.Color := $006F6FFF;
    btnServico.Caption := 'Iniciar Serviço';
  end
  else
  begin
    { Iniciar a Aplicação }
    THorse.Listen(THorse.Port);
    pnBtnServico.Color := $00BFFFBF;
    btnServico.Caption := 'Parar Serviço';
  end;

end;

procedure TuFrmMain.FormShow(Sender: TObject);
begin
  lblNomeAplicacao.Caption := 'Horse API v' + GetFileVersionUtils(ParamStr(0));
end;

procedure TuFrmMain.Label1Click(Sender: TObject);
begin
  Close;
end;

end.

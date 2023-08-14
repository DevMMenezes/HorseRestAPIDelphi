object uFrmMain: TuFrmMain
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Horse API'
  ClientHeight = 351
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mmLog: TMemo
    Left = 8
    Top = 56
    Width = 569
    Height = 233
    BevelInner = bvNone
    BorderStyle = bsNone
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Orientation = 1
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object PnTituloForm: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = 3552822
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 112
    ExplicitTop = -24
    ExplicitWidth = 1001
    DesignSize = (
      584
      50)
    object lblNomeAplicacao: TLabel
      Left = 26
      Top = 15
      Width = 106
      Height = 17
      Caption = 'Api Horse Delphi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape2: TShape
      Left = 10
      Top = 11
      Width = 1
      Height = 29
      Brush.Style = bsClear
      Enabled = False
      Pen.Color = clWhite
    end
    object Label6: TLabel
      Left = 384
      Top = 15
      Width = 132
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Dev Marcelo Menezes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object Shape3: TShape
      Left = 0
      Top = 49
      Width = 732
      Height = 1
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 552
      Top = 4
      Width = 18
      Height = 31
      Cursor = crHandPoint
      Alignment = taCenter
      Anchors = [akTop, akRight]
      Caption = 'x'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      OnClick = Label1Click
    end
    object Shape1: TShape
      Left = 951
      Top = 11
      Width = 1
      Height = 29
      Brush.Style = bsClear
      Enabled = False
      Pen.Color = clWhite
    end
    object Shape4: TShape
      Left = 533
      Top = 11
      Width = 1
      Height = 29
      Brush.Style = bsClear
      Enabled = False
      Pen.Color = clWhite
    end
  end
  object pnBtnServico: TPanel
    AlignWithMargins = True
    Left = 183
    Top = 298
    Width = 209
    Height = 41
    BevelOuter = bvNone
    Color = 7303167
    ParentBackground = False
    ShowCaption = False
    TabOrder = 2
    object btnServico: TSpeedButton
      Left = 0
      Top = 0
      Width = 209
      Height = 41
      Cursor = crHandPoint
      Align = alClient
      Caption = 'Iniciar Servi'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Layout = blGlyphBottom
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = btnServicoClick
      ExplicitLeft = 56
      ExplicitTop = 5
      ExplicitWidth = 87
      ExplicitHeight = 32
    end
  end
end

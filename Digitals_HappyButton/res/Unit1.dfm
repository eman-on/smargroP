object Form1: TForm1
  Left = 0
  Top = 0
  VertScrollBar.Increment = 33
  VertScrollBar.ParentColor = False
  VertScrollBar.Visible = False
  AlphaBlend = True
  AlphaBlendValue = 245
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 393
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 43
    Height = 13
    Caption = #1053#1072#1073#1086#1088#1099':'
  end
  object Label2: TLabel
    Left = 362
    Top = 39
    Width = 71
    Height = 13
    Caption = #1040#1074#1090#1086#1087#1086#1076#1087#1080#1089#1080':'
  end
  object Label3: TLabel
    Left = 233
    Top = 197
    Width = 44
    Height = 13
    Caption = #1055#1086#1084#1086#1097#1100':'
  end
  object Label4: TLabel
    Left = 233
    Top = 39
    Width = 64
    Height = 13
    Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077':'
  end
  object Label5: TLabel
    Left = 43
    Top = 117
    Width = 120
    Height = 13
    Caption = #1058#1080#1087' '#1085#1072#1073#1086#1088#1072' '#1089' '#1085#1086#1084#1077#1088#1072#1084#1080':'
  end
  object Label6: TLabel
    Left = 435
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Digitals:'
  end
  object Label7: TLabel
    Left = 479
    Top = 8
    Width = 12
    Height = 13
    Caption = '...'
  end
  object SpeedButton1: TSpeedButton
    Left = 472
    Top = 27
    Width = 59
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100
    Visible = False
    OnClick = SpeedButton1Click
  end
  object Label8: TLabel
    Left = 8
    Top = 399
    Width = 31
    Height = 13
    Caption = 'Label8'
  end
  object Memo1: TMemo
    Left = 8
    Top = 284
    Width = 521
    Height = 65
    TabStop = False
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clBtnFace
    Enabled = False
    HideSelection = False
    Lines.Strings = (
      ''
      ''
      #1042#1082#1083#1102#1095#1080#1090#1077' '#1080#1083#1080' '#1074#1099#1082#1083#1102#1095#1080#1090#1077' '#1085#1072#1073#1086#1088#1099'/'#1082#1086#1084#1087#1086#1085#1077#1085#1090#1099'.'
      #1044#1083#1103' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1087#1086#1076#1089#1082#1072#1079#1082#1080' '#1085#1072#1074#1077#1076#1080#1090#1077' '#1085#1072' '#1082#1086#1084#1087#1086#1085#1077#1085#1090'.')
    ReadOnly = True
    TabOrder = 18
    WantReturns = False
    WordWrap = False
  end
  object CheckBox3: TCheckBox
    Left = 32
    Top = 78
    Width = 146
    Height = 17
    Hint = #1055#1086#1082#1072' '#1085#1077' '#1085#1091#1078#1077#1085
    Caption = #1053#1072#1073#1086#1088' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074' '#1076#1086#1084#1086#1074
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnMouseEnter = CheckBox3MouseEnter
    OnMouseLeave = CheckBox3MouseLeave
  end
  object CheckBox2: TCheckBox
    Left = 32
    Top = 55
    Width = 146
    Height = 17
    Caption = #1053#1072#1073#1086#1088' '#1085#1091#1084#1077#1088#1072#1094#1080#1080' '#1076#1086#1084#1086#1074
    TabOrder = 1
    OnClick = CheckBox2Click
    OnMouseEnter = CheckBox2MouseEnter
    OnMouseLeave = CheckBox2MouseLeave
  end
  object CheckBox1: TCheckBox
    Left = 32
    Top = 32
    Width = 97
    Height = 17
    Caption = #1050#1085#1086#1087#1082#1072' '#1089#1095#1072#1089#1090#1100#1103
    TabOrder = 2
    OnClick = CheckBox1Click
    OnMouseEnter = CheckBox1MouseEnter
    OnMouseLeave = CheckBox1MouseLeave
  end
  object cb1: TCheckBox
    Left = 240
    Top = 58
    Width = 57
    Height = 17
    Caption = #1057#1090#1086#1083#1073#1099
    Enabled = False
    TabOrder = 3
    OnMouseEnter = cb1MouseEnter
    OnMouseLeave = cb1MouseLeave
  end
  object cb2: TCheckBox
    Left = 240
    Top = 81
    Width = 49
    Height = 17
    Caption = #1059#1082#1086#1089#1099
    Enabled = False
    TabOrder = 4
    OnMouseEnter = cb2MouseEnter
    OnMouseLeave = cb2MouseLeave
  end
  object cb3: TCheckBox
    Left = 240
    Top = 104
    Width = 65
    Height = 17
    Caption = #1044#1077#1088#1077#1074#1100#1103
    Enabled = False
    TabOrder = 5
    OnMouseEnter = cb3MouseEnter
    OnMouseLeave = cb3MouseLeave
  end
  object cb4: TCheckBox
    Left = 240
    Top = 127
    Width = 81
    Height = 17
    Caption = #1059#1088#1077#1079#1099' '#1074#1086#1076#1099
    Enabled = False
    TabOrder = 6
    OnMouseEnter = cb4MouseEnter
    OnMouseLeave = cb4MouseLeave
  end
  object cb7: TCheckBox
    Left = 368
    Top = 58
    Width = 65
    Height = 17
    Caption = #1040#1083#1100#1090#1072#1085#1082#1080
    Enabled = False
    TabOrder = 7
    OnMouseEnter = cb7MouseEnter
    OnMouseLeave = cb7MouseLeave
  end
  object cb8: TCheckBox
    Left = 368
    Top = 81
    Width = 65
    Height = 17
    Caption = #1041#1072#1089#1077#1081#1085#1099
    Enabled = False
    TabOrder = 8
    OnMouseEnter = cb8MouseEnter
    OnMouseLeave = cb8MouseLeave
  end
  object cb9: TCheckBox
    Left = 368
    Top = 104
    Width = 65
    Height = 17
    Caption = #1050#1086#1087#1072#1085#1082#1080
    Enabled = False
    TabOrder = 9
    OnMouseEnter = cb9MouseEnter
    OnMouseLeave = cb9MouseLeave
  end
  object cb10: TCheckBox
    Left = 368
    Top = 127
    Width = 89
    Height = 17
    Caption = #1044#1086#1084#1072' ('#1056#1091#1080#1085#1099')'
    Enabled = False
    TabOrder = 10
    OnMouseEnter = cb10MouseEnter
    OnMouseLeave = cb10MouseLeave
  end
  object cb11: TCheckBox
    Left = 368
    Top = 150
    Width = 97
    Height = 17
    Caption = #1044#1086#1084#1072' ('#1057#1090#1088#1086#1081#1082#1072')'
    Enabled = False
    TabOrder = 11
    OnMouseEnter = cb11MouseEnter
    OnMouseLeave = cb11MouseLeave
  end
  object cb12: TCheckBox
    Left = 368
    Top = 173
    Width = 161
    Height = 17
    Caption = #1058#1088#1072#1085#1089#1092#1086#1088#1084#1072#1090#1086#1088#1099' ('#1085#1077' '#1084#1072#1089#1096'.)'
    Enabled = False
    TabOrder = 12
    OnMouseEnter = cb12MouseEnter
    OnMouseLeave = cb12MouseLeave
  end
  object cb13: TCheckBox
    Left = 368
    Top = 196
    Width = 161
    Height = 17
    Caption = #1058#1088#1072#1085#1089#1092#1086#1088#1084#1072#1090#1086#1088#1099' ('#1084#1072#1089#1096#1090#1072#1073'.)'
    Enabled = False
    TabOrder = 13
    OnMouseEnter = cb13MouseEnter
    OnMouseLeave = cb13MouseLeave
  end
  object cb14: TCheckBox
    Left = 368
    Top = 219
    Width = 105
    Height = 17
    Caption = #1057#1087#1086#1088#1090'. '#1087#1083#1086#1097#1072#1076#1082#1080
    Enabled = False
    TabOrder = 14
    OnMouseEnter = cb14MouseEnter
    OnMouseLeave = cb14MouseLeave
  end
  object cb15: TCheckBox
    Left = 368
    Top = 242
    Width = 113
    Height = 17
    Caption = #1044#1077#1090#1089#1082#1080#1077' '#1087#1083#1086#1097#1072#1076#1082#1080
    Enabled = False
    TabOrder = 15
    OnMouseEnter = cb15MouseEnter
    OnMouseLeave = cb15MouseLeave
  end
  object cb5: TCheckBox
    Left = 240
    Top = 216
    Width = 57
    Height = 17
    Caption = #1053#1072#1074#1077#1089#1099
    Enabled = False
    TabOrder = 16
    OnMouseEnter = cb5MouseEnter
    OnMouseLeave = cb5MouseLeave
  end
  object cb6: TCheckBox
    Left = 240
    Top = 239
    Width = 49
    Height = 17
    Caption = #1044#1086#1084#1072
    Enabled = False
    TabOrder = 17
    OnMouseEnter = cb6MouseEnter
    OnMouseLeave = cb6MouseLeave
  end
  object BitBtn1: TBitBtn
    Left = 362
    Top = 337
    Width = 71
    Height = 25
    Caption = #1055#1088#1080#1085#1103#1090#1100
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 19
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 447
    Top = 337
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 20
    OnClick = BitBtn2Click
  end
  object RadioButton1: TRadioButton
    Left = 51
    Top = 136
    Width = 94
    Height = 17
    Caption = #1042' '#1086#1076#1085#1091' '#1089#1090#1088#1086#1082#1091
    Enabled = False
    TabOrder = 21
    OnMouseEnter = RadioButton1MouseEnter
    OnMouseLeave = RadioButton1MouseLeave
  end
  object RadioButton2: TRadioButton
    Left = 51
    Top = 159
    Width = 86
    Height = 17
    Caption = #1042' '#1076#1074#1077' '#1089#1090#1088#1086#1082#1080
    Enabled = False
    TabOrder = 22
    OnMouseEnter = RadioButton2MouseEnter
    OnMouseLeave = RadioButton2MouseLeave
  end
  object RadioButton3: TRadioButton
    Left = 51
    Top = 182
    Width = 86
    Height = 17
    Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
    Enabled = False
    TabOrder = 23
    OnMouseEnter = RadioButton3MouseEnter
    OnMouseLeave = RadioButton3MouseLeave
  end
  object Memo: TMemo
    Left = 8
    Top = 410
    Width = 497
    Height = 127
    TabOrder = 24
  end
  object cb17: TCheckBox
    Left = 240
    Top = 262
    Width = 89
    Height = 17
    Caption = #1050#1086#1088#1088#1077#1082#1072#1090#1091#1088#1072
    Enabled = False
    TabOrder = 26
    OnMouseEnter = cb6MouseEnter
    OnMouseLeave = cb6MouseLeave
  end
  object cb18: TCheckBox
    Left = 240
    Top = 150
    Width = 105
    Height = 17
    Caption = #1043#1077#1086#1076#1077#1079#1080#1095'. '#1087#1091#1085#1082#1090'.'
    Enabled = False
    TabOrder = 27
    OnMouseEnter = cb4MouseEnter
    OnMouseLeave = cb4MouseLeave
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 368
    Width = 523
    Height = 17
    TabOrder = 28
  end
  object cb16: TCheckBox
    Left = 368
    Top = 265
    Width = 57
    Height = 17
    Caption = #1043#1072#1088#1072#1078#1080
    Enabled = False
    TabOrder = 25
    OnMouseEnter = cb15MouseEnter
    OnMouseLeave = cb15MouseLeave
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 25
    OnTimer = Timer1Timer
    Left = 16
    Top = 248
  end
  object OpenDialog1: TOpenDialog
    Filter = '|ged.exe'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofOldStyleDialog]
    Title = #1042#1099#1073#1077#1088#1080#1090#1077' Ged.exe'
    Left = 496
    Top = 56
  end
  object MainMenu1: TMainMenu
    Left = 144
    Top = 248
    object N1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Caption = #1054' '#1055#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N3Click
    end
  end
end

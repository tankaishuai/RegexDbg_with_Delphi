object Form1: TForm1
  Left = 208
  Top = 162
  Width = 1132
  Height = 306
  Caption = 'test TRegExpr'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtPatten: TEdit
    Left = 8
    Top = 24
    Width = 993
    Height = 25
    TabOrder = 0
    Text = 'edtPatten'
  end
  object edtText: TEdit
    Left = 8
    Top = 56
    Width = 993
    Height = 105
    TabOrder = 1
    Text = 'edtText'
  end
  object btnMatch: TButton
    Left = 1024
    Top = 24
    Width = 73
    Height = 225
    Caption = 'Match'
    TabOrder = 2
    OnClick = btnMatchClick
  end
  object edtResult: TEdit
    Left = 8
    Top = 168
    Width = 993
    Height = 81
    TabOrder = 3
    Text = 'edtResult'
  end
end

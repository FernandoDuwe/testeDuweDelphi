object FSubForm: TFSubForm
  Left = 0
  Top = 0
  Caption = 'FSubForm'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 36
    Align = alTop
    TabOrder = 0
    object btnUpdate: TButton
      Left = 8
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 0
      OnClick = btnUpdateClick
    end
  end
  object pnBody: TPanel
    Left = 0
    Top = 36
    Width = 447
    Height = 165
    Align = alClient
    TabOrder = 1
  end
end

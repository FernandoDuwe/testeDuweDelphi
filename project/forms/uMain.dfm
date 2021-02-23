object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'Fernando Luiz Duwe - Teste'
  ClientHeight = 437
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmNavigation
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object sbStatus: TStatusBar
    Left = 0
    Top = 418
    Width = 706
    Height = 19
    Panels = <
      item
        Text = 'Pronto'
        Width = 50
      end>
  end
  object mmNavigation: TMainMenu
    Left = 592
    Top = 176
    object arefas1: TMenuItem
      Caption = 'Tarefas'
      object arefa11: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = arefa11Click
      end
      object arefa21: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = arefa21Click
      end
      object arefa31: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = arefa31Click
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      OnClick = Sobre1Click
    end
  end
end

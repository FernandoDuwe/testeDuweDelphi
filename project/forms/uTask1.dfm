inherited FTask1: TFTask1
  Caption = 'Tarefa 1'
  ClientHeight = 335
  ClientWidth = 632
  ExplicitWidth = 648
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTop: TPanel
    Width = 632
    ExplicitWidth = 632
  end
  inherited pnBody: TPanel
    Width = 632
    Height = 194
    ExplicitWidth = 632
    ExplicitHeight = 194
    object Splitter1: TSplitter
      Left = 225
      Top = 1
      Height = 192
      ExplicitLeft = 328
      ExplicitTop = 96
      ExplicitHeight = 100
    end
    object Splitter2: TSplitter
      Left = 404
      Top = 1
      Height = 192
      Align = alRight
      ExplicitLeft = 352
      ExplicitTop = 80
      ExplicitHeight = 100
    end
    object gbColunas: TGroupBox
      Left = 1
      Top = 1
      Width = 224
      Height = 192
      Align = alLeft
      Caption = 'Colunas'
      TabOrder = 0
      object mmColunas: TMemo
        Left = 2
        Top = 15
        Width = 220
        Height = 175
        Align = alClient
        Lines.Strings = (
          'mmColunas')
        TabOrder = 0
        OnKeyUp = mmColunasKeyUp
        ExplicitLeft = 1
        ExplicitTop = 12
      end
    end
    object GroupBox2: TGroupBox
      Left = 407
      Top = 1
      Width = 224
      Height = 192
      Align = alRight
      Caption = 'Condi'#231#245'es'
      TabOrder = 2
      object mmCondicoes: TMemo
        Left = 2
        Top = 15
        Width = 220
        Height = 175
        Align = alClient
        Lines.Strings = (
          'mmColunas')
        TabOrder = 0
        OnKeyUp = mmColunasKeyUp
      end
    end
    object GroupBox3: TGroupBox
      Left = 228
      Top = 1
      Width = 176
      Height = 192
      Align = alClient
      Caption = 'Tabelas'
      TabOrder = 1
      object mmTabelas: TMemo
        Left = 2
        Top = 15
        Width = 172
        Height = 175
        Align = alClient
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
        OnKeyUp = mmColunasKeyUp
        ExplicitLeft = 3
        ExplicitTop = 14
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 230
    Width = 632
    Height = 105
    Align = alBottom
    Caption = 'SQL Gerado'
    TabOrder = 2
    object mmSQLGerado: TMemo
      Left = 2
      Top = 15
      Width = 628
      Height = 88
      Align = alClient
      Lines.Strings = (
        'mmSQLGerado')
      ReadOnly = True
      TabOrder = 0
      ExplicitLeft = 1
    end
  end
  object spQuery1: TspQuery
    Connection = FDConnection1
    SQL.Strings = (
      'safasfasfasfas')
    Left = 280
    Top = 270
  end
  object FDConnection1: TFDConnection
    Left = 400
    Top = 278
  end
end

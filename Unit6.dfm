object Form1: TForm1
  Left = 192
  Top = 153
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 104
    Top = 64
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl2: TLabel
    Left = 104
    Top = 104
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object lbl3: TLabel
    Left = 104
    Top = 152
    Width = 28
    Height = 13
    Caption = 'LEVEL'
  end
  object lbl4: TLabel
    Left = 104
    Top = 200
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object lbl5: TLabel
    Left = 176
    Top = 16
    Width = 56
    Height = 13
    Caption = 'DATA USER'
  end
  object edt1: TEdit
    Left = 176
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 176
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 176
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edt3'
  end
  object edt4: TEdit
    Left = 176
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'edt4'
  end
  object btn1: TButton
    Left = 56
    Top = 256
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 160
    Top = 256
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
  end
  object btn3: TButton
    Left = 256
    Top = 256
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 352
    Top = 256
    Width = 75
    Height = 25
    Caption = 'CLEAR FORM'
    TabOrder = 7
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 312
    Width = 705
    Height = 153
    DataSource = ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_laporansiswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\ACER\Downloads\Zeos703\Zeos703\libmysql.dll'
    Left = 392
    Top = 72
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_user')
    Params = <>
    Left = 392
    Top = 136
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 392
    Top = 200
  end
end

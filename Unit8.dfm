object Form8: TForm8
  Left = 192
  Top = 153
  Width = 1305
  Height = 675
  Caption = 'Input Data Hubungan'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 256
    Top = 24
    Width = 170
    Height = 18
    Caption = 'INPUT DATA HUBUNGAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 128
    Top = 80
    Width = 47
    Height = 13
    Caption = 'SISWA ID'
  end
  object lbl3: TLabel
    Left = 128
    Top = 112
    Width = 42
    Height = 13
    Caption = 'ORTU ID'
  end
  object lbl4: TLabel
    Left = 128
    Top = 144
    Width = 96
    Height = 13
    Caption = 'STATUS HUBUNGAN'
  end
  object lbl5: TLabel
    Left = 128
    Top = 184
    Width = 66
    Height = 13
    Caption = 'KETERANGAN'
  end
  object e1: TEdit
    Left = 264
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'e1'
  end
  object e2: TEdit
    Left = 264
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'e2'
  end
  object e3: TEdit
    Left = 264
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'e3'
  end
  object e4: TEdit
    Left = 264
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'e4'
  end
  object btn1: TButton
    Left = 96
    Top = 224
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 4
  end
  object btn2: TButton
    Left = 200
    Top = 224
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 5
  end
  object btn3: TButton
    Left = 296
    Top = 224
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 6
  end
  object btn4: TButton
    Left = 392
    Top = 224
    Width = 75
    Height = 25
    Caption = 'CLEAR FROM'
    TabOrder = 7
  end
  object dbgrd1: TDBGrid
    Left = 88
    Top = 272
    Width = 457
    Height = 120
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
    Left = 520
    Top = 64
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_hubungan')
    Params = <>
    Left = 520
    Top = 120
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 520
    Top = 176
  end
end

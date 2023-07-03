object Form9: TForm9
  Left = 198
  Top = 195
  Width = 1305
  Height = 675
  Caption = 'Data Input Poin'
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
    Left = 104
    Top = 24
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl2: TLabel
    Left = 104
    Top = 72
    Width = 34
    Height = 13
    Caption = 'BOBOT'
  end
  object lbl3: TLabel
    Left = 104
    Top = 112
    Width = 28
    Height = 13
    Caption = 'JENIS'
  end
  object lbl4: TLabel
    Left = 104
    Top = 160
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object e1: TEdit
    Left = 216
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'e1'
  end
  object e2: TEdit
    Left = 216
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'e2'
  end
  object c1: TComboBox
    Left = 216
    Top = 112
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'c1'
    Items.Strings = (
      'Prestasi'
      'Pelanggaran')
  end
  object btn1: TButton
    Left = 88
    Top = 208
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 208
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 296
    Top = 208
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 392
    Top = 208
    Width = 75
    Height = 25
    Caption = 'CLEAR FORM'
    TabOrder = 6
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 48
    Top = 256
    Width = 529
    Height = 120
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object e3: TEdit
    Left = 216
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'e3'
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
    Left = 448
    Top = 24
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_poin')
    Params = <>
    Left = 448
    Top = 88
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 448
    Top = 144
  end
end

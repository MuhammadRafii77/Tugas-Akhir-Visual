object Form7: TForm7
  Left = 192
  Top = 153
  Width = 1305
  Height = 675
  ActiveControl = btn1
  Caption = 'Input Data Riwayat Poin'
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
    Top = 32
    Width = 123
    Height = 16
    Caption = 'DATA RIWAYAT POIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 80
    Top = 88
    Width = 47
    Height = 13
    Caption = 'SISWA ID'
  end
  object lbl3: TLabel
    Left = 80
    Top = 120
    Width = 39
    Height = 13
    Caption = 'POIN ID'
  end
  object lbl4: TLabel
    Left = 80
    Top = 160
    Width = 40
    Height = 13
    Caption = 'WALI ID'
  end
  object lbl5: TLabel
    Left = 80
    Top = 200
    Width = 42
    Height = 13
    Caption = 'ORTU ID'
  end
  object lbl6: TLabel
    Left = 336
    Top = 88
    Width = 44
    Height = 13
    Caption = 'KELAS ID'
  end
  object lbl7: TLabel
    Left = 336
    Top = 128
    Width = 46
    Height = 13
    Caption = 'TANGGAL'
  end
  object lbl8: TLabel
    Left = 336
    Top = 160
    Width = 51
    Height = 13
    Caption = 'SEMESTER'
  end
  object lbl9: TLabel
    Left = 344
    Top = 200
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object e1: TEdit
    Left = 160
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'e1'
  end
  object e2: TEdit
    Left = 160
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'e2'
  end
  object e3: TEdit
    Left = 160
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'e3'
  end
  object e4: TEdit
    Left = 160
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'e4'
  end
  object e5: TEdit
    Left = 408
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'e5'
  end
  object c1: TComboBox
    Left = 408
    Top = 160
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'c1'
    Items.Strings = (
      '1'
      '2')
  end
  object e6: TEdit
    Left = 408
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'e6'
  end
  object btn1: TButton
    Left = 88
    Top = 264
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 264
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 288
    Top = 264
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 384
    Top = 264
    Width = 75
    Height = 25
    Caption = 'CELAR FORM'
    TabOrder = 10
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 320
    Width = 585
    Height = 145
    DataSource = ds1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object d1: TDateTimePicker
    Left = 400
    Top = 128
    Width = 186
    Height = 21
    Date = 45114.813845787040000000
    Time = 45114.813845787040000000
    TabOrder = 12
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
    Left = 664
    Top = 88
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_riwayat_poin')
    Params = <>
    Left = 664
    Top = 144
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 664
    Top = 208
  end
end

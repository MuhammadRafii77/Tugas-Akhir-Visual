object Form5: TForm5
  Left = 890
  Top = 190
  Width = 1305
  Height = 675
  Caption = 'Input Data Ortu'
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
    Left = 56
    Top = 80
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl2: TLabel
    Left = 56
    Top = 120
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl3: TLabel
    Left = 56
    Top = 160
    Width = 61
    Height = 13
    Caption = 'PENDIDIKAN'
  end
  object lbl4: TLabel
    Left = 56
    Top = 208
    Width = 57
    Height = 13
    Caption = 'PEKERJAAN'
  end
  object lbl5: TLabel
    Left = 376
    Top = 72
    Width = 38
    Height = 13
    Caption = 'TELPON'
  end
  object lbl6: TLabel
    Left = 376
    Top = 112
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl7: TLabel
    Left = 376
    Top = 152
    Width = 36
    Height = 13
    Caption = 'AGAMA'
  end
  object lbl8: TLabel
    Left = 352
    Top = 200
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl9: TLabel
    Left = 256
    Top = 24
    Width = 140
    Height = 19
    Caption = 'DATA ORANG TUA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object STATUS: TLabel
    Left = 368
    Top = 240
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object e1: TEdit
    Left = 128
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'e1'
  end
  object e2: TEdit
    Left = 128
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'e2'
  end
  object c1: TComboBox
    Left = 128
    Top = 160
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'c1'
    Items.Strings = (
      'SD'
      'SMP'
      'SMA/K'
      'S1'
      'S2'
      'S3')
  end
  object e3: TEdit
    Left = 128
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'e3'
  end
  object e4: TEdit
    Left = 448
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'e4'
  end
  object e5: TEdit
    Left = 448
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'e5'
  end
  object e6: TEdit
    Left = 448
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'e6'
  end
  object c2: TComboBox
    Left = 448
    Top = 200
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'c2'
    Items.Strings = (
      'Laki-LakI'
      'Perempuan')
  end
  object btn1: TButton
    Left = 64
    Top = 272
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 176
    Top = 272
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 280
    Top = 272
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 10
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 392
    Top = 272
    Width = 75
    Height = 25
    Caption = 'CLEAR FORM'
    TabOrder = 11
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 496
    Top = 272
    Width = 75
    Height = 25
    Caption = 'PRINT'
    TabOrder = 12
  end
  object dbgrd1: TDBGrid
    Left = 0
    Top = 312
    Width = 969
    Height = 185
    DataSource = ds1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object c3: TComboBox
    Left = 448
    Top = 240
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Text = 'c3'
    Items.Strings = (
      'Kandung'
      'Wali')
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
    Left = 672
    Top = 80
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_ortu')
    Params = <>
    Left = 672
    Top = 144
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 672
    Top = 208
  end
end

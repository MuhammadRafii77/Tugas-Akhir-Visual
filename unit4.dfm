object Form1: TForm1
  Left = 223
  Top = 221
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clGradientActiveCaption
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
    Top = 56
    Width = 17
    Height = 16
    Caption = 'nip'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 56
    Top = 104
    Width = 32
    Height = 16
    Caption = 'nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 56
    Top = 152
    Width = 75
    Height = 16
    Caption = 'jenis kelamin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 56
    Top = 208
    Width = 39
    Height = 16
    Caption = 'alamat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 456
    Top = 64
    Width = 35
    Height = 16
    Caption = 'telpon'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 456
    Top = 112
    Width = 87
    Height = 16
    Caption = 'mata pelajaran'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 456
    Top = 152
    Width = 61
    Height = 16
    Caption = 'pendidikan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 456
    Top = 200
    Width = 34
    Height = 16
    Caption = 'status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 392
    Top = 8
    Width = 127
    Height = 23
    Caption = 'Data Wali kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object e1: TEdit
    Left = 152
    Top = 56
    Width = 265
    Height = 21
    TabOrder = 0
    Text = 'e1'
  end
  object e2: TEdit
    Left = 152
    Top = 104
    Width = 265
    Height = 21
    TabOrder = 1
    Text = 'e2'
  end
  object c1: TComboBox
    Left = 152
    Top = 152
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'c1'
  end
  object e3: TEdit
    Left = 152
    Top = 200
    Width = 265
    Height = 21
    TabOrder = 3
    Text = 'e3'
  end
  object e4: TEdit
    Left = 560
    Top = 64
    Width = 233
    Height = 21
    TabOrder = 4
    Text = 'e4'
  end
  object btn1: TButton
    Left = 40
    Top = 272
    Width = 75
    Height = 25
    Caption = 'simpan'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 152
    Top = 272
    Width = 75
    Height = 25
    Caption = 'edit'
    TabOrder = 6
    OnClick = btn2Click
  end
  object c2: TComboBox
    Left = 560
    Top = 112
    Width = 233
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'c2'
  end
  object btn3: TButton
    Left = 256
    Top = 272
    Width = 75
    Height = 25
    Caption = 'hapus'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 352
    Top = 272
    Width = 75
    Height = 25
    Caption = 'clear form'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 456
    Top = 272
    Width = 75
    Height = 25
    Caption = 'print'
    TabOrder = 10
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 328
    Width = 1017
    Height = 185
    DataSource = ds1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object c3: TComboBox
    Left = 560
    Top = 208
    Width = 233
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    Text = 'c3'
  end
  object e5: TEdit
    Left = 560
    Top = 168
    Width = 233
    Height = 21
    TabOrder = 13
    Text = 'e5'
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
    Left = 976
    Top = 56
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select*from tb_walikelas')
    Params = <>
    Left = 976
    Top = 120
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 976
    Top = 184
  end
end

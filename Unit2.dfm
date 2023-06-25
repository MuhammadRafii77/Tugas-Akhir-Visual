object Form2: TForm2
  Left = 279
  Top = 166
  Width = 928
  Height = 480
  Caption = 'Input Data Kelas'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 32
    Top = 104
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object l2: TLabel
    Left = 32
    Top = 136
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object l3: TLabel
    Left = 24
    Top = 168
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object lbl1: TLabel
    Left = 160
    Top = 56
    Width = 164
    Height = 23
    Caption = 'INPUT DATA KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object e1: TEdit
    Left = 88
    Top = 104
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object b1: TButton
    Left = 8
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = b1Click
  end
  object dg1: TDBGrid
    Left = 48
    Top = 256
    Width = 321
    Height = 120
    DataSource = d1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Width = 47
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Width = 88
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jenis'
        Title.Alignment = taCenter
        Width = 61
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jurusan'
        Title.Alignment = taCenter
        Width = 103
        Visible = True
      end>
  end
  object b2: TButton
    Left = 96
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 3
    OnClick = b2Click
  end
  object b3: TButton
    Left = 184
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 4
    OnClick = b3Click
  end
  object b4: TButton
    Left = 272
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Clear Form'
    TabOrder = 5
    OnClick = b4Click
  end
  object b5: TButton
    Left = 360
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 6
  end
  object c1: TComboBox
    Left = 88
    Top = 136
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'Pagi'
      'Siang')
  end
  object c2: TComboBox
    Left = 88
    Top = 168
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'Bahasa'
      'IPA'
      'IPS')
  end
  object con2: TZConnection
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
    Left = 376
    Top = 128
  end
  object zqry1: TZQuery
    Connection = con2
    Active = True
    SQL.Strings = (
      'select * from tb_kelas')
    Params = <>
    Left = 472
    Top = 128
  end
  object d1: TDataSource
    DataSet = zqry1
    Left = 424
    Top = 128
  end
end

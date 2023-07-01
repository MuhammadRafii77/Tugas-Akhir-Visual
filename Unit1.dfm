object Form1: TForm1
  Left = 969
  Top = 217
  Width = 1250
  Height = 631
  Caption = 'Input Data Siswa'
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
    Left = 24
    Top = 96
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object l2: TLabel
    Left = 24
    Top = 128
    Width = 57
    Height = 13
    Caption = 'Nama Siswa'
  end
  object l3: TLabel
    Left = 24
    Top = 160
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object l4: TLabel
    Left = 24
    Top = 192
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object l5: TLabel
    Left = 24
    Top = 256
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object l6: TLabel
    Left = 360
    Top = 64
    Width = 63
    Height = 13
    Caption = 'Tingkat Kelas'
  end
  object l7: TLabel
    Left = 360
    Top = 96
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object l8: TLabel
    Left = 360
    Top = 128
    Width = 48
    Height = 13
    Caption = 'Wali Kelas'
  end
  object l9: TLabel
    Left = 360
    Top = 160
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object l10: TLabel
    Left = 360
    Top = 192
    Width = 38
    Height = 13
    Caption = 'Telepon'
  end
  object l11: TLabel
    Left = 360
    Top = 224
    Width = 13
    Height = 13
    Caption = 'Hp'
  end
  object l12: TLabel
    Left = 360
    Top = 256
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object l13: TLabel
    Left = 24
    Top = 64
    Width = 17
    Height = 13
    Caption = 'NIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l14: TLabel
    Left = 24
    Top = 224
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object lbl1: TLabel
    Left = 288
    Top = 22
    Width = 218
    Height = 23
    Caption = 'INPUT DATA MAHASISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object b3: TButton
    Left = 24
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 0
    OnClick = b3Click
  end
  object b4: TButton
    Left = 120
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 1
    OnClick = b4Click
  end
  object b5: TButton
    Left = 216
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 2
    OnClick = b5Click
  end
  object b6: TButton
    Left = 312
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Clear Form'
    TabOrder = 3
    OnClick = b6Click
  end
  object b2: TButton
    Left = 408
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 4
  end
  object e1: TEdit
    Left = 104
    Top = 64
    Width = 233
    Height = 21
    TabOrder = 5
  end
  object e2: TEdit
    Left = 104
    Top = 96
    Width = 233
    Height = 21
    TabOrder = 6
  end
  object e3: TEdit
    Left = 104
    Top = 128
    Width = 233
    Height = 21
    TabOrder = 7
  end
  object e4: TEdit
    Left = 104
    Top = 160
    Width = 233
    Height = 21
    TabOrder = 8
  end
  object e5: TEdit
    Left = 104
    Top = 192
    Width = 233
    Height = 21
    TabOrder = 9
  end
  object e6: TEdit
    Left = 440
    Top = 128
    Width = 233
    Height = 21
    TabOrder = 10
  end
  object e8: TEdit
    Left = 440
    Top = 192
    Width = 233
    Height = 21
    TabOrder = 11
  end
  object e9: TEdit
    Left = 440
    Top = 224
    Width = 233
    Height = 21
    TabOrder = 12
  end
  object dg1: TDBGrid
    Left = 24
    Top = 352
    Width = 1201
    Height = 225
    DataSource = dsd1
    TabOrder = 13
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
        FieldName = 'siswa_id'
        Title.Alignment = taCenter
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nis'
        Title.Alignment = taCenter
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nisn'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_siswa'
        Title.Alignment = taCenter
        Width = 104
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nik'
        Title.Alignment = taCenter
        Width = 76
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tempat_lahir'
        Title.Alignment = taCenter
        Width = 125
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tgl_lahir'
        Title.Alignment = taCenter
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jenis_kelamin'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tingkat_kelas'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jurusan'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'wali_kelas'
        Title.Alignment = taCenter
        Width = 84
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'alamat'
        Title.Alignment = taCenter
        Width = 118
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'telp'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'hp'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'status'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object dtp1: TDateTimePicker
    Left = 104
    Top = 224
    Width = 233
    Height = 21
    Date = 45094.730822800930000000
    Time = 45094.730822800930000000
    TabOrder = 14
  end
  object c1: TComboBox
    Left = 104
    Top = 256
    Width = 233
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object c2: TComboBox
    Left = 440
    Top = 64
    Width = 233
    Height = 21
    ItemHeight = 13
    TabOrder = 16
    Items.Strings = (
      'X'
      'XI'
      'XII')
  end
  object c3: TComboBox
    Left = 440
    Top = 96
    Width = 233
    Height = 21
    ItemHeight = 13
    TabOrder = 17
    Items.Strings = (
      'BAHASA'
      'IPA'
      'IPS')
  end
  object c4: TComboBox
    Left = 440
    Top = 256
    Width = 233
    Height = 21
    ItemHeight = 13
    TabOrder = 18
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object e7: TEdit
    Left = 440
    Top = 160
    Width = 233
    Height = 21
    TabOrder = 19
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
    Left = 704
    Top = 200
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_siswa')
    Params = <>
    Left = 704
    Top = 128
  end
  object dsd1: TDataSource
    DataSet = zqry1
    Left = 704
    Top = 64
  end
end

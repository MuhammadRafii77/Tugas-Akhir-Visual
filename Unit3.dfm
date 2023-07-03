object Form3: TForm3
  Left = 1230
  Top = 341
  Width = 471
  Height = 367
  Caption = 'Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object Menu1: TMenuItem
      Caption = 'Menu'
      object InputDataSiswa1: TMenuItem
        Caption = 'Input Data Siswa'
        OnClick = InputDataSiswa1Click
      end
      object InputDataKelas1: TMenuItem
        Caption = 'Input Data Kelas'
        OnClick = InputDataKelas1Click
      end
      object InputDataWalikelas1: TMenuItem
        Caption = 'Input Data Walikelas'
        OnClick = InputDataWalikelas1Click
      end
      object InputDataOrangtua1: TMenuItem
        Caption = 'Input Data Orang Tua'
        OnClick = InputDataOrangtua1Click
      end
      object InputDataUser1: TMenuItem
        Caption = 'Input Data User'
        OnClick = InputDataUser1Click
      end
      object InputDataRiwayatPoin1: TMenuItem
        Caption = 'Input Data Riwayat Poin'
        OnClick = InputDataRiwayatPoin1Click
      end
      object InputDataHubungan1: TMenuItem
        Caption = 'Input Data Hubungan'
        OnClick = InputDataHubungan1Click
      end
      object InputDataPoin1: TMenuItem
        Caption = 'Input Data Poin'
        OnClick = InputDataPoin1Click
      end
    end
  end
end

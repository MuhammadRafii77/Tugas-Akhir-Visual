unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    InputDataSiswa1: TMenuItem;
    InputDataKelas1: TMenuItem;
    InputDataWalikelas1: TMenuItem;
    InputDataOrangtua1: TMenuItem;
    InputDataUser1: TMenuItem;
    InputDataRiwayatPoin1: TMenuItem;
    InputDataHubungan1: TMenuItem;
    InputDataPoin1: TMenuItem;
    procedure InputDataSiswa1Click(Sender: TObject);
    procedure InputDataKelas1Click(Sender: TObject);
    procedure InputDataWalikelas1Click(Sender: TObject);
    procedure InputDataOrangtua1Click(Sender: TObject);
    procedure InputDataUser1Click(Sender: TObject);
    procedure InputDataRiwayatPoin1Click(Sender: TObject);
    procedure InputDataHubungan1Click(Sender: TObject);
    procedure InputDataPoin1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2,unit4,unit5,unit6,unit7,unit8,unit9;

{$R *.dfm}

procedure TForm3.InputDataSiswa1Click(Sender: TObject);
begin
  if Form1=nil then
  Form1:=TForm1.Create(Application);
  Form1.Show;
end;

procedure TForm3.InputDataKelas1Click(Sender: TObject);
begin
  if Form2=nil then
  Form2:=TForm2.Create(Application);
  Form2.Show;
end;

procedure TForm3.InputDataWalikelas1Click(Sender: TObject);
begin
 if Form4=nil then
  Form4:=TForm4.Create(Application);
  Form4.Show;
end;

procedure TForm3.InputDataOrangtua1Click(Sender: TObject);
begin
 if Form5=nil then
  Form5:=TForm5.Create(Application);
  Form5.Show;
end;

procedure TForm3.InputDataUser1Click(Sender: TObject);
begin
 if Form6=nil then
  Form6:=TForm6.Create(Application);
  Form6.Show;
end;

procedure TForm3.InputDataRiwayatPoin1Click(Sender: TObject);
begin
if Form7=nil then
  Form7:=TForm7.Create(Application);
  Form7.Show;
end;

procedure TForm3.InputDataHubungan1Click(Sender: TObject);
begin
  if Form8=nil then
  Form8:=TForm8.Create(Application);
  Form8.Show;
end;

procedure TForm3.InputDataPoin1Click(Sender: TObject);
begin
  if Form9=nil then
  Form9:=TForm9.Create(Application);
  Form9.Show;
end;

end.

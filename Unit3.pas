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
    procedure InputDataSiswa1Click(Sender: TObject);
    procedure InputDataKelas1Click(Sender: TObject);
    procedure InputDataWalikelas1Click(Sender: TObject);
    procedure InputDataOrangtua1Click(Sender: TObject);
    procedure InputDataUser1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2,unit4,unit5,unit6;

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
 if Form3=nil then
  Form3:=TForm3.Create(Application);
  Form3.Show;
end;

procedure TForm3.InputDataOrangtua1Click(Sender: TObject);
begin
 if Form4=nil then
  Form4:=TForm4.Create(Application);
  Form4.Show;
end;

procedure TForm3.InputDataUser1Click(Sender: TObject);
begin
 if Form5=nil then
  Form5:=TForm5.Create(Application);
  Form5.Show;
end;

end.

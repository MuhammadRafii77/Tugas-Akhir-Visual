unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    e1: TEdit;
    e2: TEdit;
    c1: TComboBox;
    e3: TEdit;
    e4: TEdit;
    btn1: TButton;
    btn2: TButton;
    c2: TComboBox;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    c3: TComboBox;
    e5: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('INSERT INTO tb_walikelas (nip, nama, jenis_kelamin, alamat, telp, matpel, pendidikan, status) VALUES (:nip, :nama, :jenis_kelamin, :alamat, :telp, :matpel, :pendidikan, :status)');
  zqry1.ParamByName('nip').AsString := e1.Text;
  zqry1.ParamByName('nama').AsString := e2.Text;
  zqry1.ParamByName('jenis_kelamin').AsString := c1.Text;
  zqry1.ParamByName('alamat').AsString := e3.Text;
  zqry1.ParamByName('telp').AsString := e4.Text;
  zqry1.ParamByName('matpel').AsString := c2.Text;
  zqry1.ParamByName('pendidikan').AsString := e5.Text;
  zqry1.ParamByName('status').AsString := c3.Text;
  zqry1.ExecSQL;

  zqry1.Close;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM tb_walikelas');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
end;


procedure TForm4.btn2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update tb_walikelas set nip="'+e1.Text+'", nama="'+e2.Text+'", jenis_kelamin="'+c1.Text+'", alamat="'+e3.Text+'", telp="'+c2.Text+'",matpel="'+e4.Text+'",pendidikan="'+e5.Text+'",status="'+c3.Text+'" WHERE id = :id');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_walikelas');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from tb_walikelas where = :id');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;

  zqry1.SQL.Add('select * from tb_walikelas');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
  end;

procedure TForm4.btn4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
  c1.ItemIndex := -1;
  c2.ItemIndex := -1;
  c3.ItemIndex := -1;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
  zqry1.Close;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM tb_walikelas');
  zqry1.Open;
end;

end.


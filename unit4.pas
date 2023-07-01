  unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
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
    lbl9: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
 zqry1.SQL.Add('INSERT INTO tb_walikelas VALUES (null, "'+e1.Text+'", "'+e2.Text+'","'+c1.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+c2.Text+'","'+e5.Text+'", "'+c3.Text+'” where id= 1');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT * FROM tb_walikelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN');

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add( 'UPDATE tb_walikelas SET nip="'+e1.Text+'", nama="'+e2.Text+'", alamat="'+e3.Text+'", telp="'+e4.Text+'", pendidikan="'+e5.Text+'", jenis_kelamin="'+c1.Text+'", matpel="'+c2.Text+'", status="'+c3.Text+'” where id= 1');
  zqry1. ExecSQL;

  Zqry1.SQL.Clear;
  Zqry1.SQL.Add('select * from tb_walikelas');
  Zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');

end;

procedure TForm1.btn3Click(Sender: TObject);
begin
 zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from tb_walikelas where walikelas_id= 1');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_walikelas');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
  c1.Clear;
  c2.Clear;
  c3.Clear;
end;
end.

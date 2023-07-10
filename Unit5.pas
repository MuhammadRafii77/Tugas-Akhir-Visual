unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids;

type
  TForm5 = class(TForm)
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
    e5: TEdit;
    e6: TEdit;
    c2: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    lbl9: TLabel;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    STATUS: TLabel;
    c3: TComboBox;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  id : string;
implementation

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('INSERT INTO tb_ortu (nik, nama, pendidikan, pekerjaan, telp, alamat, agama, jenis_kelamin, status) VALUES ("'+e1.Text+'", "'+e2.Text+'", "'+c1.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+e5.Text+'", "'+e6.Text+'", "'+c2.Text+'", "'+c3.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM tb_ortu');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('"DELETE FROM tb_ortu where ortu_id="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_ortu');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
  c1.Clear;
  e6.Clear;
  c2.Clear;
  c3.Clear;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update tb_ortu set nik="'+e1.Text+'", nama="'+e2.Text+'", pendidikan="'+c1.Text+'", pekerjaan="'+e3.Text+'", telp="'+e4.Text+'",alamat="'+e5.Text+'",agama="'+c1.Text+'",jenis_kelamin="'+c2.Text+'",status="'+c3.Text+'"where ortu_id="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_ortu');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
  id:=zqry1.Fields[0].AsString;
  e1.Text:=zqry1.Fields[1].AsString;
  e2.Text:=zqry1.Fields[2].AsString;
  c1.Text:=zqry1.Fields[3].AsString;
  e3.Text:=zqry1.Fields[4].AsString;
  e4.Text:=zqry1.Fields[5].AsString;
  e5.Text:=zqry1.Fields[6].AsString;
  e6.Text:=zqry1.Fields[7].AsString;
  c2.Text:=zqry1.Fields[8].AsString;
  c3.Text:=zqry1.Fields[9].AsString;

end;

end.

unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  id : string;

implementation

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('INSERT INTO tb_hubungan (siswa_id, ortu_id, status_hub, keterangan) VALUES ("'+e1.Text+'", "'+e2.Text+'", "'+e3.Text+'", "'+e4.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM tb_hubungan');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('"DELETE FROM tb_hubungan where hubungan_id="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_hubungan');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update tb_hubungan set siswa_id="'+e1.Text+'", ortu_id="'+e2.Text+'", status_hub="'+e3.Text+'", keterangan="'+e4.Text+'" where hubungan_id="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_hubungan');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
end;

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
id:=zqry1.Fields[0].AsString;
  e1.Text:=zqry1.Fields[1].AsString;
  e2.Text:=zqry1.Fields[2].AsString;
  e3.Text:=zqry1.Fields[3].AsString;
  e4.Text:=zqry1.Fields[4].AsString;
end;

end.

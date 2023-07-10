unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, ComCtrls;

type
  TForm7 = class(TForm)
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
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    c1: TComboBox;
    e6: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    d1: TDateTimePicker;
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  id : string;

implementation

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tb_riwayat_poin values(null, "'+e1.Text+'", "'+e2.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+e5.Text+'","'+FormatDateTime('yyyy-mm-dd',d1.Date)+'","'+c1.Text+'","'+e6.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_riwayat_poin');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
  c1.Clear;
  e6.Clear;
  
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from tb_riwayat_poin where riwayat_poin_id="'+id+'"');
  zqry1.ExecSQL;
  
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_riwayat_poin');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
  id:=zqry1.Fields[0].AsString;
  e1.Text:=zqry1.Fields[1].AsString;
  e2.Text:=zqry1.Fields[2].AsString;
  e3.Text:=zqry1.Fields[3].AsString;
  e4.Text:=zqry1.Fields[4].AsString;
  e5.Text:=zqry1.Fields[5].AsString;
  d1.date:=zqry1.Fields[6].AsDateTime;
  c1.Text:=zqry1.Fields[7].AsString;
  e6.Text:=zqry1.Fields[8].AsString;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update tb_riwayat_poin set siswa_id="'+e1.Text+'", poin_id="'+e2.Text+'", wali_id="'+e3.Text+'", ortu_id="'+e4.Text+'", kelas_id=", semester="'+c1.Text+'", status="'+e6.Text+'" where id="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_riwayat_poin');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');

end;

end.

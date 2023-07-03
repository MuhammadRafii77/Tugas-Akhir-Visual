unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm9 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    e1: TEdit;
    e2: TEdit;
    c1: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    e3: TEdit;
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
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.btn1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('INSERT INTO tb_poin (nama, bobot, jenis, status) VALUES ("'+e1.Text+'", "'+e2.Text+'", "'+c1.Text+'", "'+e3.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM tb_poin');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('UPDATE tb_poin SET nama="'+e1.Text+'", bobot="'+e2.Text+'", jenis="'+c1.Text+'", status="'+e3.Text+'" WHERE id = 0');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM tb_poin');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIEDIT');
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
  if zqry1.RecordCount > 0 then
  begin
    zqry1.Delete;
    ShowMessage('DATA BERHASIL DIHAPUS!');
  end;
end;

procedure TForm9.btn4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  c1.ItemIndex := -1;
  e3.Clear;
end;

end.


unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    lbl5: TLabel;
    btn1: TButton;
    btn3: TButton;
    btn4: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    btn2: TButton;
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  id : string;

implementation

{$R *.dfm}

procedure TForm6.btn4Click(Sender: TObject);
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('INSERT INTO tb_user (nama, password, level, status) VALUES ("' + edt1.Text + '", "' + edt2.Text + '", "' + edt3.Text + '", "' + edt4.Text + '")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_user');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm6.btn3Click(Sender: TObject);
begin

  zqry1.SQL.Clear;
  zqry1.SQL.Add('UPDATE tb_user SET nama = "' + edt1.Text + '", password = "' + edt2.Text + '", level = "' + edt3.Text + '", status = "' + edt4.Text + '"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_user');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');


end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
  id:=zqry1.Fields[0].AsString;
  edt1.Text:=zqry1.Fields[1].AsString;
  edt2.Text:=zqry1.Fields[2].AsString;
  edt3.Text:=zqry1.Fields[3].AsString;
  edt4.Text:=zqry1.Fields[4].AsString;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from tb_user where user_id="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_user');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

end.


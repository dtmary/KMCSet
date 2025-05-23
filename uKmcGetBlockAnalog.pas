unit uKmcGetBlockAnalog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UtilUnit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, DB, MemDS, DBAccess, Ora, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TfmKmcGetBlockAnalog = class(TForm)
    pnlBottom: TPanel;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    dbgAnalog: TDBGridEh;
    dsAnalog: TDataSource;
    qAnalog: TOraQuery;
    procedure FormCreate(Sender: TObject);
    procedure dbgAnalogDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    shablon_id:Int64;
    analog_group:Int64;
    block_id:Int64;
    procedure ActivateSQL;
  end;

var
  fmKmcGetBlockAnalog: TfmKmcGetBlockAnalog;
  function getBlockAnalog(v_shablon_id,v_analog_group:Int64; var v_block_id:Int64):boolean;

implementation

{$R *.dfm}

procedure TfmKmcGetBlockAnalog.ActivateSQL;
begin
  qAnalog.Close;
  qAnalog.ParamByName('shablon_id').AsLargeInt := shablon_id;
  qAnalog.ParamByName('analog_group').AsLargeInt := analog_group;
  qAnalog.Open;
  qAnalog.Locate('ID',block_id,[]);
end;

function getBlockAnalog(v_shablon_id,v_analog_group:Int64; var v_block_id:Int64):boolean;
var
  pos:TPoint;
begin
  result := false;
  Application.CreateForm(TfmKmcGetBlockAnalog,fmKmcGetBlockAnalog);
  fmKmcGetBlockAnalog.shablon_id := v_shablon_id;
  fmKmcGetBlockAnalog.analog_group := v_analog_group;
  fmKmcGetBlockAnalog.block_id := v_block_id;

  GetCursorPos(pos);
  fmKmcGetBlockAnalog.top:=pos.Y;
  fmKmcGetBlockAnalog.left:=pos.X;

  fmKmcGetBlockAnalog.ActivateSQL;
  if (fmKmcGetBlockAnalog.ShowModal=mrOk) then
  begin
    v_block_id := fmKmcGetBlockAnalog.qAnalog.FieldByName('ID').AsLargeInt;
    result := true;
  end;
  fmKmcGetBlockAnalog.Free;
end;

procedure TfmKmcGetBlockAnalog.dbgAnalogDblClick(Sender: TObject);
begin
  modalResult := mrOk;
end;

procedure TfmKmcGetBlockAnalog.FormCreate(Sender: TObject);
begin
  SetDatabase(DBName, Self);
end;

end.

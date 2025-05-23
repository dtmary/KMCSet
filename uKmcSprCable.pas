unit uKmcSprCable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, UtilUnit, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, ToolWin, DB, MemDS, DBAccess, Ora,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, ImgList, ActnList, uDMKmcSpr, uKmcEditCable,
  PropFilerEh, PropStorageEh;

type
  TfmKmcSprCable = class(TForm)
    StatusBar1: TStatusBar;
    dbgCable: TDBGridEh;
    qCable: TOraQuery;
    dsCable: TDataSource;
    tbTop: TToolBar;
    btnAdd: TToolButton;
    btnAddAnalog: TToolButton;
    btnDelete: TToolButton;
    ActionList: TActionList;
    ActAdd: TAction;
    ActEdit: TAction;
    ActDel: TAction;
    ImageList: TImageList;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActDelExecute(Sender: TObject);
    procedure ActEditExecute(Sender: TObject);
    procedure ActAddExecute(Sender: TObject);
  private
    { Private declarations }
    shablon_id:int64;
    procedure ActivateSQL;
  public
    { Public declarations }
  end;

  procedure getKmcSprCable(shablon_id:int64);

implementation

{$R *.dfm}

procedure getKmcSprCable(shablon_id:int64);
var
  i:integer;
  fmKmcSprCable: TfmKmcSprCable;
begin
  for i := 0 to MainFormUtil.MDIChildCount-1 do
    if MainFormUtil.MDIChildren[i] is TfmKmcSprCable then
      if TfmKmcSprCable(MainFormUtil.MDIChildren[i]).shablon_id = shablon_id then
      begin
        fmKmcSprCable := TfmKmcSprCable(MainFormUtil.MDIChildren[i]);
        fmKmcSprCable.BringToFront;
        fmKmcSprCable.SetFocus;
        break;
      end;
  if not(Assigned(fmKmcSprCable)) then
  begin
    Application.CreateForm(TfmKmcSprCable,fmKmcSprCable);
    fmKmcSprCable.shablon_id := shablon_id;
    fmKmcSprCable.ActivateSQL;
    fmKmcSprCable.FormStyle := fsMDIChild;
  end;
end;

procedure TfmKmcSprCable.ActAddExecute(Sender: TObject);
var
  new_cable_id:int64;
begin
  new_cable_id := 0;
  if EdtSprCable(shablon_id,new_cable_id) then
  begin
    ActivateSql;
    qCable.Locate('ID', new_cable_id, []);
  end;
end;

procedure TfmKmcSprCable.ActDelExecute(Sender: TObject);
begin
  try
    DBName.AutoCommit := false;
    DBName.StartTransaction;
    DmKmcSpr.spModify_KMC_Cable.ParamByName('Action').AsInteger := 1;
    DmKmcSpr.spModify_KMC_Cable.ParamByName('V_ID').AslargeInt := qCable.FieldByName('ID').AsLargeInt;
    DmKmcSpr.spModify_KMC_Cable.ExecProc;
    DBName.Commit;
  except
    DBName.Rollback;
  end;
  DBName.AutoCommit := true;
  ActivateSQL;
end;

procedure TfmKmcSprCable.ActEditExecute(Sender: TObject);
var
  cable_id: int64;
begin
  cable_id := qCable.FieldByName('ID').AsLargeInt;
  if EdtSprCable(shablon_id,cable_id) then
  begin
    ActivateSql;
    qCable.Locate('ID', cable_id, []);
  end;
end;

procedure TfmKmcSprCable.ActivateSQL;
begin
  qCable.Close;
  qCable.ParamByName('SHABLON_ID').AsLargeInt := shablon_id;
  qCable.Open;
  Caption := qCable.FieldByName('shablon_name').AsString + ': комплект кабелей';
end;

procedure TfmKmcSprCable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmKmcSprCable.FormCreate(Sender: TObject);
begin
  Setdatabase(DBName, Self);
end;

end.

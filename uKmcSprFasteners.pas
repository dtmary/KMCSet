unit uKmcSprFasteners;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UtilUnit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, DB, MemDS, DBAccess, Ora, ComCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ToolWin, ActnList, ImgList, uKmcEditFasteners, udmKMCspr,
  PropFilerEh, PropStorageEh, System.Actions, System.ImageList;

type
  TfmKmcSprFasteners = class(TForm)
    tbTop: TToolBar;
    btnAdd: TToolButton;
    btnAddAnalog: TToolButton;
    btnDelete: TToolButton;
    dbgFasteners: TDBGridEh;
    StatusBar1: TStatusBar;
    qFasteners: TOraQuery;
    dsFasteners: TDataSource;
    qInfo: TOraQuery;
    ImageList: TImageList;
    ActionList: TActionList;
    ActAdd: TAction;
    ActEdit: TAction;
    ActDel: TAction;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    spCopy_Fasteners: TOraStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActAddExecute(Sender: TObject);
    procedure ActEditExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure dbgFastenersDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgFastenersDragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
    block_id: int64;
    procedure ActivateSQL;
  public
    { Public declarations }
  end;

  procedure getKmcSprFasteners(block_id: int64);

implementation

{$R *.dfm}

procedure getKmcSprFasteners(block_id: int64);
var
  i:integer;
  fmKmcSprFasteners: TfmKmcSprFasteners;
begin
  for i := 0 to MainFormUtil.MDIChildCount-1 do
    if MainFormUtil.MDIChildren[i] is TfmKmcSprFasteners then
      if TfmKmcSprFasteners(MainFormUtil.MDIChildren[i]).block_id = block_id then
      begin
        fmKmcSprFasteners := TfmKmcSprFasteners(MainFormUtil.MDIChildren[i]);
        fmKmcSprFasteners.BringToFront;
        fmKmcSprFasteners.SetFocus;
        break;
      end;
  if not(Assigned(fmKmcSprFasteners)) then
  begin
  Application.CreateForm(TfmKmcSprFasteners, fmKmcSprFasteners);
  fmKmcSprFasteners.block_id := block_id;
  fmKmcSprFasteners.ActivateSQL;
  fmKmcSprFasteners.FormStyle := fsMdiChild;
  end;
end;

procedure TfmKmcSprFasteners.ActAddExecute(Sender: TObject);
begin
  if edtFasteners(block_id,'') then
    ActivateSQL;
end;

procedure TfmKmcSprFasteners.ActDelExecute(Sender: TObject);
var
  i:integer;
begin
      if Application.MessageBox(Pchar('Вы действительно хотите удалить выбранные крепления?: '), 'Предупреждение',
         mb_YesNo + mb_IconWarning) = mrYes then
  try
    DBName.AutoCommit := false;
    DBName.StartTransaction;
    if dbgFasteners.SelectedRows.Count = 0 then
      dbgFasteners.SelectedRows.CurrentRowSelected:=true;
    for i := 0 to dbgFasteners.SelectedRows.Count - 1 do
    begin
      qFasteners.GotoBookmark(dbgFasteners.SelectedRows[i]);
      dmKMCspr.spModify_kmc_fasteners.ParamByName('V_BLOCK_ID').AsLargeInt := block_id;
      dmKMCspr.spModify_kmc_fasteners.ParamByName('V_FASTENERS').AsString := qFasteners.FieldByName('PKI').AsString;
      dmKMCspr.spModify_kmc_fasteners.ParamByName('V_ITEM_COUNT').AsFloat := 0;
      dmKMCspr.spModify_kmc_fasteners.ExecProc;
    end;
    DBName.Commit;
  except
    DBName.Rollback;
    raise;
  end;
  DBName.AutoCommit := true;
  ActivateSQL;


 { if Application.MessageBox(Pchar('Вы действительно хотите удалить КМЧ: ' + qFasteners.FieldByName('namepki').AsString + ' ?'), 'Предупреждение',
         mb_YesNo + mb_IconWarning) = mrYes then
  begin

    dmKMCspr.spModify_kmc_fasteners.ExecProc;
    ActivateSQL;
  end;   }
end;

procedure TfmKmcSprFasteners.ActEditExecute(Sender: TObject);
begin
  if edtFasteners(block_id,qFasteners.FieldByName('PKI').AsString) then
    ActivateSQL;
end;

procedure TfmKmcSprFasteners.ActivateSQL;
begin
  qFasteners.Close;
  qFasteners.ParamByName('BLOCK_ID').AsLargeInt := block_id;
  qFasteners.Open;
  qInfo.Close;
  qInfo.ParamByName('BLOCK_ID').AsLargeInt := block_id;
  qInfo.Open;
  Caption := qInfo.FieldByName('SHABLON_NAME').AsString + ': крепление для '+ qInfo.FieldByName('BLOCK_NAME').AsString + ' (' + qInfo.FieldByName('COMENT').AsString
  + ')';
end;

procedure TfmKmcSprFasteners.dbgFastenersDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  i:integer;
  ds:tDataset;
  dbg:tDbgridEh;
begin
  if (Source is TDBGridEh) then
    if (TDBGridEh(Source).Name = 'dbgFasteners') then
    begin
      dbg := TDBGridEh(Source);
      ds  :=  dbg.DataSource.DataSet;
      spCopy_Fasteners.ParamByName('block_source').AsLargeInt := TfmKmcSprFasteners(dbg.Owner).block_id;
      spCopy_Fasteners.ParamByName('block_catcher').AsLargeInt := block_id;
      for i := 0 to dbg.SelectedRows.Count -1  do
      begin
        ds.GotoBookmark(dbg.SelectedRows[i]);
        spCopy_Fasteners.ParamByName('v_fasteners').AsString:= ds.FieldByName('PKI').AsString;
        spCopy_Fasteners.ExecProc;
      end;
      ActivateSQL;
    end;
end;

procedure TfmKmcSprFasteners.dbgFastenersDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=false;
  Show;
  Repaint;
  if (Source is tDbGridEh) and (Sender <> Source) then
    if (TDBGridEh(Source).Name = 'dbgFasteners') then
    begin
      Accept:=true;
    end;
end;

procedure TfmKmcSprFasteners.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmKmcSprFasteners.FormCreate(Sender: TObject);
begin
  SetDatabase(DBName, Self);
end;

end.

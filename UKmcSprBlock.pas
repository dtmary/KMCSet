unit UKmcSprBlock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UtilUnit, ComCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DB, DBAccess, Ora, MemDS, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, ToolWin, ActnList, uDMPki, uViewPki,
  ImgList, uKmcSprFasteners, PropFilerEh, PropStorageEh, uKmcEditBlock,
  System.ImageList, System.Actions;

type
  TfmKmcSprBlock = class(TForm)
    StatusBar1: TStatusBar;
    tbTop: TToolBar;
    dbgBlock: TDBGridEh;
    qBlock: TOraQuery;
    dsBlock: TOraDataSource;
    ActionList: TActionList;
    actAdd: TAction;
    actAddAnalog: TAction;
    ActDel: TAction;
    btnAdd: TToolButton;
    btnAddAnalog: TToolButton;
    btnDelete: TToolButton;
    ImageList: TImageList;
    ToolButton1: TToolButton;
    ActFasteners: TAction;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    qShablon: TOraQuery;
    spcopy_blocks: TOraStoredProc;
    ActEdit: TAction;
    ToolButton2: TToolButton;
    spSetShowDefault: TOraStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actAddExecute(Sender: TObject);
    procedure actAddAnalogExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure ActFastenersExecute(Sender: TObject);
    procedure dbgBlockDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbgBlockDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ActEditExecute(Sender: TObject);
    procedure dbgBlockCellClick(Column: TColumnEh);
    procedure dbgBlockGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
    shablon_id:int64;
    procedure ActivateSQL;
    procedure InsBlocks(isAnalog:boolean);
  public
    { Public declarations }
  end;

  procedure getKmcSprBlock(shablon_id:int64);

implementation

uses uDmKmcSpr;

{$R *.dfm}


procedure TfmKmcSprBlock.InsBlocks(isAnalog:boolean);
var
  WPKIFiltParams:TPKIFiltParams;
begin
  WPKIFiltParams.create;
  if isAnalog then
    WPKIFiltParams.pki := copy(qBlock.FieldByName('PKI').AsString,1,13);
  if ShowViewPkiFilt(WPKIFiltParams,1,1,true) then
  begin
    try
      DBName.AutoCommit := false;
      DBName.StartTransaction;
      dmKMCspr.spModify_KMC_Block.ParamByName('Action').AsLargeInt := 0;
      dmKMCspr.spModify_KMC_Block.ParamByName('V_ID').AsLargeInt := 0;
      dmKMCspr.spModify_KMC_Block.ParamByName('v_shablon_id').AsLargeInt := shablon_id;
      dmKMCspr.spModify_KMC_Block.ParamByName('V_CNT_MIN').AsInteger := 0;
      dmKMCspr.spModify_KMC_Block.ParamByName('V_CNT_MAX').AsInteger := 0;
      dmKMCspr.spModify_KMC_Block.ParamByName('v_coment').AsString := '';
      DMPKI.mdCasePki.First;
      while not DMPKI.mdCasePki.Eof do
      begin
        dmKMCspr.spModify_KMC_Block.ParamByName('v_pki').AsString := DMPKI.mdCasePki.FieldByName('PKI').AsString;
        dmKMCspr.spModify_KMC_Block.ExecProc;
        DMPKI.mdCasePki.next;
      end;
      DBName.commit;
    except
      DBName.Rollback;
    end;
    DBName.AutoCommit := true;
  end;
end;

procedure TfmKmcSprBlock.actAddAnalogExecute(Sender: TObject);
var
  newblock_id:Int64;
begin
 if EdtSprBlock(shablon_id, newblock_id, qBlock.FieldByName('ID').AsLargeInt) then
 begin
   ActivateSQL;
   qBlock.Locate('ID', newblock_id, []);
 end;
end;

procedure TfmKmcSprBlock.actAddExecute(Sender: TObject);
var
  newblock_id:int64;
begin
  dmKMCspr.spModify_KMC_Block.ParamByName('v_analog_block_id').AsString := '';
  InsBlocks(false);
  ActivateSQL;
  qBlock.Locate('ID', dmKMCspr.spModify_KMC_Block.ParamByName('V_ID').AsLargeInt, []);
end;

procedure TfmKmcSprBlock.ActDelExecute(Sender: TObject);
var
  i:integer;
begin
  if Application.MessageBox(Pchar('Вы действительно хотите удалить выбранные блоки?: '), 'Предупреждение',
         mb_YesNo + mb_IconWarning) = mrYes then
  try
    DBName.AutoCommit := false;
    DBName.StartTransaction;
    dmKMCspr.spModify_KMC_Block.ParamByName('Action').AsInteger := 1;
    if dbgBlock.SelectedRows.Count = 0 then
      dbgBlock.SelectedRows.CurrentRowSelected:=true;
    for i := 0 to dbgBlock.SelectedRows.Count - 1 do
    begin
      qBlock.GotoBookmark(dbgBlock.SelectedRows[i]);
      dmKMCspr.spModify_KMC_Block.ParamByName('V_ID').AslargeInt := qBlock.FieldByName('ID').AsLargeInt;
      dmKMCspr.spModify_KMC_Block.ExecProc;
    end;
    DBName.Commit;
  except
    DBName.Rollback;
    raise;
  end;
  DBName.AutoCommit := true;
  ActivateSQL;
end;

procedure TfmKmcSprBlock.ActEditExecute(Sender: TObject);
var
  newblock_id: Int64;
begin
  newblock_id := qBlock.FieldByName('ID').AsLargeInt;
  if EdtSprBlock(shablon_id, newblock_id, 0) then
  begin
    ActivateSQL;
    qBlock.Locate('ID', newblock_id, []);
  end;
end;

procedure TfmKmcSprBlock.ActFastenersExecute(Sender: TObject);
begin
  getKmcSprFasteners(qBlock.FieldByName('ID').AsLargeInt);
end;

procedure TfmKmcSprBlock.ActivateSQL;
begin
  qBlock.Close;
  qBlock.ParamByName('shablon_id').AsLargeInt := shablon_id;
  qBlock.Open;
  qShablon.Close;
  qShablon.ParamByName('shablon_id').AsLargeInt := shablon_id;
  qShablon.Open;
  Caption := qShablon.FieldByName('naim').AsString + ': комплект блоков';
end;

procedure TfmKmcSprBlock.dbgBlockCellClick(Column: TColumnEh);
begin
  if (Column.FieldName = 'SHOW_DEFAULT') and
     (qBlock.FieldByName('SHOW_DEFAULT').AsInteger = 0) then
  begin
    spSetShowDefault.ParamByName('V_ID').AsLargeInt := qBlock.FieldByName('ID').AsLargeInt;
    spSetShowDefault.ExecProc;
    ActivateSQL;
    qBlock.Locate('ID', spSetShowDefault.ParamByName('V_ID').AsLargeInt, []);
  end;
end;

procedure TfmKmcSprBlock.dbgBlockDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  i:integer;
  ds:tDataset;
  dbg:tDbgridEh;
begin
  if (Source is TDBGridEh) then
    if (TDBGridEh(Source).Name = 'dbgBlock') then
    begin
      dbg := TDBGridEh(Source);
      ds  :=  dbg.DataSource.DataSet;
      spcopy_blocks.ParamByName('v_shablon_id').AsLargeInt := shablon_id;
      spcopy_blocks.ParamByName('rec_count').AsLargeInt := dbg.SelectedRows.Count;
      //Копировать кабели и крепёж?
      spcopy_blocks.ParamByName('copy_cables').AsInteger := 0;
      spcopy_blocks.ParamByName('copy_fasteners').AsInteger := 0;
      for i := 1 to dbg.SelectedRows.Count do
      begin
        ds.GotoBookmark(dbg.SelectedRows[i-1]);
        spcopy_blocks.ParamByName('v_block_ids').ItemAsFloat[i] := ds.FieldByName('ID').AsFloat;
      end;
      spcopy_blocks.ExecProc;
      ActivateSQL;
    end;
end;

procedure TfmKmcSprBlock.dbgBlockDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=false;
  Show;
  Repaint;
  if (Source is tDbGridEh) and (Sender <> Source) then
    if (TDBGridEh(Source).Name = 'dbgBlock') then
    begin
      Accept:=true;
    end;
end;

procedure TfmKmcSprBlock.dbgBlockGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qBlock.FieldByName('Color').AsInteger = 0 then
    Background := clMoneyGreen
  else
    Background := clSkyBlue;
end;

procedure getKmcSprBlock(shablon_id:int64);
var
  i:integer;
  fmKmcSprBlock: TfmKmcSprBlock;
begin
  for i := 0 to MainFormUtil.MDIChildCount-1 do
    if MainFormUtil.MDIChildren[i] is TfmKmcSprBlock then
      if TfmKmcSprBlock(MainFormUtil.MDIChildren[i]).shablon_id = shablon_id then
      begin
        fmKmcSprBlock := TfmKmcSprBlock(MainFormUtil.MDIChildren[i]);
        fmKmcSprBlock.BringToFront;
        fmKmcSprBlock.SetFocus;
        break;
      end;
  if not(Assigned(fmKmcSprBlock)) then
  begin
    Application.CreateForm(TfmKmcSprBlock, fmKmcSprBlock);
    fmKmcSprBlock.shablon_id := shablon_id;
    fmKmcSprBlock.ActivateSQL;
    fmKmcSprBlock.FormStyle := fsMdiChild;
  end;
end;

procedure TfmKmcSprBlock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmKmcSprBlock.FormCreate(Sender: TObject);
var
  i:integer;
begin
  SetDatabase(DBName, Self);
   for i:=0 to ComponentCount - 1 do
    if Components[i] is TControl then
      TControl(Components[i]).ControlStyle:=TControl(Components[i]).ControlStyle + [csDisplayDragImage];
end;

end.

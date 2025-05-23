unit uKMCSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UtilUnit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, DB, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, ExtCtrls,
  ComCtrls, MemDS, DBAccess, Ora, StdCtrls, Buttons, MemTableDataEh,
  MemTableEh, ActnList, uBluePrint, Menus, ToolWin, UKmcSprBlock, uKMCDropDawnAnalog, uKmcSprShablon,
  ImgList, uKMCRes, uOpenCalc, uKmcGetBlockAnalog, System.ImageList,
  System.Actions;

type
  TfmKMCSet = class(TForm)
    qBlock: TOraQuery;
    StatusBar1: TStatusBar;
    pnlBlock: TPanel;
    dsBlock: TDataSource;
    Splitter1: TSplitter;
    pnlCable: TPanel;
    qCable: TOraQuery;
    dsCable: TDataSource;
    Panel1: TPanel;
    Splitter2: TSplitter;
    Panel2: TPanel;
    Label1: TLabel;
    dbgSelected: TDBGridEh;
    dbgBlock: TDBGridEh;
    Label2: TLabel;
    Label3: TLabel;
    btnAddToSort: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    btnSelectBlock: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dsSelected: TDataSource;
    mtSelected: TMemTableEh;
    mtSelectedID: TIntegerField;
    mtSelectedPKI: TStringField;
    mtSelectedNAMEPKI: TStringField;
    mtSelectedCOMENT: TStringField;
    mtSelectedSELECTED_ID: TIntegerField;
    mtCable: TMemTableEh;
    mtCableSELECTED_ID: TIntegerField;
    mtCablePKI: TStringField;
    mtCableNAMEPKI: TStringField;
    mtCableTYP_MOD: TStringField;
    mtCableBLOCK1_ID: TIntegerField;
    mtCableBLOCK2_ID: TIntegerField;
    qDelSelected: TOraQuery;
    dbgCable: TDBGridEh;
    qSelected: TOraQuery;
    qFasteners: TOraQuery;
    dsFasteners: TOraDataSource;
    pnlFasteners: TPanel;
    DBGridEh2: TDBGridEh;
    Label4: TLabel;
    Splitter3: TSplitter;
    ActionList: TActionList;
    actShowCablePrint: TAction;
    pmCable: TPopupMenu;
    N1: TMenuItem;
    qId: TOraQuery;
    ActSelectBlock: TAction;
    ActDeselectBlock: TAction;
    ToolBar1: TToolBar;
    actSprBlock: TAction;
    mtBlock: TMemTableEh;
    dsAnalog: TDataSource;
    qAnalog: TOraQuery;
    qGetBlock: TOraQuery;
    ImageList: TImageList;
    actCreateKMC: TAction;
    ActToCalc: TAction;
    qKmcResult: TOraQuery;
    ToolButton2: TToolButton;
    spAddSelectedBlock: TOraStoredProc;
    mtBlockID: TLargeintField;
    mtBlockNAMEPKI: TStringField;
    mtBlockCOMENT: TStringField;
    mtBlockCNT_MIN: TIntegerField;
    mtBlockCNT_MAX: TIntegerField;
    mtBlockAnalog_cnt: TIntegerField;
    mtBlockAnalog_group: TLargeintField;
    mtBlockPKI2: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbgCableGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actShowCablePrintExecute(Sender: TObject);
    procedure ActSelectBlockExecute(Sender: TObject);
    procedure ActDeselectBlockExecute(Sender: TObject);
    procedure dbgBlockDblClick(Sender: TObject);
    procedure dbgSelectedDblClick(Sender: TObject);
    procedure actSprBlockExecute(Sender: TObject);
    procedure dbgBlockGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbgCableColumns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure actCreateKMCExecute(Sender: TObject);
    procedure ActToCalcExecute(Sender: TObject);
    procedure dbgBlockColumns0GroupGetKeyValue(Sender: TCustomDBGridEh;
      Column: TColumnEh; var KeyValue: Variant);
    procedure dbgBlockColumns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);

  private
    { Private declarations }
    shablon_id:Int64;
    shablon_name:String;
    KMC_ID:int64;
    fmKMCDropDawnAnalog:TfmKMCDropDawnAnalog;
    procedure ActivateSQL;
    procedure recalc;
    function isUsing(block_id:integer):boolean;
  public
    { Public declarations }
  end;


procedure GetWndKMCSet;
var
  fmKMCSet: TfmKMCSet;

implementation

{$R *.dfm}

procedure TfmKMCSet.actCreateKMCExecute(Sender: TObject);
begin
  ViewKmcRes(KMC_ID,shablon_id,shablon_name);
end;

procedure TfmKMCSet.ActDeselectBlockExecute(Sender: TObject);
begin
  qDelSelected.ParamByName('V_REC_ID').AsLargeInt := qSelected.FieldByName('REC_ID').AsLargeInt;
  qDelSelected.ExecSQL;
  recalc;
end;

procedure TfmKMCSet.ActivateSQL;
begin
  qId.open;
  KMC_ID := qId.FieldByName('KMC_ID').AsLargeInt;
  qBlock.ParamByName('SHABLON_ID').AsLargeInt := SHABLON_ID;
  qBlock.Open;
  mtBlock.LoadFromDataSet(qBlock,0,lmAppend,false);
end;

procedure GetWndKMCSet;
var
  shablon_id:int64;
  shablon_name:String;
begin
  if getKmcShablonFromSpr(shablon_id,shablon_name) then
  begin
    Application.CreateForm(TfmKMCSet,fmKMCSet);
    fmKMCSet.shablon_name := shablon_name;
    fmKMCSet.Caption := 'Сборка КМЧ '+shablon_name;
    fmKMCSet.shablon_id := shablon_id;
    fmKMCSet.ActivateSQL;
    fmKMCSet.FormStyle := fsMDIChild;
  end;
end;

procedure TfmKMCSet.ActSelectBlockExecute(Sender: TObject);
var
  i:integer;
  bm:TBookmark;
  bmSelected:TBookmark;
  macroblocks:string;
  errMes:string;
begin
  try
    errMes := '';
    bm := mtBlock.GetBookmark;
    mtBlock.DisableControls;
    mtSelected.DisableControls;
    bmSelected := mtSelected.GetBookmark;
    if (dbgBlock.SelectedRows.Count = 0) then
      dbgBlock.SelectedRows.CurrentRowSelected:=true;
    for i := 0 to dbgBlock.SelectedRows.Count - 1 do
    begin
      dbgBlock.DataSource.DataSet.GotoBookmark(dbgBlock.SelectedRows[i]);
      spAddSelectedBlock.ParamByName('V_BLOCK_ID').AsLargeInt := mtBlock.FieldByName('ID').AsLargeInt;
      spAddSelectedBlock.ParamByName('V_KMC_ID').AsLargeInt := KMC_ID;
      spAddSelectedBlock.ExecProc;
      if (spAddSelectedBlock.ParamByName('RESULT').AsInteger = 1) then
        errMes := errMes + mtBlock.FieldByName('PKI').AsString +': уже добавлено максимальное кол-во' + #13;
    end;
    recalc;
    dbgBlock.SelectedRows.Clear;
    mtBlock.GotoBookmark(bm);
    mtSelected.GotoBookmark(bmSelected);
  finally
    mtBlock.EnableControls;
    mtSelected.EnableControls;
  end;
  if not(errMes='') then
      Application.MessageBox(PChar('Ошибка: ' + #13 + errMes), 'Ошибка', mb_IconError);
end;

procedure TfmKMCSet.actShowCablePrintExecute(Sender: TObject);
begin
  ShowBluePrint(qCable.FieldByName('PKI').AsString);
end;

procedure TfmKMCSet.actSprBlockExecute(Sender: TObject);
begin
  getKmcSprBlock(shablon_id);
end;

procedure TfmKMCSet.ActToCalcExecute(Sender: TObject);
var
  OO: TOpenCalc;
  ValueArrayBlock: OLEVariant;
  ValueArrayCable: OLEVariant;
  ValueArrayFasteners: OLEVariant;
  cntBlock:integer;
  cntCable:integer;
  cntFasteners:integer;
  prevPage:integer;
  recNo:integer;
begin
  OO := TOpenCalc.Create;
  OO.Connect := true;
  if OO.Connect then
  begin
    //TfrmSplashSkl(frmSpl).ShowAction('  Экспорт данных в Open Office...');
    qKmcResult.Close;
    qKmcResult.ParamByName('v_kmc_id').AsLargeInt := KMC_ID;
    qKmcResult.Open;
    cntBlock:=0;
    cntCable:=0;
    cntFasteners:=0;
    while not qKmcResult.Eof do
    begin
      if qKmcResult.FieldByName('PAGE').AsInteger = 1 then
        cntBlock := cntBlock + 1;
      if qKmcResult.FieldByName('PAGE').AsInteger = 2 then
        cntCable := cntCable + 1;
      if qKmcResult.FieldByName('PAGE').AsInteger = 3 then
        cntFasteners := cntFasteners + 1;
      qKmcResult.Next;
    end;
    ValueArrayBlock := VarArrayCreate([1, 3, 1, cntBlock], varVariant);
    ValueArrayCable := VarArrayCreate([1, 3, 1, cntCable], varVariant);
    ValueArrayFasteners := VarArrayCreate([1, 3, 1, cntFasteners], varVariant);
    qKmcResult.First;
    PrevPage := 0;
    while not qKmcResult.Eof do
    begin
      if (PrevPage < qKmcResult.Fieldbyname('Page').AsInteger) then
      begin
        PrevPage := qKmcResult.Fieldbyname('Page').AsInteger;
        RecNo := 1;
      end;
      if (qKmcResult.Fieldbyname('PAGE').asInteger = 1) then
      begin
        ValueArrayBlock[1, RecNo] := qKmcResult.Fieldbyname('PKI').asstring;
        ValueArrayBlock[2, RecNo] := qKmcResult.Fieldbyname('NAMEPKI').asstring;
        ValueArrayBlock[3, RecNo] := qKmcResult.Fieldbyname('ITC').asstring;
      end;
      if (qKmcResult.Fieldbyname('PAGE').asInteger = 2) then
      begin
        ValueArrayCable[1, RecNo] := qKmcResult.Fieldbyname('PKI').asstring;
        ValueArrayCable[2, RecNo] := qKmcResult.Fieldbyname('NAMEPKI').asstring;
        ValueArrayCable[3, RecNo] := qKmcResult.Fieldbyname('ITC').asstring;
      end;
      if (qKmcResult.Fieldbyname('PAGE').asInteger = 3) then
      begin
        ValueArrayFasteners[1, RecNo] := qKmcResult.Fieldbyname('PKI').asstring;
        ValueArrayFasteners[2, RecNo] := qKmcResult.Fieldbyname('NAMEPKI').asstring;
        ValueArrayFasteners[3, RecNo] := qKmcResult.Fieldbyname('ITC').asstring;
      end;
      RecNo := RecNo + 1;
      qKmcResult.Next;
    end;
    OO.OpenDocument(ExtractFilePath(Application.ExeName) + 'rpt_xls\KMCResult.ods', [omHidden,omAsTemplate], mmAlwaysNoWarn);
    OO.ReplaceValue('ShablName',shablon_name);
    OO.ScreenUpdating := false;
    OO.ActiveSheet := 0;
    OO.SetCellByArray(0, 4, ValueArrayBlock);
    OO.ActiveSheet := 1;
    OO.SetCellByArray(0, 4, ValueArrayCable);
    OO.ActiveSheet := 2;
    OO.SetCellByArray(0, 4, ValueArrayFasteners);
    OO.ActiveSheet := 0;
    OO.Visible:=true;
  end;
end;

procedure TfmKMCSet.dbgBlockColumns0GroupGetKeyValue(
  Sender: TCustomDBGridEh; Column: TColumnEh; var KeyValue: Variant);
begin
  KeyValue := '';
end;

procedure TfmKMCSet.dbgBlockColumns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  analog_id:Int64;
begin
  if (mtBlock.FieldByName('analog_cnt').AsInteger < 2) then exit;
  analog_id := mtBlock.FieldByName('ID').AsLargeInt;
  if getBlockAnalog(shablon_id, mtBlock.FieldByName('analog_group').AsLargeInt, analog_id) then
  begin
    mtBlock.DisableControls;
    mtBlock.Edit;
    qGetBlock.Close;
    qGetBlock.ParamByName('ID').AsLargeInt := analog_id;
    qGetBlock.Open;
    mtBlock.FieldByName('ID').AsLargeInt := analog_id;
    mtBlock.FieldByName('PKI').AsString := qGetBlock.FieldByName('PKI').AsString;
    mtBlock.FieldByName('NAMEPKI').AsString := qGetBlock.FieldByName('NAMEPKI').AsString;
    mtBlock.FieldByName('COMENT').AsString := qGetBlock.FieldByName('COMENT').AsString;
    mtBlock.Post;
    mtBlock.EnableControls;
  end;
end;

procedure TfmKMCSet.dbgBlockDblClick(Sender: TObject);
begin
  ActSelectBlock.Execute;
end;

procedure TfmKMCSet.dbgBlockGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not(mtBlock.Active) then exit;
  if (mtBlock.FieldByName('analog_cnt').AsInteger > 1) then
    Background := clMoneyGreen
end;

procedure TfmKMCSet.dbgCableColumns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  actShowCablePrint.Execute;
end;

procedure TfmKMCSet.dbgCableGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 // if (Column.FieldName = 'BLOCK1') or (Column.FieldName = 'BLOCK2') then
 //AFont.Color := clBlack;
 //if (qCable.FieldByName('BLOCK1').AsString = qBlock.FieldByName('PKI').AsString) then
 //  AFont.Color := clBlue;
end;

procedure TfmKMCSet.dbgSelectedDblClick(Sender: TObject);
begin
  ActDeselectBlock.Execute;
end;

procedure TfmKMCSet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmKMCSet.FormCreate(Sender: TObject);
begin
  SetDatabase(DBName, Self);
end;

// Проверка блока на наличие
function TfmKMCSet.isUsing(block_id:integer):boolean;
var
  bm:TBookmark;
begin
  bm := mtSelected.GetBookmark;
  result := false;
  mtSelected.First;
  while not(mtSelected.Eof) do
  begin
    if (mtSelected.FieldByName('ID').AsLargeInt = block_id) then
    begin
      result := true;
      break;
    end;
    mtSelected.Next;
  end;
  mtSelected.GotoBookmark(bm);
end;

procedure TfmKMCSet.recalc;
begin
  qSelected.Close;
  qSelected.ParamByName('V_KMC_ID').AsLargeInt := KMC_ID;
  qSelected.Open;
  qCable.Close;
  qCable.ParamByName('V_KMC_ID').AsLargeInt := KMC_ID;
  qCable.Open;
  qFasteners.close;
  qFasteners.ParamByName('V_KMC_ID').AsLargeInt := KMC_ID;
  qFasteners.Open;
end;

end.

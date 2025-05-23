unit uKmcSprShablon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UtilUnit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, ImgList, DB, MemDS, DBAccess, Ora, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, ToolWin, ComCtrls, ExtCtrls, StdCtrls,
  Buttons, uKMCEditShablon, uDMKmcSpr, uKmcSprBlock, uKmcSprCable,
  PropFilerEh, PropStorageEh;

type
  TfmKmcSprShablon = class(TForm)
    tbTop: TToolBar;
    dbgShablon: TDBGridEh;
    qShablon: TOraQuery;
    dsShablon: TDataSource;
    ActionList: TActionList;
    actNew: TAction;
    actCopy: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actBlocks: TAction;
    actCables: TAction;
    actFasteners: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ImageList: TImageList;
    pnlBottom: TPanel;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    procedure FormCreate(Sender: TObject);
    procedure ActivateSQL;
    procedure FormShow(Sender: TObject);
    procedure dbgShablonDblClick(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actBlocksExecute(Sender: TObject);
    procedure actCablesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmKmcSprShablon: TfmKmcSprShablon;

  procedure getKmcSprShablon;
  function getKmcShablonFromSpr(var shablon_id:Int64; var shablon_name:String):boolean;

implementation

{$R *.dfm}

function getKmcShablonFromSpr(var shablon_id:Int64; var shablon_name:String):boolean;
begin
  Application.CreateForm(TfmKmcSprShablon,fmKmcSprShablon);
  fmKmcSprShablon.Position := poScreenCenter;
  fmKmcSprShablon.ActivateSQL;
  if (fmKmcSprShablon.ShowModal = mrOk) then
  begin
    shablon_id := fmKmcSprShablon.qShablon.FieldByName('ID').AsLargeInt;
    shablon_name := fmKmcSprShablon.qShablon.FieldByName('NAIM').AsString;
    result := true;
  end
  else
  begin
    result := false;
  end;
  fmKmcSprShablon.Free;
end;

procedure getKmcSprShablon;
begin
  Application.CreateForm(TfmKmcSprShablon,fmKmcSprShablon);
  fmKmcSprShablon.ActivateSQL;
  fmKmcSprShablon.FormStyle := fsMdiChild;
end;

procedure TfmKmcSprShablon.actBlocksExecute(Sender: TObject);
begin
  getKmcSprBlock(qShablon.FieldByName('id').AsLargeInt);
end;

procedure TfmKmcSprShablon.actCablesExecute(Sender: TObject);
begin
  getKmcSprCable(qShablon.FieldByName('ID').AsLargeInt);
end;

procedure TfmKmcSprShablon.actDeleteExecute(Sender: TObject);
begin
  if Application.MessageBox(Pchar('Вы действительно хотите удалить КМЧ: ' + qShablon.FieldByName('NAIM').AsString + ' ?'), 'Предупреждение',
         mb_YesNo + mb_IconWarning) = mrYes then
  begin
    dmKmcSpr.spmodify_kmc_shablon.ParamByName('ACTION').AsInteger := 1;
    dmKmcSpr.spmodify_kmc_shablon.ParamByName('v_id').AsLargeInt := qShablon.FieldByName('ID').AsLargeInt;
    try
      DBName.AutoCommit := false;
      DBName.StartTransaction;
      dmKmcSpr.spmodify_kmc_shablon.ExecProc;
      DBName.Commit;
      ActivateSQL;
    except
      DBName.Rollback;
      Application.MessageBox(PChar('Не заполнены заводские номера'), 'Ошибка',
        mb_Ok + mb_IconError);
    end;
      DBName.AutoCommit := true;
  end;
end;

procedure TfmKmcSprShablon.actEditExecute(Sender: TObject);
var
  bm:TBookmark;
begin
  bm := qShablon.GetBookmark;
  EdtSprShablon(qShablon.FieldByName('ID').AsLargeInt);
  ActivateSQL;
  qShablon.GotoBookmark(bm);
end;

procedure TfmKmcSprShablon.ActivateSQL;
begin
  qShablon.Close;
  qShablon.Open;
end;

procedure TfmKmcSprShablon.actNewExecute(Sender: TObject);
var
  newid:int64;
begin
  newid := EdtSprShablon(0);
  if newid>0 then
  begin
    ActivateSQL;
    qShablon.Locate('ID',newid, []);
  end;
end;

procedure TfmKmcSprShablon.dbgShablonDblClick(Sender: TObject);
begin
  if formStyle = fsMDIChild then
  begin
    actEdit.Execute;
  end
  else
  begin
    modalResult := mrOk;
  end;
end;

procedure TfmKmcSprShablon.FormCreate(Sender: TObject);
begin
  SetDatabase(DbName, Self);
end;

procedure TfmKmcSprShablon.FormShow(Sender: TObject);
begin
  if formStyle = fsMDIChild then
  begin
    fmKmcSprShablon.pnlBottom.Visible := false;
    tbTop.Visible := true;
  end
  else
  begin
    fmKmcSprShablon.pnlBottom.Visible := true;
    tbTop.Visible := false;
  end;
end;

end.

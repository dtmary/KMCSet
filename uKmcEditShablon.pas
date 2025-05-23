unit uKmcEditShablon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UtilUnit, ToolWin, ComCtrls, StdCtrls, Mask, DBCtrlsEh, uViewPki,
  ImgList, ActnList, uDmPki, DB, MemDS, DBAccess, Ora, DBGridEh, DBLookupEh,
  Buttons, ExtCtrls, uDMKmcSpr;

type
  TfmKmcEditShablon = class(TForm)
    cedtDecnum_orig: TDBComboBoxEh;
    Label2: TLabel;
    lNamepos: TLabel;
    ActionList: TActionList;
    ImageList: TImageList;
    qLoko: TOraQuery;
    dsLoko: TDataSource;
    cbLoko: TDBLookupComboboxEh;
    edtNaim: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    ActSave: TAction;
    ActClose: TAction;
    pnlBottom: TPanel;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    qShablon: TOraQuery;
    procedure FormCreate(Sender: TObject);
    procedure cedtDecnum_origButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure cedtDecnum_origChange(Sender: TObject);
  private
    { Private declarations }
    shablon_id:int64;
    copy_from_id:int64;
    procedure GetData(v_id:int64);
  public
    { Public declarations }
  end;

var
  fmKmcEditShablon: TfmKmcEditShablon;

  function EdtSprShablon(shablon_id:int64):int64;
  function CopySprShablon(shablon_id:int64):int64;

implementation

{$R *.dfm}

procedure TfmKmcEditShablon.GetData(v_id:int64);
begin
  qShablon.Close;
  qShablon.ParamByName('V_ID').AsLargeInt := v_id;
  qShablon.Open;
  edtNaim.Text := qShablon.FieldByName('NAIM').AsString;
  cedtDecnum_orig.Text := qShablon.FieldByName('DECNUM_ORIG').AsString;
  qLoko.Locate('NUM', qShablon.FieldByName('LOKO_ID').AsLargeInt, []);
  cbLoko.Value :=  qShablon.FieldByName('LOKO_ID').AsLargeInt;
end;

function EdtSprShablon(shablon_id:int64):int64;
begin
  Application.CreateForm(TfmKmcEditShablon,fmKmcEditShablon);
  fmKmcEditShablon.shablon_id := shablon_id;
  fmKmcEditShablon.copy_from_id := 0;
  fmKmcEditShablon.GetData(shablon_id);
  if (fmKmcEditShablon.ShowModal = mrOk) then
    result := fmKmcEditShablon.shablon_id
  else
    result := 0;
  fmKmcEditShablon.Free;
end;

function CopySprShablon(shablon_id:int64):int64;
begin
  Application.CreateForm(TfmKmcEditShablon,fmKmcEditShablon);
  fmKmcEditShablon.shablon_id := 0;
  fmKmcEditShablon.copy_from_id := shablon_id;
  fmKmcEditShablon.GetData(shablon_id);
  if (fmKmcEditShablon.ShowModal = mrOk) then
    result := fmKmcEditShablon.shablon_id
  else
    result := 0;
  fmKmcEditShablon.Free;
end;

procedure TfmKmcEditShablon.BitBtn3Click(Sender: TObject);
begin
  if shablon_id=0 then
  begin
    if copy_from_id > 0 then
    begin
      //TODO: Копирование шаблона
    end;
    DMKmcSpr.spmodify_kmc_shablon.ParamByName('ACTION').AsInteger := 0;
  end
  else
  begin
    DMKmcSpr.spmodify_kmc_shablon.ParamByName('ACTION').AsInteger := 2;
  end;
  DMKmcSpr.spmodify_kmc_shablon.ParamByName('V_ID').AsLargeInt := shablon_id;
  DMKmcSpr.spmodify_kmc_shablon.ParamByName('v_naim').AsString := edtNaim.Text;
  DMKmcSpr.spmodify_kmc_shablon.ParamByName('v_loko_id').AsInteger := cbLoko.Value;
  DMKmcSpr.spmodify_kmc_shablon.ParamByName('v_decnum_orig').AsString := cedtDecnum_orig.Text;
  try
  DBName.AutoCommit := false;
  DBName.StartTransaction;
  DMKmcSpr.spmodify_kmc_shablon.ExecProc;
  DBName.Commit;
  Shablon_id := DMKmcSpr.spmodify_kmc_shablon.ParamByName('RESULT').AsLargeInt;
  except
    DBName.Rollback;
  end;
  DBName.AutoCommit := true;
  ModalResult := mrOk;
end;

procedure TfmKmcEditShablon.cedtDecnum_origButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if ShowViewPki(1, 1,true) then
  begin
    DmPki.mdCasePki.First;
    cedtDecnum_orig.Text := DmPki.mdCasePKI.FieldByName('PKI').asString;
    lNamepos.Caption := DmPki.mdCasePKI.FieldByName('NAMEPKI').asString;
  end;
end;

procedure TfmKmcEditShablon.cedtDecnum_origChange(Sender: TObject);
begin
  DmPki.qMdByPki.Close;
  DmPki.qMdByPki.ParamByName('PKI').AsString := cedtDecnum_orig.Text;
  DmPki.qMdByPki.Open;
  if DmPki.qMdByPki.RecordCount = 0 then
    lNamepos.Caption := 'Не найден'
  else
    lNamepos.Caption := DmPki.qMdByPki.FieldByName('NAMEPKI').AsString;
end;

procedure TfmKmcEditShablon.FormCreate(Sender: TObject);
begin
  SetDataBase(DBName, Self);
  qLoko.Open;
end;

end.

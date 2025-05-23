unit uKmcEditFasteners;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UtilUnit, StdCtrls, Buttons, ExtCtrls, DBCtrlsEh, Mask, DB,
  MemDS, DBAccess, Ora, uDmPki, uViewPki, udmKMCspr;

type
  TfmKMCEditFasteners = class(TForm)
    qFasteners: TOraQuery;
    Label2: TLabel;
    edtPki: TDBComboBoxEh;
    lNamepos: TLabel;
    edtCnt: TDBNumberEditEh;
    Label1: TLabel;
    pnlBottom: TPanel;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure edtPkiChange(Sender: TObject);
    procedure edtPkiButtonClick(Sender: TObject; var Handled: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    block_id:int64;
    pki:String;
    procedure ActivateSQL;
  public
    { Public declarations }
  end;

var
  fmKMCEditFasteners: TfmKMCEditFasteners;

  function edtFasteners(block_id:int64; pki:String):boolean;
implementation

{$R *.dfm}

procedure TfmKMCEditFasteners.ActivateSQL;
begin
  qFasteners.Close;
  qFasteners.ParamByName('BLOCK_ID').AsLargeInt := block_id;
  qFasteners.ParamByName('FASTENERS').AsString := fmKMCEditFasteners.edtPki.Text;
  qFasteners.Open;
  Caption := qFasteners.FieldByName('BLOCK_NAME').AsString;
  edtCnt.Value := qFasteners.FieldByName('BLOCK_NAME').AsFloat;
end;

function edtFasteners(block_id:int64; pki:String):boolean;
begin
  result := false;
  Application.CreateForm(TfmKMCEditFasteners, fmKMCEditFasteners);
  fmKMCEditFasteners.block_id := block_id;
  fmKMCEditFasteners.pki := pki;
  if (fmKMCEditFasteners.ShowModal = mrOk) then
  begin
    dmKMCspr.spModify_kmc_fasteners.ParamByName('V_BLOCK_ID').AsLargeInt := block_id;
    dmKMCspr.spModify_kmc_fasteners.ParamByName('V_FASTENERS').AsString := fmKMCEditFasteners.edtPki.Value;
    dmKMCspr.spModify_kmc_fasteners.ParamByName('V_ITEM_COUNT').AsFloat := fmKMCEditFasteners.edtCnt.Value;
    dmKMCspr.spModify_kmc_fasteners.ExecProc;
    result := true;
  end;
  fmKMCEditFasteners.Free;
end;

procedure TfmKMCEditFasteners.edtPkiButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if ShowViewPki(1, 1,true) then
  begin
    DmPki.mdCasePki.First;
    edtPki.Text := DmPki.mdCasePKI.FieldByName('PKI').asString;
    lNamepos.Caption := DmPki.mdCasePKI.FieldByName('NAMEPKI').asString;
  end;
end;

procedure TfmKMCEditFasteners.edtPkiChange(Sender: TObject);
begin
  DmPki.qMdByPki.Close;
  DmPki.qMdByPki.ParamByName('PKI').AsString := edtPki.Text;
  DmPki.qMdByPki.Open;
  if DmPki.qMdByPki.RecordCount = 0 then
    lNamepos.Caption := 'Не найден'
  else
    lNamepos.Caption := DmPki.qMdByPki.FieldByName('NAMEPKI').AsString;
end;

procedure TfmKMCEditFasteners.FormCreate(Sender: TObject);
begin
  SetDataBase(DBName, Self);
end;

procedure TfmKMCEditFasteners.FormShow(Sender: TObject);
begin
  if not(pki='') then
  begin
    edtPki.Text := pki;
    edtPki.Enabled := false;
  end;
end;

end.

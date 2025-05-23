unit uKmcEditCable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, Buttons,
  ExtCtrls, UtilUnit, DB, MemDS, DBAccess, Ora, uDmPki, DBCtrls, uViewPki, udmKMCspr;

type
  TfmKmcEditCable = class(TForm)
    pnlBottom: TPanel;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    cbBlock1: TDBLookupComboboxEh;
    Label1: TLabel;
    Label3: TLabel;
    edtCable: TDBComboBoxEh;
    lbCableTypMod: TLabel;
    qBlock1: TOraQuery;
    dsBlock1: TDataSource;
    qBlock2: TOraQuery;
    dsBlock2: TDataSource;
    qShablon: TOraQuery;
    lbBlock1Coment: TDBText;
    lbBlock1Name: TDBText;
    Label2: TLabel;
    cbBlock2: TDBLookupComboboxEh;
    lbBlock2Coment: TDBText;
    lbBlock2Name: TDBText;
    qCable: TOraQuery;
    procedure FormCreate(Sender: TObject);
    procedure edtCableChange(Sender: TObject);
    procedure cbBlock1Change(Sender: TObject);
    procedure cbBlock2Change(Sender: TObject);
    procedure edtCableButtonClick(Sender: TObject; var Handled: Boolean);
  private
    { Private declarations }
    shablon_id: int64;
    cable_id:int64;
    procedure ActivateSQL;
  public
    { Public declarations }
  end;

var
  fmKmcEditCable: TfmKmcEditCable;

  function EdtSprCable(shablon_id:int64; var cable_id:int64):boolean;

implementation

{$R *.dfm}

function EdtSprCable(shablon_id:int64; var cable_id:int64):boolean;
begin
  result := false;
  Application.CreateForm(TfmKmcEditCable,fmKmcEditCable);
  fmKmcEditCable.shablon_id := shablon_id;
  fmKmcEditCable.cable_id := cable_id;
  fmKmcEditCable.ActivateSQL;
  if fmKmcEditCable.ShowModal = mrOk then
  begin
    dmKMCspr.spModify_kmc_cable.ParamByName('ACTION').asInteger := 0;
    dmKMCspr.spModify_kmc_cable.ParamByName('V_ID').AsLargeInt := cable_id;
    dmKMCspr.spModify_kmc_cable.ParamByName('V_BLOCK1_ID').AsLargeInt := fmKmcEditCable.qBlock1.FieldByName('ID').AsLargeInt;
    dmKMCspr.spModify_kmc_cable.ParamByName('V_BLOCK2_ID').AsLargeInt := fmKmcEditCable.qBlock2.FieldByName('ID').AsLargeInt;
    dmKMCspr.spModify_kmc_cable.ParamByName('V_CABLE').AsString := fmKmcEditCable.edtCable.Value;
    dmKMCspr.spModify_kmc_cable.ParamByName('V_SHABLON_ID').AsLargeInt := shablon_id;
    dmKMCspr.spModify_kmc_cable.ParamByName('V_NAZN').AsString := '';
    dmKMCspr.spModify_kmc_cable.ExecProc;
    cable_id := dmKMCspr.spModify_kmc_cable.ParamByName('RESULT').AsLargeInt;
    result := true;
  end;
end;

procedure TfmKmcEditCable.ActivateSQL;
begin
  qBlock1.ParamByName('shablon_id').AsLargeInt := shablon_id;
  qBlock1.Open;
  qBlock2.ParamByName('shablon_id').AsLargeInt := shablon_id;
  qBlock2.Open;
  qShablon.ParamByName('shablon_id').AsLargeInt := shablon_id;
  qShablon.Open;
  Caption := qShablon.FieldByName('NAIM').AsString + ': соединение блоков';
  if cable_id > 0 then
  begin
    qCable.ParamByName('CABLE_ID').AsLargeInt := cable_id;
    qCable.Open;
    qBlock1.Locate('ID',qCable.FieldByName('block1_id').AsLargeInt,[]);
    cbBlock1.Value := qCable.FieldByName('block1_id').AsLargeInt;
    qBlock2.Locate('ID',qCable.FieldByName('block2_id').AsLargeInt,[]);
    cbBlock2.Value := qCable.FieldByName('block2_id').AsLargeInt;
    edtCable.Text := qCable.FieldByName('CABLE').AsString;
  end;
end;

procedure TfmKmcEditCable.cbBlock1Change(Sender: TObject);
begin
  if cbBlock1.text = '' then
  begin
    lbBlock1Coment.Visible := false;
    lbBlock1Name.Visible := false;
  end
  else
  begin
    lbBlock1Coment.Visible := true;
    lbBlock1Name.Visible := true;
  end;
end;

procedure TfmKmcEditCable.cbBlock2Change(Sender: TObject);
begin
  if cbBlock2.text = '' then
  begin
    lbBlock2Coment.Visible := false;
    lbBlock2Name.Visible := false;
  end
  else
  begin
    lbBlock2Coment.Visible := true;
    lbBlock2Name.Visible := true;
  end;
end;

procedure TfmKmcEditCable.edtCableButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if ShowViewPki(1, 1,true) then
  begin
    DmPki.mdCasePki.First;
    edtCable.Text := DmPki.mdCasePKI.FieldByName('PKI').asString;
    lbCableTypMod.Caption := DmPki.mdCasePKI.FieldByName('NAMEPKI').asString;
  end;
end;

procedure TfmKmcEditCable.edtCableChange(Sender: TObject);
begin
  DmPki.qMdByPki.Close;
  DmPki.qMdByPki.ParamByName('PKI').AsString := edtCable.Text;
  DmPki.qMdByPki.Open;
  if DmPki.qMdByPki.RecordCount = 0 then
    lbCableTypMod.Caption := 'Не найден'
  else
    lbCableTypMod.Caption := DmPki.qMdByPki.FieldByName('TYP_MOD').AsString;
end;

procedure TfmKmcEditCable.FormCreate(Sender: TObject);
begin
  SetDataBase(DbName,self);
end;

end.

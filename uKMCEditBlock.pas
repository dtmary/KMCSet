unit uKMCEditBlock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrlsEh, uDmPki, uViewPki,
  DB, MemDS, DBAccess, Ora, udmKMCspr, UtilUnit;

type
  TfmKMCEditBlock = class(TForm)
    Label2: TLabel;
    cedtPki: TDBComboBoxEh;
    Label3: TLabel;
    edtComent: TEdit;
    lNamepos: TLabel;
    pnlBottom: TPanel;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    qBlock: TOraQuery;
    qShablon: TOraQuery;
    qTest: TOraQuery;
    edtCnt_min: TDBNumberEditEh;
    edtCnt_max: TDBNumberEditEh;
    Label1: TLabel;
    Label4: TLabel;
    procedure cedtPkiChange(Sender: TObject);
    procedure cedtPkiButtonClick(Sender: TObject; var Handled: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    shablon_id: Int64;
    block_id: Int64;
    analog_of_id: Int64;
    procedure ActivateSQL;
  public
    { Public declarations }
  end;

var
  fmKMCEditBlock: TfmKMCEditBlock;
  function EdtSprBlock(shablon_id:int64; var block_id:int64; analog_of_id: Int64):boolean;

implementation

{$R *.dfm}

procedure TfmKMCEditBlock.ActivateSQL;
begin
  if block_id>0 then
  begin
    qBlock.Close;
    qBlock.ParamByName('BLOCK_ID').AsLargeInt := block_id;
    qBlock.Open;
    cedtPki.Text := qBlock.FieldByName('PKI').AsString;
    edtComent.Text := qBlock.FieldByName('COMENT').AsString;
    edtCnt_min.Text := qBlock.FieldByName('CNT_MIN').AsString;
    edtCnt_max.Text := qBlock.FieldByName('CNT_MAX').AsString;
  end
  else
  begin
    if analog_of_id > 0 then
    begin
      qBlock.Close;
      qBlock.ParamByName('BLOCK_ID').AsLargeInt := analog_of_id;
      qBlock.Open;
      cedtPki.Text := qBlock.FieldByName('PKI').AsString;
      edtCnt_min.Text := qBlock.FieldByName('CNT_MIN').AsString;
      edtCnt_max.Text := qBlock.FieldByName('CNT_MAX').AsString;
    end;
  end;
  qShablon.Close;
  qShablon.ParamByName('shablon_id').AsLargeInt := shablon_id;
  qShablon.Open;
  Caption := qShablon.FieldByName('NAIM').AsString;
end;

function EdtSprBlock(shablon_id:int64; var block_id:int64; analog_of_id: Int64):boolean;
begin
  result := false;
  Application.CreateForm(TfmKMCEditBlock,fmKMCEditBlock);
  fmKMCEditBlock.shablon_id := shablon_id;
  fmKMCEditBlock.block_id := block_id;
  fmKMCEditBlock.analog_of_id := analog_of_id;
  fmKMCEditBlock.ActivateSQL;
  if fmKMCEditBlock.ShowModal = mrOk then
  begin
    block_id := fmKMCEditBlock.block_id;
    result := true;
  end;
  fmKMCEditBlock.Free;
end;

procedure TfmKMCEditBlock.BitBtn3Click(Sender: TObject);
begin
  qTest.Close;
  qTest.ParamByName('PKI').AsString := cedtPki.Text;
  qTest.ParamByName('COMENT').AsString := Trim(edtComent.Text);
  qTest.ParamByName('SHABLON_ID').AsLargeInt := shablon_id;
  qTest.ParamByName('BLOCK_ID').AsLargeInt := block_id;
  qTest.Open;
  if qTest.RecordCount > 0 then
  begin
    Application.MessageBox(PChar('Такой блок уже существует'), 'Ошибка', mb_Ok + mb_IconError);
  end
  else
  begin
    try
      DBName.AutoCommit := false;
      DBName.StartTransaction;
      dmKMCspr.spModify_KMC_Block.ParamByName('ACTION').AsLargeInt := 0;
      dmKMCspr.spModify_KMC_Block.ParamByName('v_analog_block_id').AsLargeInt := analog_of_id;
      dmKMCspr.spModify_KMC_Block.ParamByName('v_pki').AsString := Trim(cedtPki.Text);
      dmKMCspr.spModify_KMC_Block.ParamByName('v_coment').AsString := Trim(edtComent.Text);
      dmKMCspr.spModify_KMC_Block.ParamByName('v_shablon_id').AsLargeInt := shablon_id;
      dmKMCspr.spModify_KMC_Block.ParamByName('v_id').AsLargeInt := block_id;
      dmKMCspr.spModify_KMC_Block.ParamByName('v_cnt_min').Value := edtCnt_min.Value;
      dmKMCspr.spModify_KMC_Block.ParamByName('v_cnt_max').Value := edtCnt_max.Value;
      dmKMCspr.spModify_KMC_Block.ExecProc;
      DBName.Commit;
      DBName.AutoCommit := true;
      block_id := dmKMCspr.spModify_KMC_Block.ParamByName('v_id').AsLargeInt;
      modalResult := mrOk;
    except
      DBName.AutoCommit := true;
      DBNAme.Rollback;
    end;
  end;
end;

procedure TfmKMCEditBlock.cedtPkiButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if ShowViewPki(1, 1,true) then
  begin
    DmPki.mdCasePki.First;
    cedtPki.Text := DmPki.mdCasePKI.FieldByName('PKI').asString;
    lNamepos.Caption := DmPki.mdCasePKI.FieldByName('NAMEPKI').asString;
  end;
end;

procedure TfmKMCEditBlock.cedtPkiChange(Sender: TObject);
begin
  DmPki.qMdByPki.Close;
  DmPki.qMdByPki.ParamByName('PKI').AsString := cedtPki.Text;
  DmPki.qMdByPki.Open;
  if DmPki.qMdByPki.RecordCount = 0 then
    lNamepos.Caption := 'Не найден'
  else
    lNamepos.Caption := DmPki.qMdByPki.FieldByName('NAMEPKI').AsString;
end;

procedure TfmKMCEditBlock.FormCreate(Sender: TObject);
begin
  SetDataBase(DBName,Self);
end;

end.

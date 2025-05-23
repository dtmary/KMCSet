unit uKMCRes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UtilUnit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, DB, MemDS, DBAccess, Ora, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, ComCtrls;

type
  TfmKmcRes = class(TForm)
    StatusBar1: TStatusBar;
    dbgKMC: TDBGridEh;
    qKMC: TOraQuery;
    DSKMC: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    KMC_ID:int64;
    Shablon_id:int64;
    Shablon_name:String;
    procedure ActivateSQL;
  public
    { Public declarations }
  end;

var
  fmKmcRes: TfmKmcRes;

  procedure ViewKmcRes(KMC_ID:int64;Shablon_id:int64;Shablon_name:String);

implementation

{$R *.dfm}

procedure ViewKmcRes(KMC_ID:int64;Shablon_id:int64;Shablon_name:String);
begin
  Application.CreateForm(TfmKmcRes,fmKmcRes);
  fmKmcRes.KMC_ID := KMC_ID;
  fmKmcRes.Shablon_id := Shablon_id;
  fmKmcRes.Shablon_name := Shablon_name;
  fmKmcRes.ActivateSQL;
  fmKmcRes.ShowModal;
end;

procedure TfmKmcRes.ActivateSQL;
begin
  Caption := 'ÊÌ× - ' + Shablon_name;
  qKMC.Close;
  qKMC.ParamByName('v_kmc_id').AsLargeInt := KMC_ID;
  qKMC.Open;
end;

procedure TfmKmcRes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmKmcRes.FormCreate(Sender: TObject);
begin
  SetDataBase(DBName,Self);
end;

end.

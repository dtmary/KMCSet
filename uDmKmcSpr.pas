unit uDmKmcSpr;

interface

uses
  SysUtils, Classes, UtilUnit, DB, MemDS, DBAccess, Ora, DMUnit;

type
  TdmKMCspr = class(TDataModule)
    spModify_KMC_Block: TOraStoredProc;
    spmodify_kmc_shablon: TOraStoredProc;
    spModify_kmc_fasteners: TOraStoredProc;
    spModify_kmc_cable: TOraStoredProc;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmKMCspr: TdmKMCspr;

implementation

{$R *.dfm}

procedure TdmKMCspr.DataModuleCreate(Sender: TObject);
begin
  SetDAtabase(Dbname, Self);
end;

end.

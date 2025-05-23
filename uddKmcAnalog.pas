unit uddKmcAnalog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DropDownFormEh, Dialogs, DynVarsEh, ToolCtrlsEh, DB, MemDS, DBAccess, Ora;

type
  TddAnalog = class(TCustomDropDownFormEh)
    OraQuery1: TOraQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ddAnalog: TddAnalog;

implementation

{$R *.dfm}

end.
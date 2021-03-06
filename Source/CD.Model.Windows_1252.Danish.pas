unit CD.Model.Windows_1252.Danish;

interface

uses
  CD.Model.Danish;

type
  TWindows_1252_DanishModel = class(TDanishModel)
  private
    class function CHAR_TO_ORDER_MAP: TArray<Byte>; static;
  public
    constructor Create();
  end;

implementation

uses
  CD.Prober.SBCSGroup;

{ TWindows_1252_DanishModel }

class function TWindows_1252_DanishModel.CHAR_TO_ORDER_MAP: TArray<Byte>;
begin
  Result := [{$I ..\Source\inc\Windows_1252_DanishModel.inc}];
end;

constructor TWindows_1252_DanishModel.Create;
begin
  inherited Create(CHAR_TO_ORDER_MAP, 'WINDOWS-1252');
end;

initialization
  TSBCSGroupProber.RegisterModel(
    function(): ISequenceModel
    begin
      Result := TWindows_1252_DanishModel.Create();
    end);

end.


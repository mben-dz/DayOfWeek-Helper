unit API.DateUtils;

interface

uses
  System.SysUtils,
  System.DateUtils;

type
  TDateTimeHelper = record helper for TDateTime
  // Get the Current or future or past day in same-function..
    function DayOfWeek(const aDaysCount: Integer = 0; const aLocaleName: string = ''): string;

  end;

implementation

function TDateTimeHelper.DayOfWeek(const aDaysCount: Integer; const aLocaleName: string): string;
//const
//  cDaysSysUtils : array[1..7] of string =(
//   'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'
//    );
//  cDaysDateUtils : array[1..7] of string =(
//   'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'
//    );

var
  LDisplayFormat: TFormatSettings;
  LTargetDate: TDateTime;
begin
  if aLocaleName <> '' then
    LDisplayFormat := TFormatSettings.Create(aLocaleName)
  else
    LDisplayFormat := TFormatSettings.Create; // default OS locale

  LTargetDate := IncDay(Self, aDaysCount);

//  Result := cDaysSysUtils[System.SysUtils.DayOfWeek(LTargetDate)];

//  Result := cDaysDateUtils[System.DateUtils.DayOfTheWeek(LTargetDate)];

  Result := FormatDateTime('dddd', LTargetDate, LDisplayFormat);
end;

end.

// How to call it
uses
  API.DateUtils;

procedure TMainView.BtnGetDayOfWeekClick(Sender: TObject);
begin
  ShowMessage('Today is: ' + Today.DayOfWeek()); // default OS locale
  ShowMessage('Today is: ' + Today.DayOfWeek(0, 'ar-DZ'));
  ShowMessage('In 200 days, it will be: ' + Today.DayOfWeek(200, 'ar-DZ'));
  ShowMessage('200 days ago, it was: ' + Today.DayOfWeek(-200, 'ar-DZ'));
end;

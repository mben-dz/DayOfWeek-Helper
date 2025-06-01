# DayOfWeek-Helper
TDateTime Extension for Day Name Lookup with Offset and Locale
Use :  
  
```Pascal
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
```  

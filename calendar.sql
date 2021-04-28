/****** Cleansed dim date table  ******/
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date, 
  --[DayNumberOfWeek]
  [EnglishDayNameOfWeek] as Day, 
  --,[SpanishDayNameOfWeek]
  -- ,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  -- ,[WeekNumberOfYear]
  [EnglishMonthName] as Month, 
  LEFT([EnglishMonthName], 3) As MonthShort, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear] As MonthNo, 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] As Year --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
Where 
  CalendarYear >= 2019

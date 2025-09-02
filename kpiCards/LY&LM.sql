/*
  Deviation For Last Year Main 

*/

Last Year Full Month = 

[Order Date] >= DATEADD("month", -13, DATETRUNC("month", {MAX([Order Date])}))
AND 
[Order Date] < DATEADD("month", -12, DATETRUNC("month", {MAX([Order Date])}))

  
Recent Full Month = 
[Order Date] >= DATEADD("month", -1, DATETRUNC("month", {MAX([Order Date])}))
AND 
[Order Date] < DATETRUNC("month", {MAX([Order Date])})


Profit | LY =  IF [Last Year Full Month] THEN [Profit] END

Profit | LM = IF [Recent Full Month] THEN [Profit] END

  

Profit | % LMLY = (SUM([Profit | LM]) - SUM([Profit | LY]))/SUM([Profit | LY])  

Profit | % LMLY | Down =  IF [Profit | % LMLY] <= 0 THEN "▼" END

Profit | % LMLY | Up = IF [Profit | % LMLY] > 0 THEN "▲" END






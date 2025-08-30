-- YoY Deviation Steps 

1) Latest Year = {MAX(YEAR([Ship Date]))}

2) Latest Year Sales = IF YEAR([Order Date]) = [Latest Year ] THEN [Sales] ELSE 0 END

3) Prev Year = {MAX(YEAR([Order Date])) - 1}

4) Prev Year Sales = IF (YEAR([Order Date]) = [Prev Year]) THEN [Sales] ELSE 0 END

4) YoY change = SUM([Latest Year Sales])/ SUM([Prev Year Sales ]) - 1








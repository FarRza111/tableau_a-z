/*
  INFO:
  

  
*/


Year Selected -- Parameter [2021, 2022, 2023, 2024]

  
Selected Year  = [Year Selected ] -- Year Selected will be a parameter consting of years list;

Previous Year = [Year Selected ] - 1
  

Sales Selected Year = IF YEAR([Order Date]) = [Year Selected ] THEN [Sales] END


Sales Change Sing =  (SUM([Sales Selected Year]) - SUM([Sales Previous Year]))/ SUM([Sales Previous Year])  -- Default Properties -> Number Format -> Customer - ▲; ▼

Sales Change YoY =  (SUM([Sales Selected Year]) - SUM([Sales Previous Year]))/ SUM([Sales Previous Year])


Sales Previous Year = IF YEAR([Order Date]) = [Year Selected ] - 1 THEN [Sales] END

Sales Selected Year = IF YEAR([Order Date]) = [Year Selected ] THEN [Sales] END


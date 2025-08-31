/*
  1) Create Parameter
  2) Show Filters 
  3) Create Measures by using parameter for choice Selection
*/



-- 2) Measure 
  Multiple Choice Formula = 
    
  IF [Measure Choice ] = "Holding Fee" Then [Holding Fee]
  ELSEIF  [Measure Choice ] = "Insurance Amount" Then [Insurance Amount]
  ELSEIF  [Measure Choice ] = "Storage Fee" Then [Storage Fee]
  ELSEIF  [Measure Choice ] = "Acquisition Cost" Then [Total Acquisition Cost]
  end

  
-- 2) Measure

  Aggregation Methods = 
    
  IF [Aggregation Choice] = "Sum" THEN SUM([Measure Choice Formula ])
  ELSEIF  [Aggregation Choice] = "Average" THEN AVG([Measure Choice Formula ])
  ELSEIF [Aggregation Choice] = "Min" THEN Min([Measure Choice Formula ])
  ELSEIF [Aggregation Choice] = "Maximum" THEN Max([Measure Choice Formula ])
  END







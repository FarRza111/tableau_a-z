/*
  1) create parameters - Model Line, Status
  2) Drag Dim Selection Helper in Details 
  3) Put Sum(Holding Fee) , Sum(Insurance Amount )  (X, Y)
*/

Dim Selection Helper = 

CASE [dim choices] 
    WHEN 'Model Line' THEN [Model Line]
    WHEN 'Status' THEN [Status]
END

/*
  1) set parameters for date granulairty 
  2) Columns -> drag date granulairty -> exact date 
  3) show filters params;

*/

IF [Date Granularity ] = "Year" THEN  DATETRUNC('year', [Claim Date])
ELSEIF  [Date Granularity ] = "Quarter" THEN  DATETRUNC('quarter', [Claim Date])
ELSEIF  [Date Granularity ] = "Month" THEN  DATETRUNC('month', [Claim Date])
ELSEIF  [Date Granularity ] = "Week" THEN  DATETRUNC('week', [Claim Date])
ELSEIF  [Date Granularity ] = "Day" THEN  DATETRUNC('day', [Claim Date])

END

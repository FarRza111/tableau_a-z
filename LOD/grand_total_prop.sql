/*
  1) take into account that dragging those from fields/columns automatically calculate DATEPART(Year, .....)

*/


Year Of Production Date Fixed = {FIXED DATEPART('year', [Product Production Date]): SUM([Insurance Amount])}

% of Product Insurance = SUM([Insurance Amount])/SUM([Year of Production Date Fixed]) -- Drag it from columns part


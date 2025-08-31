IF [Parameters].[Dimenson Choice ] = "Clam Date (Year)" THEN Str(DATEPART('year', [Claim Date]) )
ELSEIF [Parameters].[Dimenson Choice ] = "Insurance Status" THEN [Insurance Status]
ELSEIF  [Parameters].[Dimenson Choice ] = "Model Line" THEN [Model Line]
ELSEIF  [Parameters].[Dimenson Choice ] = "Sub Status" THEN [Sub Status]
end

-- Moving Avg for 7 Days ----------

_7d moving avg = 

VAR period = 7
VAR the_first_date =
    CALCULATE ( FIRSTDATE ( date_table[Date] ), ALLSELECTED (date_table[Date] ) )
VAR last_date =
    LASTDATE ( date_table[Date] )
VAR sum_in_period =
    CALCULATE (
        [# Alerts],
        DATESINPERIOD ( date_table[Date], last_date, - period, DAY )
    )
RETURN
    IF ( last_date - the_first_date >= period - 1, sum_in_period / period )



-- Moving Sum for 7 days ---------

_7d moving sum = 
VAR period = 7
VAR the_first_date =
    CALCULATE ( FIRSTDATE ( MyTable[Date] ), ALLSELECTED ( MyTable[Date] ) )
VAR last_date =
    LASTDATE ( MyTable[Date] )
VAR sum_in_period =
    CALCULATE (
        SUM ( MyTable[Value] ),
        DATESINPERIOD ( MyTable[Date], last_date, - period, DAY )
    )
RETURN
    IF ( last_date - the_first_date >= period - 1, sum_in_period )

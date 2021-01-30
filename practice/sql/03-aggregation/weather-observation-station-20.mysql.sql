-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem
-- Weather Observation Station 20

select round(avg(LAT_N), 4) from (
    select LAT_N, @rownum:=@rownum+1 as row_num,@total_rows:=@rownum
    from station, (SELECT @rownum:=0) as r
    order by LAT_N
) as t1
where row_num in (FLOOR((@total_rows+1)/2), FLOOR((@total_rows+2)/2))
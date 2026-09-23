-- recursive CTE
-- Factorial of a given number

WITH [R CTE] as (
    -- Anchor query
    select 1 as n


    UNION ALL

    -- recursive query
    select n+1 from [R CTE] WHERE n<=2
)
-- SELECT * FROM [R CTE]
select EXP(SUM(LOG(n))) [factorial] from [R CTE]

-- factorial of a number 3:
-- 3*2*1


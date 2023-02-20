with tmp as (
    select currency.id as id, currency.name as name, max(currency.updated) as last_update
                from currency
            group by 1,2
)

select coalesce("user".name, 'not defined') as name,
       coalesce("user".lastname, 'not defined') as lastname,
       balance.type as type,
      sum(balance.money) as volume,
       coalesce(currency.name, 'not defined') as currency_name,
       coalesce(currency.rate_to_usd, 1) as last_rate_to_usd,
        (sum(balance.money) * coalesce(currency.rate_to_usd, '1')) as total_volume_in_usd
from "user"
    full join balance on "user".id = balance.user_id
        full join tmp on balance.currency_id = tmp.id
                left join currency on currency.updated = tmp.last_update
                    and currency.name = tmp.name

group by 1,2,3,5,6,currency.rate_to_usd
ORDER BY 1 DESC, 2, 3;

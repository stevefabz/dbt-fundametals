with orders as (

    select * from {{ref('stg_orders')}}
),

payment as (
    select * from {{ref('stg_payments')}}
),

final as (
     select
     p.order_id,
     customer_id,
    amount
    from payment p
    left join orders o using (order_id)
     )

    select * from final 



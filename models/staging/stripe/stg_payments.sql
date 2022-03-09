with stg_payments as
(
select 
orderid as order_id,
paymentmethod,
status,
amount/100 as amount,
created as datecreated
from raw.stripe.payment -- {{source('stripe','payments')}}
)
select *
from stg_payments


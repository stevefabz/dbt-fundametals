with stg_payments as
(
select 
orderid as order_id,
paymentmethod,
status,
amount,
created as datecreated
from RAW.STRIPE.PAYMENT
)
select *
from stg_payments


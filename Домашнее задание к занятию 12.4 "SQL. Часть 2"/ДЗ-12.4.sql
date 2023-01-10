select s.store_id, count(c.customer_id) as "Количество покупателей",  ci.city, concat(st.last_name, ' ', st.first_name) as "Фамилия и имя продавца"
from store s 
join customer c on c.store_id = s.store_id
join address a on a.address_id = s.address_id
join city ci on ci.city_id = a.city_id
join staff st on st.store_id = s.store_id
group by s.store_id, ci.city_id, st.staff_id 
having count(c.customer_id) > 300

select count(`length`) as "Количество фильмов" 
from film a
where `length`  > (select avg(`length`) from film b) 

select month(date(payment_date)), sum(amount), count(rental_id)
from payment a
group by month(date(payment_date))
order by sum(amount) desc
limit 1
SELECT "first_name", "last_name","debut" from players
wHERE birth_city = 'Pittsburgh'
and birth_state ='PA'
order by debut desc, first_name, last_name
;

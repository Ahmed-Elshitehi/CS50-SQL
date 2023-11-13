SELECT "id" as 'odd id' from views
WHERE (id&1)
order by id desc;

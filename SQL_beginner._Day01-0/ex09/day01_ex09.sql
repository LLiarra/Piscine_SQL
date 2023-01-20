SELECT p.name
FROM pizzeria p
WHERE
    p.id NOT IN (SELECT pizzeria_id FROM person_visits);

SELECT p.name
FROM pizzeria p
WHERE
    NOT EXISTS (SELECT pizzeria_id FROM person_visits v WHERE p.id = v.pizzeria_id);
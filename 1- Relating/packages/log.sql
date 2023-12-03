
-- *** The Lost Letter ***
SELECT type FROM addresses WHERE address = '900 Somerville Avenue';
SELECT address FROM addresses WHERE id = (
    SELECT to_address_id FROM packages WHERE from_address_id = (
        SELECT id FROM addresses WHERE address = '900 Somerville Avenue'
    )
);

-- *** The Devious Delivery ***
SELECT contents FROM packages where from_address_id is NULL;
SELECT type from addresses WHERE id = (
    SELECT address_id from scans WHERE action = 'Drop' AND package_id = (
        SELECT id FROM packages WHERE from_address_id is NULL
    )
);
-- *** The Forgotten Gift ***

SELECT * from packages WHERE from_address_id = (
    SELECT id from addresses WHERE address = '109 Tileston Street'
);

select * from scans where package_id = (
    select id from packages WHERE from_address_id = (
            SELECT id from addresses WHERE address = '109 Tileston Street'
    )
) order by timestamp ;
-- I will chose the last one who pick

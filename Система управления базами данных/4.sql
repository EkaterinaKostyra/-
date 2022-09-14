SELECT
    subs.IDcustomer,
    customer.firstname,
    customer.lastname,
    customer.phone
FROM subs
LEFT JOIN customer ON subs.IDcustomer = customer.IDcustomer
WHERE subs.IDcustomer NOT IN
    (
    SELECT IDcustomer FROM visit
    );
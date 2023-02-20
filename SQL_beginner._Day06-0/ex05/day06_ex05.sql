COMMENT ON TABLE person_discounts
   IS 'price with sale';

COMMENT ON column person_discounts.id
   IS 'it is id';
COMMENT ON column person_discounts.person_id
   IS 'man';
COMMENT ON column person_discounts.pizzeria_id
   IS 'home with pizza';
COMMENT ON column person_discounts.discount
   IS 'discount for person';

-- SELECT obj_description(oid)
-- FROM pg_class
-- WHERE relkind = 'r'

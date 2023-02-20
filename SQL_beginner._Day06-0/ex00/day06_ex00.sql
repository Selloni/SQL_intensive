create table person_discounts
(
    id bigint primary key,
    person_id bigint not null,
    pizzeria_id bigint not null,
    discount numeric,
    constraint fk_person_discount_person_id
        foreign key (person_id) references person(id),
    constraint fk_person_discount_pizzeria_id
        foreign key (pizzeria_id) references pizzeria(id)
);


insert into usr (id, username, password, active)
         values (1, 'adm', '1', true);
insert into user_role
        values  (1, 'USER'), (1, 'ADMIN');
commit;
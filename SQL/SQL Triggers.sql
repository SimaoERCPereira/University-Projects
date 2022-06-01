use project_10;

create table if not exists `log` (
	ID integer unsigned auto_increment,
	TS DATETIME,
    USR VARCHAR(250),
    EV VARCHAR(250),
    MSG VARCHAR(250),
	Primary key (`ID`)
);

delimiter $$
create trigger update_promos
after update
on promotion
for each row
Begin
	insert into log (TS, USR, EV, MSG) values 
	(NOW(), USER(), "update", concat(Promo_code,', old:', old.Promo_percent,', new:', new.Promo_percent));
end$$
delimiter ;

drop trigger update_promos;

update promotion
set Promo_percent="0.1"
where Promo_code="1YearOld";

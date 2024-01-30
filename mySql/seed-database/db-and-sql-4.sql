update seeds
set use_by = 2024
where seed_id = 1;

update seeds
set encourages = "tasty blts", use_by = 2025
where seed_id = 4;

alter table seeds
add expired boolean;

update seeds
set expired = true
where use_by <= 2024;
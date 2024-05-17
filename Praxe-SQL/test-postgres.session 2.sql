SELECT MajiteleAuta.Jmeno, MajiteleAuta.Prijmeni, Cars.Znacka, Cars.Model, Cars.RokVyroby
FROM MajiteleAuta
INNER JOIN Cars ON MajiteleAuta.ID = Cars.MajitelID WHERE model  LIKE '%Cor%'

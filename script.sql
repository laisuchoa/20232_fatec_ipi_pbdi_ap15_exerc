-- 1.1 Monte uma tabela de referência cruzada que mostre, para cada localização, a média de dias de chuva por mês.

CREATE EXTENSION IF NOT EXISTS tablefunc;

SELECT * FROM crosstab ('SELECT location, month, AVG(raindays)::int FROM rainfalls GROUP BY location, month ORDER BY location, month;') AS tab_ref_cruzada ("local" TEXT, "jan" INT, "fev" INT, "mar" INT, "abr" INT, "mai" INT, "jun" INT, "jul" INT, "ago" INT, "set" INT, "out" INT, "nov" INT, "dez" INT)
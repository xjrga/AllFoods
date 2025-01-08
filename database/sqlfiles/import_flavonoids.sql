create table flavonoids as
(
select
NDB_NO,
cast(FLAVONOIDS as decimal(10,5)) as Flavonoids,
cast(ANTHOCYANIDINS as decimal(10,5)) as Anthocyanidins,
cast(FLAVAN_3_OLS as decimal(10,5)) as Flavan_3_Ols,
cast(FLAVANONES as decimal(10,5)) as Flavanones,
cast(FLAVONES as decimal(10,5)) as Flavones,
cast(FLAVONOLS as decimal(10,5)) as Flavonols,
cast(ISOFLAVONES as decimal(10,5)) as Isoflavones
from tmp)
with data;
/



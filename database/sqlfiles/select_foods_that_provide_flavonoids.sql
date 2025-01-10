SELECT long_desc,
       flavonoids
FROM allfoodsandnutrientswithdescplusflavonoids
WHERE fdgrp_cd = '0200'
AND   flavonoids > 0
ORDER BY flavonoids DESC
/
SELECT long_desc,
       flavonoids
FROM allfoodsandnutrientswithdescplusflavonoids
WHERE flavonoids > 0
ORDER BY flavonoids DESC
/

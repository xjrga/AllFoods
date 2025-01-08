CREATE TABLE AllFoodsAndNutrientsWithDesc
AS
(
--
SELECT
       -- category number
       c.fdgrp_cd,       
       -- category name
       c.fdgrp_desc,
       -- food number
       a.ndb_no,       
       -- food name
       b.long_desc,
       -- 203, Protein, g
       a.n203,
       -- 204, Total lipid (fat), g	
       a.n204,
       -- 205, Carbohydrate, by difference, g	
       a.n205,
       -- 207, Ash, g	
       a.n207,
       -- 208, Energy, kcal	
       a.n208,
       -- 209, Starch, g	
       a.n209,
       -- 210, Sucrose, g	
       a.n210,
       -- 211, Glucose (dea.rose), g	
       a.n211,
       -- 212, Fructose, g	
       a.n212,
       -- 213, Lactose, g	
       a.n213,
       -- 214, Maltose, g	
       a.n214,
       -- 221, Alcohol, ethyl, g	
       a.n221,
       -- 255, Water, g	
       a.n255,
       -- 257, Adjusted Protein, g	
       a.n257,
       -- 262, Caffeine, mg	
       a.n262,
       -- 263, Theobromine, mg	
       a.n263,
       -- 268, Energy, kJ	
       a.n268,
       -- 269, Sugars, total, g	
       a.n269,
       -- 287, Galactose, g	
       a.n287,
       -- 291, Fiber, total dietary, g	
       a.n291,
       -- 301, Calcium, Ca, mg	
       a.n301,
       -- 303, Iron, Fe, mg	
       a.n303,
       -- 304, Magnesium, Mg, mg	
       a.n304,
       -- 305, Phosphorus, P, mg	
       a.n305,
       -- 306, Potassium, K, mg	
       a.n306,
       -- 307, Sodium, Na, mg	
       a.n307,
       -- 309, Zinc, Zn, mg	
       a.n309,
       -- 312, Copper, Cu, mg	
       a.n312,
       -- 313, Fluoride, F, µg	
       a.n313,
       -- 315, Manganese, Mn, mg	
       a.n315,
       -- 317, Selenium, Se, µg	
       a.n317,
       -- 318, Vitamin A, IU, IU	
       a.n318,
       -- 319, Retinol, µg	
       a.n319,
       -- 320, Vitamin A, RAE, µg	
       a.n320,
       -- 321, Carotene, beta, µg	
       a.n321,
       -- 322, Carotene, alpha, µg	
       a.n322,
       -- 323, Vitamin E (alpha-tocopherol), mg	
       a.n323,
       -- 324, Vitamin D, IU	
       a.n324,
       -- 325, Vitamin D2 (ergocalciferol), µg	
       a.n325,
       -- 326, Vitamin D3 (cholecalciferol), µg	
       a.n326,
       -- 328, Vitamin D (D2 + D3), µg	
       a.n328,
       -- 334, Cryptoa.nthin, beta, µg	
       a.n334,
       -- 337, Lycopene, µg	
       a.n337,
       -- 338, Lutein + zeaa.nthin, µg	
       a.n338,
       -- 341, Tocopherol, beta, mg	
       a.n341,
       -- 342, Tocopherol, gamma, mg	
       a.n342,
       -- 343, Tocopherol, delta, mg	
       a.n343,
       -- 344, Tocotrienol, alpha, mg	
       a.n344,
       -- 345, Tocotrienol, beta, mg	
       a.n345,
       -- 346, Tocotrienol, gamma, mg	
       a.n346,
       -- 347, Tocotrienol, delta, mg	
       a.n347,
       -- 401, Vitamin C, total ascorbic acid, mg	
       a.n401,
       -- 404, Thiamin, mg	
       a.n404,
       -- 405, Riboflavin, mg	
       a.n405,
       -- 406, Niacin, mg	
       a.n406,
       -- 410, Pantothenic acid, mg	
       a.n410,
       -- 415, Vitamin B-6, mg	
       a.n415,
       -- 417, Folate, total, µg	
       a.n417,
       -- 418, Vitamin B-12, µg	
       a.n418,
       -- 421, Choline, total, mg	
       a.n421,
       -- 428, Menaquinone-4, µg	
       a.n428,
       -- 429, Dihydrophylloquinone, µg	
       a.n429,
       -- 430, Vitamin K (phylloquinone), µg	
       a.n430,
       -- 431, Folic acid, µg	
       a.n431,
       -- 432, Folate, food, µg	
       a.n432,
       -- 435, Folate, DFE, µg	
       a.n435,
       -- 454, Betaine, mg	
       a.n454,
       -- 501, Tryptophan, g	
       a.n501,
       -- 502, Threonine, g	
       a.n502,
       -- 503, Isoleucine, g	
       a.n503,
       -- 504, Leucine, g	
       a.n504,
       -- 505, Lysine, g	
       a.n505,
       -- 506, Methionine, g	
       a.n506,
       -- 507, Cystine, g	
       a.n507,
       -- 508, Phenylalanine, g	
       a.n508,
       -- 509, Tyrosine, g	
       a.n509,
       -- 510, Valine, g	
       a.n510,
       -- 511, Arginine, g	
       a.n511,
       -- 512, Histidine, g	
       a.n512,
       -- 513, Alanine, g	
       a.n513,
       -- 514, Aspartic acid, g	
       a.n514,
       -- 515, Glutamic acid, g	
       a.n515,
       -- 516, Glycine, g	
       a.n516,
       -- 517, Proline, g	
       a.n517,
       -- 518, Serine, g	
       a.n518,
       -- 521, Hydroa.proline, g	
       a.n521,
       -- 573, Vitamin E, added, mg	
       a.n573,
       -- 578, Vitamin B-12, added, µg	
       a.n578,
       -- 601, Cholesterol, mg	
       a.n601,
       -- 605, Fatty acids, total trans, g	
       a.n605,
       -- 606, Fatty acids, total saturated, g	
       a.n606,
       -- 607, 4:0, g	
       a.n607,
       -- 608, 6:0, g	
       a.n608,
       -- 609, 8:0, g	
       a.n609,
       -- 610, 10:0, g	
       a.n610,
       -- 611, 12:0, g	
       a.n611,
       -- 612, 14:0, g	
       a.n612,
       -- 613, 16:0, g	
       a.n613,
       -- 614, 18:0, g	
       a.n614,
       -- 615, 20:0, g	
       a.n615,
       -- 617, 18:1 undifferentiated, g	
       a.n617,
       -- 618, 18:2 undifferentiated, g	
       a.n618,
       -- 619, 18:3 undifferentiated, g	
       a.n619,
       -- 620, 20:4 undifferentiated, g	
       a.n620,
       -- 621, 22:6 n-3 (DHA), g	
       a.n621,
       -- 624, 22:0, g	
       a.n624,
       -- 625, 14:1, g	
       a.n625,
       -- 626, 16:1 undifferentiated, g	
       a.n626,
       -- 627, 18:4, g	
       a.n627,
       -- 628, 20:1, g	
       a.n628,
       -- 629, 20:5 n-3 (EPA), g	
       a.n629,
       -- 630, 22:1 undifferentiated, g	
       a.n630,
       -- 631, 22:5 n-3 (DPA), g	
       a.n631,
       -- 636, Phytosterols, mg	
       a.n636,
       -- 638, Stigmasterol, mg	
       a.n638,
       -- 639, Campesterol, mg	
       a.n639,
       -- 641, Beta-sitosterol, mg	
       a.n641,
       -- 645, Fatty acids, total monounsaturated, g	
       a.n645,
       -- 646, Fatty acids, total polyunsaturated, g	
       a.n646,
       -- 652, 15:0, g	
       a.n652,
       -- 653, 17:0, g	
       a.n653,
       -- 654, 24:0, g	
       a.n654,
       -- 662, 16:1 t, g	
       a.n662,
       -- 663, 18:1 t, g	
       a.n663,
       -- 664, 22:1 t, g	
       a.n664,
       -- 665, 18:2 t not further defined, g	
       a.n665,
       -- 666, 18:2 i, g	
       a.n666,
       -- 669, 18:2 t,t, g	
       a.n669,
       -- 670, 18:2 CLAs, g	
       a.n670,
       -- 671, 24:1 c, g	
       a.n671,
       -- 672, 20:2 n-6 c,c, g	
       a.n672,
       -- 673, 16:1 c, g	
       a.n673,
       -- 674, 18:1 c, g	
       a.n674,
       -- 675, 18:2 n-6 c,c, g	
       a.n675,
       -- 676, 22:1 c, g	
       a.n676,
       -- 685, 18:3 n-6 c,c,c, g	
       a.n685,
       -- 687, 17:1, g	
       a.n687,
       -- 689, 20:3 undifferentiated, g	
       a.n689,
       -- 693, Fatty acids, total trans-monoenoic, g	
       a.n693,
       -- 695, Fatty acids, total trans-polyenoic, g	
       a.n695,
       -- 696, 13:0, g	
       a.n696,
       -- 697, 15:1, g	
       a.n697,
       -- 851, 18:3 n-3 c,c,c (ALA), g	
       a.n851,
       -- 852, 20:3 n-3, g	
       a.n852,
       -- 853, 20:3 n-6, g	
       a.n853,
       -- 855, 20:4 n-6, g	
       a.n855,
       -- 856, 18:3i, g	
       a.n856,
       -- 857, 21:5, g	
       a.n857,
       -- 858, 22:4, g	
       a.n858,
       -- 859, 18:1-11 t (18:1t n-7), g	
       a.n859
FROM allfoodsandnutrients a,
     food_des b,
     fd_group c
WHERE a.ndb_no = b.ndb_no
AND   b.fdgrp_cd = c.fdgrp_cd
ORDER BY fdgrp_cd,
         ndb_no
--
)
WITH DATA;
/


CREATE TABLE AllFoodsAndNutrients
AS
(
--
SELECT
       -- food number
       x1.ndb_no,
       -- 203, Protein, g
       x1.n203,
       -- 204, Total lipid (fat), g	
       x2.n204,
       -- 205, Carbohydrate, by difference, g	
       x3.n205,
       -- 207, Ash, g	
       x4.n207,
       -- 208, Energy, kcal	
       x5.n208,
       -- 209, Starch, g	
       x6.n209,
       -- 210, Sucrose, g	
       x7.n210,
       -- 211, Glucose (dextrose), g	
       x8.n211,
       -- 212, Fructose, g	
       x9.n212,
       -- 213, Lactose, g	
       x10.n213,
       -- 214, Maltose, g	
       x11.n214,
       -- 221, Alcohol, ethyl, g	
       x12.n221,
       -- 255, Water, g	
       x13.n255,
       -- 257, Adjusted Protein, g	
       x14.n257,
       -- 262, Caffeine, mg	
       x15.n262,
       -- 263, Theobromine, mg	
       x16.n263,
       -- 268, Energy, kJ	
       x17.n268,
       -- 269, Sugars, total, g	
       x18.n269,
       -- 287, Galactose, g	
       x19.n287,
       -- 291, Fiber, total dietary, g	
       x20.n291,
       -- 301, Calcium, Ca, mg	
       x21.n301,
       -- 303, Iron, Fe, mg	
       x22.n303,
       -- 304, Magnesium, Mg, mg	
       x23.n304,
       -- 305, Phosphorus, P, mg	
       x24.n305,
       -- 306, Potassium, K, mg	
       x25.n306,
       -- 307, Sodium, Na, mg	
       x26.n307,
       -- 309, Zinc, Zn, mg	
       x27.n309,
       -- 312, Copper, Cu, mg	
       x28.n312,
       -- 313, Fluoride, F, µg	
       x29.n313,
       -- 315, Manganese, Mn, mg	
       x30.n315,
       -- 317, Selenium, Se, µg	
       x31.n317,
       -- 318, Vitamin A, IU, IU	
       x32.n318,
       -- 319, Retinol, µg	
       x33.n319,
       -- 320, Vitamin A, RAE, µg	
       x34.n320,
       -- 321, Carotene, beta, µg	
       x35.n321,
       -- 322, Carotene, alpha, µg	
       x36.n322,
       -- 323, Vitamin E (alpha-tocopherol), mg	
       x37.n323,
       -- 324, Vitamin D, IU	
       x38.n324,
       -- 325, Vitamin D2 (ergocalciferol), µg	
       x39.n325,
       -- 326, Vitamin D3 (cholecalciferol), µg	
       x40.n326,
       -- 328, Vitamin D (D2 + D3), µg	
       x41.n328,
       -- 334, Cryptoxanthin, beta, µg	
       x42.n334,
       -- 337, Lycopene, µg	
       x43.n337,
       -- 338, Lutein + zeaxanthin, µg	
       x44.n338,
       -- 341, Tocopherol, beta, mg	
       x45.n341,
       -- 342, Tocopherol, gamma, mg	
       x46.n342,
       -- 343, Tocopherol, delta, mg	
       x47.n343,
       -- 344, Tocotrienol, alpha, mg	
       x48.n344,
       -- 345, Tocotrienol, beta, mg	
       x49.n345,
       -- 346, Tocotrienol, gamma, mg	
       x50.n346,
       -- 347, Tocotrienol, delta, mg	
       x51.n347,
       -- 401, Vitamin C, total ascorbic acid, mg	
       x52.n401,
       -- 404, Thiamin, mg	
       x53.n404,
       -- 405, Riboflavin, mg	
       x54.n405,
       -- 406, Niacin, mg	
       x55.n406,
       -- 410, Pantothenic acid, mg	
       x56.n410,
       -- 415, Vitamin B-6, mg	
       x57.n415,
       -- 417, Folate, total, µg	
       x58.n417,
       -- 418, Vitamin B-12, µg	
       x59.n418,
       -- 421, Choline, total, mg	
       x60.n421,
       -- 428, Menaquinone-4, µg	
       x61.n428,
       -- 429, Dihydrophylloquinone, µg	
       x62.n429,
       -- 430, Vitamin K (phylloquinone), µg	
       x63.n430,
       -- 431, Folic acid, µg	
       x64.n431,
       -- 432, Folate, food, µg	
       x65.n432,
       -- 435, Folate, DFE, µg	
       x66.n435,
       -- 454, Betaine, mg	
       x67.n454,
       -- 501, Tryptophan, g	
       x68.n501,
       -- 502, Threonine, g	
       x69.n502,
       -- 503, Isoleucine, g	
       x70.n503,
       -- 504, Leucine, g	
       x71.n504,
       -- 505, Lysine, g	
       x72.n505,
       -- 506, Methionine, g	
       x73.n506,
       -- 507, Cystine, g	
       x74.n507,
       -- 508, Phenylalanine, g	
       x75.n508,
       -- 509, Tyrosine, g	
       x76.n509,
       -- 510, Valine, g	
       x77.n510,
       -- 511, Arginine, g	
       x78.n511,
       -- 512, Histidine, g	
       x79.n512,
       -- 513, Alanine, g	
       x80.n513,
       -- 514, Aspartic acid, g	
       x81.n514,
       -- 515, Glutamic acid, g	
       x82.n515,
       -- 516, Glycine, g	
       x83.n516,
       -- 517, Proline, g	
       x84.n517,
       -- 518, Serine, g	
       x85.n518,
       -- 521, Hydroxyproline, g	
       x86.n521,
       -- 573, Vitamin E, added, mg	
       x87.n573,
       -- 578, Vitamin B-12, added, µg	
       x88.n578,
       -- 601, Cholesterol, mg	
       x89.n601,
       -- 605, Fatty acids, total trans, g	
       x90.n605,
       -- 606, Fatty acids, total saturated, g	
       x91.n606,
       -- 607, 4:0, g	
       x92.n607,
       -- 608, 6:0, g	
       x93.n608,
       -- 609, 8:0, g	
       x94.n609,
       -- 610, 10:0, g	
       x95.n610,
       -- 611, 12:0, g	
       x96.n611,
       -- 612, 14:0, g	
       x97.n612,
       -- 613, 16:0, g	
       x98.n613,
       -- 614, 18:0, g	
       x99.n614,
       -- 615, 20:0, g	
       x100.n615,
       -- 617, 18:1 undifferentiated, g	
       x101.n617,
       -- 618, 18:2 undifferentiated, g	
       x102.n618,
       -- 619, 18:3 undifferentiated, g	
       x103.n619,
       -- 620, 20:4 undifferentiated, g	
       x104.n620,
       -- 621, 22:6 n-3 (DHA), g	
       x105.n621,
       -- 624, 22:0, g	
       x106.n624,
       -- 625, 14:1, g	
       x107.n625,
       -- 626, 16:1 undifferentiated, g	
       x108.n626,
       -- 627, 18:4, g	
       x109.n627,
       -- 628, 20:1, g	
       x110.n628,
       -- 629, 20:5 n-3 (EPA), g	
       x111.n629,
       -- 630, 22:1 undifferentiated, g	
       x112.n630,
       -- 631, 22:5 n-3 (DPA), g	
       x113.n631,
       -- 636, Phytosterols, mg	
       x114.n636,
       -- 638, Stigmasterol, mg	
       x115.n638,
       -- 639, Campesterol, mg	
       x116.n639,
       -- 641, Beta-sitosterol, mg	
       x117.n641,
       -- 645, Fatty acids, total monounsaturated, g	
       x118.n645,
       -- 646, Fatty acids, total polyunsaturated, g	
       x119.n646,
       -- 652, 15:0, g	
       x120.n652,
       -- 653, 17:0, g	
       x121.n653,
       -- 654, 24:0, g	
       x122.n654,
       -- 662, 16:1 t, g	
       x123.n662,
       -- 663, 18:1 t, g	
       x124.n663,
       -- 664, 22:1 t, g	
       x125.n664,
       -- 665, 18:2 t not further defined, g	
       x126.n665,
       -- 666, 18:2 i, g	
       x127.n666,
       -- 669, 18:2 t,t, g	
       x128.n669,
       -- 670, 18:2 CLAs, g	
       x129.n670,
       -- 671, 24:1 c, g	
       x130.n671,
       -- 672, 20:2 n-6 c,c, g	
       x131.n672,
       -- 673, 16:1 c, g	
       x132.n673,
       -- 674, 18:1 c, g	
       x133.n674,
       -- 675, 18:2 n-6 c,c, g	
       x134.n675,
       -- 676, 22:1 c, g	
       x135.n676,
       -- 685, 18:3 n-6 c,c,c, g	
       x136.n685,
       -- 687, 17:1, g	
       x137.n687,
       -- 689, 20:3 undifferentiated, g	
       x138.n689,
       -- 693, Fatty acids, total trans-monoenoic, g	
       x139.n693,
       -- 695, Fatty acids, total trans-polyenoic, g	
       x140.n695,
       -- 696, 13:0, g	
       x141.n696,
       -- 697, 15:1, g	
       x142.n697,
       -- 851, 18:3 n-3 c,c,c (ALA), g	
       x143.n851,
       -- 852, 20:3 n-3, g	
       x144.n852,
       -- 853, 20:3 n-6, g	
       x145.n853,
       -- 855, 20:4 n-6, g	
       x146.n855,
       -- 856, 18:3i, g	
       x147.n856,
       -- 857, 21:5, g	
       x148.n857,
       -- 858, 22:4, g	
       x149.n858,
       -- 859, 18:1-11 t (18:1t n-7), g	
       x150.n859
FROM
-- 203, Protein, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n203
       b.nutr_val AS n203
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '203') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '203') b ON (a.ndb_no = b.ndb_no)) x1,
-- 204, Total lipid (fat), g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n204
       b.nutr_val AS n204
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '204') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '204') b ON (a.ndb_no = b.ndb_no)) x2,
-- 205, Carbohydrate, by difference, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n205
       b.nutr_val AS n205
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '205') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '205') b ON (a.ndb_no = b.ndb_no)) x3,
-- 207, Ash, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n207
       b.nutr_val AS n207
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '207') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '207') b ON (a.ndb_no = b.ndb_no)) x4,
-- 208, Energy, kcal
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n208
       b.nutr_val AS n208
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '208') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '208') b ON (a.ndb_no = b.ndb_no)) x5,
-- 209, Starch, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n209
       b.nutr_val AS n209
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '209') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '209') b ON (a.ndb_no = b.ndb_no)) x6,
-- 210, Sucrose, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n210
       b.nutr_val AS n210
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '210') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '210') b ON (a.ndb_no = b.ndb_no)) x7,
-- 211, Glucose (dextrose), g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n211
       b.nutr_val AS n211
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '211') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '211') b ON (a.ndb_no = b.ndb_no)) x8,
-- 212, Fructose, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n212
       b.nutr_val AS n212
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '212') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '212') b ON (a.ndb_no = b.ndb_no)) x9,
-- 213, Lactose, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n213
       b.nutr_val AS n213
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '213') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '213') b ON (a.ndb_no = b.ndb_no)) x10,
-- 214, Maltose, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n214
       b.nutr_val AS n214
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '214') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '214') b ON (a.ndb_no = b.ndb_no)) x11,
-- 221, Alcohol, ethyl, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n221
       b.nutr_val AS n221
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '221') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '221') b ON (a.ndb_no = b.ndb_no)) x12,
-- 255, Water, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n255
       b.nutr_val AS n255
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '255') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '255') b ON (a.ndb_no = b.ndb_no)) x13,
-- 257, Adjusted Protein, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n257
       b.nutr_val AS n257
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '257') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '257') b ON (a.ndb_no = b.ndb_no)) x14,
-- 262, Caffeine, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n262
       b.nutr_val AS n262
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '262') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '262') b ON (a.ndb_no = b.ndb_no)) x15,
-- 263, Theobromine, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n263
       b.nutr_val AS n263
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '263') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '263') b ON (a.ndb_no = b.ndb_no)) x16,
-- 268, Energy, kJ
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n268
       b.nutr_val AS n268
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '268') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '268') b ON (a.ndb_no = b.ndb_no)) x17,
-- 269, Sugars, total, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n269
       b.nutr_val AS n269
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '269') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '269') b ON (a.ndb_no = b.ndb_no)) x18,
-- 287, Galactose, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n287
       b.nutr_val AS n287
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '287') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '287') b ON (a.ndb_no = b.ndb_no)) x19,
-- 291, Fiber, total dietary, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n291
       b.nutr_val AS n291
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '291') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '291') b ON (a.ndb_no = b.ndb_no)) x20,
-- 301, Calcium, Ca, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n301
       b.nutr_val AS n301
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '301') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '301') b ON (a.ndb_no = b.ndb_no)) x21,
-- 303, Iron, Fe, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n303
       b.nutr_val AS n303
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '303') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '303') b ON (a.ndb_no = b.ndb_no)) x22,
-- 304, Magnesium, Mg, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n304
       b.nutr_val AS n304
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '304') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '304') b ON (a.ndb_no = b.ndb_no)) x23,
-- 305, Phosphorus, P, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n305
       b.nutr_val AS n305
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '305') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '305') b ON (a.ndb_no = b.ndb_no)) x24,
-- 306, Potassium, K, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n306
       b.nutr_val AS n306
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '306') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '306') b ON (a.ndb_no = b.ndb_no)) x25,
-- 307, Sodium, Na, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n307
       b.nutr_val AS n307
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '307') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '307') b ON (a.ndb_no = b.ndb_no)) x26,
-- 309, Zinc, Zn, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n309
       b.nutr_val AS n309
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '309') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '309') b ON (a.ndb_no = b.ndb_no)) x27,
-- 312, Copper, Cu, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n312
       b.nutr_val AS n312
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '312') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '312') b ON (a.ndb_no = b.ndb_no)) x28,
-- 313, Fluoride, F, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n313
       b.nutr_val AS n313
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '313') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '313') b ON (a.ndb_no = b.ndb_no)) x29,
-- 315, Manganese, Mn, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n315
       b.nutr_val AS n315
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '315') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '315') b ON (a.ndb_no = b.ndb_no)) x30,
-- 317, Selenium, Se, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n317
       b.nutr_val AS n317
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '317') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '317') b ON (a.ndb_no = b.ndb_no)) x31,
-- 318, Vitamin A, IU, IU
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n318
       b.nutr_val AS n318
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '318') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '318') b ON (a.ndb_no = b.ndb_no)) x32,
-- 319, Retinol, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n319
       b.nutr_val AS n319
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '319') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '319') b ON (a.ndb_no = b.ndb_no)) x33,
-- 320, Vitamin A, RAE, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n320
       b.nutr_val AS n320
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '320') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '320') b ON (a.ndb_no = b.ndb_no)) x34,
-- 321, Carotene, beta, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n321
       b.nutr_val AS n321
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '321') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '321') b ON (a.ndb_no = b.ndb_no)) x35,
-- 322, Carotene, alpha, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n322
       b.nutr_val AS n322
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '322') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '322') b ON (a.ndb_no = b.ndb_no)) x36,
-- 323, Vitamin E (alpha-tocopherol), mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n323
       b.nutr_val AS n323
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '323') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '323') b ON (a.ndb_no = b.ndb_no)) x37,
-- 324, Vitamin D, IU
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n324
       b.nutr_val AS n324
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '324') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '324') b ON (a.ndb_no = b.ndb_no)) x38,
-- 325, Vitamin D2 (ergocalciferol), µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n325
       b.nutr_val AS n325
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '325') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '325') b ON (a.ndb_no = b.ndb_no)) x39,
-- 326, Vitamin D3 (cholecalciferol), µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n326
       b.nutr_val AS n326
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '326') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '326') b ON (a.ndb_no = b.ndb_no)) x40,
-- 328, Vitamin D (D2 + D3), µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n328
       b.nutr_val AS n328
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '328') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '328') b ON (a.ndb_no = b.ndb_no)) x41,
-- 334, Cryptoxanthin, beta, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n334
       b.nutr_val AS n334
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '334') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '334') b ON (a.ndb_no = b.ndb_no)) x42,
-- 337, Lycopene, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n337
       b.nutr_val AS n337
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '337') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '337') b ON (a.ndb_no = b.ndb_no)) x43,
-- 338, Lutein + zeaxanthin, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n338
       b.nutr_val AS n338
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '338') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '338') b ON (a.ndb_no = b.ndb_no)) x44,
-- 341, Tocopherol, beta, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n341
       b.nutr_val AS n341
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '341') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '341') b ON (a.ndb_no = b.ndb_no)) x45,
-- 342, Tocopherol, gamma, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n342
       b.nutr_val AS n342
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '342') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '342') b ON (a.ndb_no = b.ndb_no)) x46,
-- 343, Tocopherol, delta, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n343
       b.nutr_val AS n343
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '343') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '343') b ON (a.ndb_no = b.ndb_no)) x47,
-- 344, Tocotrienol, alpha, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n344
       b.nutr_val AS n344
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '344') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '344') b ON (a.ndb_no = b.ndb_no)) x48,
-- 345, Tocotrienol, beta, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n345
       b.nutr_val AS n345
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '345') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '345') b ON (a.ndb_no = b.ndb_no)) x49,
-- 346, Tocotrienol, gamma, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n346
       b.nutr_val AS n346
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '346') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '346') b ON (a.ndb_no = b.ndb_no)) x50,
-- 347, Tocotrienol, delta, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n347
       b.nutr_val AS n347
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '347') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '347') b ON (a.ndb_no = b.ndb_no)) x51,
-- 401, Vitamin C, total ascorbic acid, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n401
       b.nutr_val AS n401
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '401') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '401') b ON (a.ndb_no = b.ndb_no)) x52,
-- 404, Thiamin, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n404
       b.nutr_val AS n404
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '404') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '404') b ON (a.ndb_no = b.ndb_no)) x53,
-- 405, Riboflavin, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n405
       b.nutr_val AS n405
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '405') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '405') b ON (a.ndb_no = b.ndb_no)) x54,
-- 406, Niacin, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n406
       b.nutr_val AS n406
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '406') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '406') b ON (a.ndb_no = b.ndb_no)) x55,
-- 410, Pantothenic acid, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n410
       b.nutr_val AS n410
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '410') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '410') b ON (a.ndb_no = b.ndb_no)) x56,
-- 415, Vitamin B-6, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n415
       b.nutr_val AS n415
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '415') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '415') b ON (a.ndb_no = b.ndb_no)) x57,
-- 417, Folate, total, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n417
       b.nutr_val AS n417
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '417') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '417') b ON (a.ndb_no = b.ndb_no)) x58,
-- 418, Vitamin B-12, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n418
       b.nutr_val AS n418
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '418') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '418') b ON (a.ndb_no = b.ndb_no)) x59,
-- 421, Choline, total, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n421
       b.nutr_val AS n421
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '421') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '421') b ON (a.ndb_no = b.ndb_no)) x60,
-- 428, Menaquinone-4, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n428
       b.nutr_val AS n428
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '428') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '428') b ON (a.ndb_no = b.ndb_no)) x61,
-- 429, Dihydrophylloquinone, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n429
       b.nutr_val AS n429
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '429') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '429') b ON (a.ndb_no = b.ndb_no)) x62,
-- 430, Vitamin K (phylloquinone), µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n430
       b.nutr_val AS n430
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '430') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '430') b ON (a.ndb_no = b.ndb_no)) x63,
-- 431, Folic acid, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n431
       b.nutr_val AS n431
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '431') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '431') b ON (a.ndb_no = b.ndb_no)) x64,
-- 432, Folate, food, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n432
       b.nutr_val AS n432
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '432') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '432') b ON (a.ndb_no = b.ndb_no)) x65,
-- 435, Folate, DFE, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n435
       b.nutr_val AS n435
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '435') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '435') b ON (a.ndb_no = b.ndb_no)) x66,
-- 454, Betaine, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n454
       b.nutr_val AS n454
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '454') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '454') b ON (a.ndb_no = b.ndb_no)) x67,
-- 501, Tryptophan, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n501
       b.nutr_val AS n501
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '501') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '501') b ON (a.ndb_no = b.ndb_no)) x68,
-- 502, Threonine, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n502
       b.nutr_val AS n502
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '502') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '502') b ON (a.ndb_no = b.ndb_no)) x69,
-- 503, Isoleucine, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n503
       b.nutr_val AS n503
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '503') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '503') b ON (a.ndb_no = b.ndb_no)) x70,
-- 504, Leucine, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n504
       b.nutr_val AS n504
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '504') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '504') b ON (a.ndb_no = b.ndb_no)) x71,
-- 505, Lysine, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n505
       b.nutr_val AS n505
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '505') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '505') b ON (a.ndb_no = b.ndb_no)) x72,
-- 506, Methionine, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n506
       b.nutr_val AS n506
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '506') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '506') b ON (a.ndb_no = b.ndb_no)) x73,
-- 507, Cystine, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n507
       b.nutr_val AS n507
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '507') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '507') b ON (a.ndb_no = b.ndb_no)) x74,
-- 508, Phenylalanine, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n508
       b.nutr_val AS n508
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '508') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '508') b ON (a.ndb_no = b.ndb_no)) x75,
-- 509, Tyrosine, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n509
       b.nutr_val AS n509
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '509') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '509') b ON (a.ndb_no = b.ndb_no)) x76,
-- 510, Valine, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n510
       b.nutr_val AS n510
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '510') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '510') b ON (a.ndb_no = b.ndb_no)) x77,
-- 511, Arginine, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n511
       b.nutr_val AS n511
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '511') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '511') b ON (a.ndb_no = b.ndb_no)) x78,
-- 512, Histidine, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n512
       b.nutr_val AS n512
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '512') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '512') b ON (a.ndb_no = b.ndb_no)) x79,
-- 513, Alanine, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n513
       b.nutr_val AS n513
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '513') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '513') b ON (a.ndb_no = b.ndb_no)) x80,
-- 514, Aspartic acid, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n514
       b.nutr_val AS n514
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '514') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '514') b ON (a.ndb_no = b.ndb_no)) x81,
-- 515, Glutamic acid, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n515
       b.nutr_val AS n515
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '515') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '515') b ON (a.ndb_no = b.ndb_no)) x82,
-- 516, Glycine, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n516
       b.nutr_val AS n516
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '516') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '516') b ON (a.ndb_no = b.ndb_no)) x83,
-- 517, Proline, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n517
       b.nutr_val AS n517
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '517') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '517') b ON (a.ndb_no = b.ndb_no)) x84,
-- 518, Serine, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n518
       b.nutr_val AS n518
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '518') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '518') b ON (a.ndb_no = b.ndb_no)) x85,
-- 521, Hydroxyproline, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n521
       b.nutr_val AS n521
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '521') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '521') b ON (a.ndb_no = b.ndb_no)) x86,
-- 573, Vitamin E, added, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n573
       b.nutr_val AS n573
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '573') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '573') b ON (a.ndb_no = b.ndb_no)) x87,
-- 578, Vitamin B-12, added, µg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n578
       b.nutr_val AS n578
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '578') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '578') b ON (a.ndb_no = b.ndb_no)) x88,
-- 601, Cholesterol, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n601
       b.nutr_val AS n601
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '601') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '601') b ON (a.ndb_no = b.ndb_no)) x89,
-- 605, Fatty acids, total trans, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n605
       b.nutr_val AS n605
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '605') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '605') b ON (a.ndb_no = b.ndb_no)) x90,
-- 606, Fatty acids, total saturated, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n606
       b.nutr_val AS n606
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '606') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '606') b ON (a.ndb_no = b.ndb_no)) x91,
-- 607, 4:0, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n607
       b.nutr_val AS n607
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '607') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '607') b ON (a.ndb_no = b.ndb_no)) x92,
-- 608, 6:0, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n608
       b.nutr_val AS n608
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '608') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '608') b ON (a.ndb_no = b.ndb_no)) x93,
-- 609, 8:0, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n609
       b.nutr_val AS n609
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '609') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '609') b ON (a.ndb_no = b.ndb_no)) x94,
-- 610, 10:0, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n610
       b.nutr_val AS n610
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '610') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '610') b ON (a.ndb_no = b.ndb_no)) x95,
-- 611, 12:0, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n611
       b.nutr_val AS n611
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '611') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '611') b ON (a.ndb_no = b.ndb_no)) x96,
-- 612, 14:0, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n612
       b.nutr_val AS n612
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '612') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '612') b ON (a.ndb_no = b.ndb_no)) x97,
-- 613, 16:0, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n613
       b.nutr_val AS n613
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '613') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '613') b ON (a.ndb_no = b.ndb_no)) x98,
-- 614, 18:0, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n614
       b.nutr_val AS n614
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '614') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '614') b ON (a.ndb_no = b.ndb_no)) x99,
-- 615, 20:0, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n615
       b.nutr_val AS n615
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '615') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '615') b ON (a.ndb_no = b.ndb_no)) x100,
-- 617, 18:1 undifferentiated, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n617
       b.nutr_val AS n617
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '617') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '617') b ON (a.ndb_no = b.ndb_no)) x101,
-- 618, 18:2 undifferentiated, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n618
       b.nutr_val AS n618
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '618') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '618') b ON (a.ndb_no = b.ndb_no)) x102,
-- 619, 18:3 undifferentiated, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n619
       b.nutr_val AS n619
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '619') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '619') b ON (a.ndb_no = b.ndb_no)) x103,
-- 620, 20:4 undifferentiated, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n620
       b.nutr_val AS n620
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '620') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '620') b ON (a.ndb_no = b.ndb_no)) x104,
-- 621, 22:6 n-3 (DHA), g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n621
       b.nutr_val AS n621
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '621') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '621') b ON (a.ndb_no = b.ndb_no)) x105,
-- 624, 22:0, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n624
       b.nutr_val AS n624
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '624') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '624') b ON (a.ndb_no = b.ndb_no)) x106,
-- 625, 14:1, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n625
       b.nutr_val AS n625
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '625') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '625') b ON (a.ndb_no = b.ndb_no)) x107,
-- 626, 16:1 undifferentiated, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n626
       b.nutr_val AS n626
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '626') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '626') b ON (a.ndb_no = b.ndb_no)) x108,
-- 627, 18:4, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n627
       b.nutr_val AS n627
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '627') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '627') b ON (a.ndb_no = b.ndb_no)) x109,
-- 628, 20:1, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n628
       b.nutr_val AS n628
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '628') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '628') b ON (a.ndb_no = b.ndb_no)) x110,
-- 629, 20:5 n-3 (EPA), g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n629
       b.nutr_val AS n629
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '629') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '629') b ON (a.ndb_no = b.ndb_no)) x111,
-- 630, 22:1 undifferentiated, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n630
       b.nutr_val AS n630
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '630') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '630') b ON (a.ndb_no = b.ndb_no)) x112,
-- 631, 22:5 n-3 (DPA), g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n631
       b.nutr_val AS n631
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '631') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '631') b ON (a.ndb_no = b.ndb_no)) x113,
-- 636, Phytosterols, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n636
       b.nutr_val AS n636
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '636') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '636') b ON (a.ndb_no = b.ndb_no)) x114,
-- 638, Stigmasterol, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n638
       b.nutr_val AS n638
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '638') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '638') b ON (a.ndb_no = b.ndb_no)) x115,
-- 639, Campesterol, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n639
       b.nutr_val AS n639
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '639') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '639') b ON (a.ndb_no = b.ndb_no)) x116,
-- 641, Beta-sitosterol, mg
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n641
       b.nutr_val AS n641
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '641') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '641') b ON (a.ndb_no = b.ndb_no)) x117,
-- 645, Fatty acids, total monounsaturated, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n645
       b.nutr_val AS n645
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '645') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '645') b ON (a.ndb_no = b.ndb_no)) x118,
-- 646, Fatty acids, total polyunsaturated, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n646
       b.nutr_val AS n646
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '646') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '646') b ON (a.ndb_no = b.ndb_no)) x119,
-- 652, 15:0, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n652
       b.nutr_val AS n652
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '652') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '652') b ON (a.ndb_no = b.ndb_no)) x120,
-- 653, 17:0, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n653
       b.nutr_val AS n653
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '653') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '653') b ON (a.ndb_no = b.ndb_no)) x121,
-- 654, 24:0, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n654
       b.nutr_val AS n654
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '654') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '654') b ON (a.ndb_no = b.ndb_no)) x122,
-- 662, 16:1 t, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n662
       b.nutr_val AS n662
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '662') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '662') b ON (a.ndb_no = b.ndb_no)) x123,
-- 663, 18:1 t, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n663
       b.nutr_val AS n663
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '663') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '663') b ON (a.ndb_no = b.ndb_no)) x124,
-- 664, 22:1 t, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n664
       b.nutr_val AS n664
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '664') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '664') b ON (a.ndb_no = b.ndb_no)) x125,
-- 665, 18:2 t not further defined, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n665
       b.nutr_val AS n665
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '665') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '665') b ON (a.ndb_no = b.ndb_no)) x126,
-- 666, 18:2 i, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n666
       b.nutr_val AS n666
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '666') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '666') b ON (a.ndb_no = b.ndb_no)) x127,
-- 669, 18:2 t,t, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n669
       b.nutr_val AS n669
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '669') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '669') b ON (a.ndb_no = b.ndb_no)) x128,
-- 670, 18:2 CLAs, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n670
       b.nutr_val AS n670
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '670') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '670') b ON (a.ndb_no = b.ndb_no)) x129,
-- 671, 24:1 c, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n671
       b.nutr_val AS n671
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '671') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '671') b ON (a.ndb_no = b.ndb_no)) x130,
-- 672, 20:2 n-6 c,c, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n672
       b.nutr_val AS n672
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '672') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '672') b ON (a.ndb_no = b.ndb_no)) x131,
-- 673, 16:1 c, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n673
       b.nutr_val AS n673
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '673') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '673') b ON (a.ndb_no = b.ndb_no)) x132,
-- 674, 18:1 c, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n674
       b.nutr_val AS n674
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '674') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '674') b ON (a.ndb_no = b.ndb_no)) x133,
-- 675, 18:2 n-6 c,c, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n675
       b.nutr_val AS n675
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '675') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '675') b ON (a.ndb_no = b.ndb_no)) x134,
-- 676, 22:1 c, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n676
       b.nutr_val AS n676
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '676') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '676') b ON (a.ndb_no = b.ndb_no)) x135,
-- 685, 18:3 n-6 c,c,c, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n685
       b.nutr_val AS n685
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '685') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '685') b ON (a.ndb_no = b.ndb_no)) x136,
-- 687, 17:1, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n687
       b.nutr_val AS n687
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '687') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '687') b ON (a.ndb_no = b.ndb_no)) x137,
-- 689, 20:3 undifferentiated, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n689
       b.nutr_val AS n689
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '689') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '689') b ON (a.ndb_no = b.ndb_no)) x138,
-- 693, Fatty acids, total trans-monoenoic, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n693
       b.nutr_val AS n693
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '693') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '693') b ON (a.ndb_no = b.ndb_no)) x139,
-- 695, Fatty acids, total trans-polyenoic, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n695
       b.nutr_val AS n695
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '695') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '695') b ON (a.ndb_no = b.ndb_no)) x140,
-- 696, 13:0, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n696
       b.nutr_val AS n696
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '696') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '696') b ON (a.ndb_no = b.ndb_no)) x141,
-- 697, 15:1, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n697
       b.nutr_val AS n697
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '697') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '697') b ON (a.ndb_no = b.ndb_no)) x142,
-- 851, 18:3 n-3 c,c,c (ALA), g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n851
       b.nutr_val AS n851
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '851') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '851') b ON (a.ndb_no = b.ndb_no)) x143,
-- 852, 20:3 n-3, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n852
       b.nutr_val AS n852
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '852') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '852') b ON (a.ndb_no = b.ndb_no)) x144,
-- 853, 20:3 n-6, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n853
       b.nutr_val AS n853
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '853') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '853') b ON (a.ndb_no = b.ndb_no)) x145,
-- 855, 20:4 n-6, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n855
       b.nutr_val AS n855
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '855') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '855') b ON (a.ndb_no = b.ndb_no)) x146,
-- 856, 18:3i, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n856
       b.nutr_val AS n856
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '856') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '856') b ON (a.ndb_no = b.ndb_no)) x147,
-- 857, 21:5, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n857
       b.nutr_val AS n857
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '857') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '857') b ON (a.ndb_no = b.ndb_no)) x148,
-- 858, 22:4, g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n858
       b.nutr_val AS n858
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '858') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '858') b ON (a.ndb_no = b.ndb_no)) x149,
-- 859, 18:1-11 t (18:1t n-7), g
(SELECT a.ndb_no,
       a.nutr_no,
       --isnull(b.nutr_val,a.nutr_val) AS n859
       b.nutr_val AS n859
FROM (SELECT * FROM (SELECT a.ndb_no,b.nutr_no,0 as nutr_val FROM public.food_des a, (select nutr_no from public.nutr_def) b) WHERE nutr_no = '859') a
  LEFT JOIN (SELECT ndb_no,
                    nutr_no,
                    nutr_val
             FROM public.nut_data
             WHERE nutr_no = '859') b ON (a.ndb_no = b.ndb_no)) x150
WHERE x1.ndb_no = x2.ndb_no
AND   x1.ndb_no = x3.ndb_no
AND   x1.ndb_no = x4.ndb_no
AND   x1.ndb_no = x5.ndb_no
AND   x1.ndb_no = x6.ndb_no
AND   x1.ndb_no = x7.ndb_no
AND   x1.ndb_no = x8.ndb_no
AND   x1.ndb_no = x9.ndb_no
AND   x1.ndb_no = x10.ndb_no
AND   x1.ndb_no = x11.ndb_no
AND   x1.ndb_no = x12.ndb_no
AND   x1.ndb_no = x13.ndb_no
AND   x1.ndb_no = x14.ndb_no
AND   x1.ndb_no = x15.ndb_no
AND   x1.ndb_no = x16.ndb_no
AND   x1.ndb_no = x17.ndb_no
AND   x1.ndb_no = x18.ndb_no
AND   x1.ndb_no = x19.ndb_no
AND   x1.ndb_no = x20.ndb_no
AND   x1.ndb_no = x21.ndb_no
AND   x1.ndb_no = x22.ndb_no
AND   x1.ndb_no = x23.ndb_no
AND   x1.ndb_no = x24.ndb_no
AND   x1.ndb_no = x25.ndb_no
AND   x1.ndb_no = x26.ndb_no
AND   x1.ndb_no = x27.ndb_no
AND   x1.ndb_no = x28.ndb_no
AND   x1.ndb_no = x29.ndb_no
AND   x1.ndb_no = x30.ndb_no
AND   x1.ndb_no = x31.ndb_no
AND   x1.ndb_no = x32.ndb_no
AND   x1.ndb_no = x33.ndb_no
AND   x1.ndb_no = x34.ndb_no
AND   x1.ndb_no = x35.ndb_no
AND   x1.ndb_no = x36.ndb_no
AND   x1.ndb_no = x37.ndb_no
AND   x1.ndb_no = x38.ndb_no
AND   x1.ndb_no = x39.ndb_no
AND   x1.ndb_no = x40.ndb_no
AND   x1.ndb_no = x41.ndb_no
AND   x1.ndb_no = x42.ndb_no
AND   x1.ndb_no = x43.ndb_no
AND   x1.ndb_no = x44.ndb_no
AND   x1.ndb_no = x45.ndb_no
AND   x1.ndb_no = x46.ndb_no
AND   x1.ndb_no = x47.ndb_no
AND   x1.ndb_no = x48.ndb_no
AND   x1.ndb_no = x49.ndb_no
AND   x1.ndb_no = x50.ndb_no
AND   x1.ndb_no = x51.ndb_no
AND   x1.ndb_no = x52.ndb_no
AND   x1.ndb_no = x53.ndb_no
AND   x1.ndb_no = x54.ndb_no
AND   x1.ndb_no = x55.ndb_no
AND   x1.ndb_no = x56.ndb_no
AND   x1.ndb_no = x57.ndb_no
AND   x1.ndb_no = x58.ndb_no
AND   x1.ndb_no = x59.ndb_no
AND   x1.ndb_no = x60.ndb_no
AND   x1.ndb_no = x61.ndb_no
AND   x1.ndb_no = x62.ndb_no
AND   x1.ndb_no = x63.ndb_no
AND   x1.ndb_no = x64.ndb_no
AND   x1.ndb_no = x65.ndb_no
AND   x1.ndb_no = x66.ndb_no
AND   x1.ndb_no = x67.ndb_no
AND   x1.ndb_no = x68.ndb_no
AND   x1.ndb_no = x69.ndb_no
AND   x1.ndb_no = x70.ndb_no
AND   x1.ndb_no = x71.ndb_no
AND   x1.ndb_no = x72.ndb_no
AND   x1.ndb_no = x73.ndb_no
AND   x1.ndb_no = x74.ndb_no
AND   x1.ndb_no = x75.ndb_no
AND   x1.ndb_no = x76.ndb_no
AND   x1.ndb_no = x77.ndb_no
AND   x1.ndb_no = x78.ndb_no
AND   x1.ndb_no = x79.ndb_no
AND   x1.ndb_no = x80.ndb_no
AND   x1.ndb_no = x81.ndb_no
AND   x1.ndb_no = x82.ndb_no
AND   x1.ndb_no = x83.ndb_no
AND   x1.ndb_no = x84.ndb_no
AND   x1.ndb_no = x85.ndb_no
AND   x1.ndb_no = x86.ndb_no
AND   x1.ndb_no = x87.ndb_no
AND   x1.ndb_no = x88.ndb_no
AND   x1.ndb_no = x89.ndb_no
AND   x1.ndb_no = x90.ndb_no
AND   x1.ndb_no = x91.ndb_no
AND   x1.ndb_no = x92.ndb_no
AND   x1.ndb_no = x93.ndb_no
AND   x1.ndb_no = x94.ndb_no
AND   x1.ndb_no = x95.ndb_no
AND   x1.ndb_no = x96.ndb_no
AND   x1.ndb_no = x97.ndb_no
AND   x1.ndb_no = x98.ndb_no
AND   x1.ndb_no = x99.ndb_no
AND   x1.ndb_no = x100.ndb_no
AND   x1.ndb_no = x101.ndb_no
AND   x1.ndb_no = x102.ndb_no
AND   x1.ndb_no = x103.ndb_no
AND   x1.ndb_no = x104.ndb_no
AND   x1.ndb_no = x105.ndb_no
AND   x1.ndb_no = x106.ndb_no
AND   x1.ndb_no = x107.ndb_no
AND   x1.ndb_no = x108.ndb_no
AND   x1.ndb_no = x109.ndb_no
AND   x1.ndb_no = x110.ndb_no
AND   x1.ndb_no = x111.ndb_no
AND   x1.ndb_no = x112.ndb_no
AND   x1.ndb_no = x113.ndb_no
AND   x1.ndb_no = x114.ndb_no
AND   x1.ndb_no = x115.ndb_no
AND   x1.ndb_no = x116.ndb_no
AND   x1.ndb_no = x117.ndb_no
AND   x1.ndb_no = x118.ndb_no
AND   x1.ndb_no = x119.ndb_no
AND   x1.ndb_no = x120.ndb_no
AND   x1.ndb_no = x121.ndb_no
AND   x1.ndb_no = x122.ndb_no
AND   x1.ndb_no = x123.ndb_no
AND   x1.ndb_no = x124.ndb_no
AND   x1.ndb_no = x125.ndb_no
AND   x1.ndb_no = x126.ndb_no
AND   x1.ndb_no = x127.ndb_no
AND   x1.ndb_no = x128.ndb_no
AND   x1.ndb_no = x129.ndb_no
AND   x1.ndb_no = x130.ndb_no
AND   x1.ndb_no = x131.ndb_no
AND   x1.ndb_no = x132.ndb_no
AND   x1.ndb_no = x133.ndb_no
AND   x1.ndb_no = x134.ndb_no
AND   x1.ndb_no = x135.ndb_no
AND   x1.ndb_no = x136.ndb_no
AND   x1.ndb_no = x137.ndb_no
AND   x1.ndb_no = x138.ndb_no
AND   x1.ndb_no = x139.ndb_no
AND   x1.ndb_no = x140.ndb_no
AND   x1.ndb_no = x141.ndb_no
AND   x1.ndb_no = x142.ndb_no
AND   x1.ndb_no = x143.ndb_no
AND   x1.ndb_no = x144.ndb_no
AND   x1.ndb_no = x145.ndb_no
AND   x1.ndb_no = x146.ndb_no
AND   x1.ndb_no = x147.ndb_no
AND   x1.ndb_no = x148.ndb_no
AND   x1.ndb_no = x149.ndb_no
AND   x1.ndb_no = x150.ndb_no
--
)
WITH DATA;
/

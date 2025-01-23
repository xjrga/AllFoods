DROP PROCEDURE export_food_list_to_xml_includes_glycemic_load;
/
CALL export_food_list_to_xml_includes_glycemic_load();
/
CREATE PROCEDURE export_food_list_to_xml_includes_glycemic_load()
--
MODIFIES SQL DATA
DYNAMIC RESULT SETS 1
BEGIN ATOMIC
--
DECLARE result CURSOR
FOR
--
SELECT 
ndb_no,
concat(
xmlstart('food'),
xmlwrap('food-id',a.ndb_no),
xmlwrap('food-name',escape_xml_element_data(a.long_desc)),
-- Carbohydrates, By Difference, g, 205, carbohydrates-carbs_by_diff -->
xmlwrap02('carbohydrates-carbs_by_diff',ifnull(a.n205,0),'g','205'),
-- Carbohydrates, Fiber, Insoluble, g, 10018, carbohydrates-fiber_insoluble -->
xmlwrap02('carbohydrates-fiber_insoluble',0,'g','10018'),
-- Carbohydrates, Fiber, Soluble, g, 10017, carbohydrates-fiber_soluble -->
xmlwrap02('carbohydrates-fiber_soluble',0,'g','10017'),
-- Carbohydrates, Fiber, g, 291, carbohydrates-fiber -->
xmlwrap02('carbohydrates-fiber',ifnull(a.n291,0),'g','291'),
-- Carbohydrates, Fructose, g, 212, carbohydrates-fructose -->
xmlwrap02('carbohydrates-fructose',ifnull(a.n212,0),'g','212'),
-- Carbohydrates, Glucose, g, 211, carbohydrates-glucose -->
xmlwrap02('carbohydrates-glucose',ifnull(a.n211,0),'g','211'),
-- Carbohydrates, Glycemic Load, g, 10006, carbohydrates-glycemic_load -->
xmlwrap02('carbohydrates-glycemic_load',ifnull(getGL(b.gi,n205,n291),0),'g','10006'),
-- Carbohydrates, Lactose, g, 213, carbohydrates-lactose -->
xmlwrap02('carbohydrates-lactose',ifnull(a.n213,0),'g','213'),
-- Carbohydrates, Starch, g, 209, carbohydrates-starch -->
xmlwrap02('carbohydrates-starch',ifnull(a.n209,0),'g','209'),
-- Carbohydrates, Sucrose, g, 210, carbohydrates-sucrose -->
xmlwrap02('carbohydrates-sucrose',ifnull(a.n210,0),'g','210'),
-- Carbohydrates, Sugars, g, 269, carbohydrates-sugars -->
xmlwrap02('carbohydrates-sugars',ifnull(a.n269,0),'g','269'),
-- Energy, Gross, kcal, 208, energy-gross -->
xmlwrap02('energy-gross',ifnull(a.n208,0),'Kcal','208'),
-- Fats, Alpha-linolenic Acid, ALA, 18:3 n-3 c,c,c, g, 851, fats-alpha_linolenic -->
--xmlwrap02('fats-alphalinolenic',ifnull(a.n851,0),'g','851'),
-- Fats, Alpha-linolenic Acid, ALA, 18:3 n-3, g, 619, fats-linolenic -->
xmlwrap02('fats-linolenic',ifnull(a.n619,0),'g','619'),
-- Fats, Cholesterol, mg, 601, fats-cholesterol -->
xmlwrap02('fats-cholesterol',ifnull(a.n601,0),'mg','601'),
-- Fats, Docosahexaenoic Acid, DHA, 22:6 n-3, g, 621, fats-dha -->
xmlwrap02('fats-dha',ifnull(a.n621,0),'g','621'),
-- Fats, Eicosapentaenoic Acid, EPA, 20:5 n-3, g, 629, fats-epa -->
xmlwrap02('fats-epa',ifnull(a.n629,0),'g','629'),
-- Fats, Lauric Acid, 12:0, g, 611, fats-lauric -->
xmlwrap02('fats-lauric',ifnull(a.n611,0),'g','611'),
-- Fats, Linoleic Acid, LA, 18:2 n-6 c,c, g, 675, fats-linoleic -->
--xmlwrap02('fats-linoleic',ifnull(a.n675,0),'g','675'),
-- Fats, Linoleic Acid, LA, 18:2 n-6, g, 618, fats-linoleic -->
xmlwrap02('fats-linoleic',ifnull(a.n618,0),'g','618'),
-- Fats, Monounsaturated Fat, MUFA, g, 645, fats-monounsaturated -->
xmlwrap02('fats-monounsaturated',ifnull(a.n645,0),'g','645'),
-- Fats, Myristic Acid, 14:0, g, 612, fats-myristic -->
xmlwrap02('fats-myristic',ifnull(a.n612,0),'g','612'),
-- Fats, Palmitic Acid, 16:0, g, 613, fats-palmitic -->
xmlwrap02('fats-palmitic',ifnull(a.n613,0),'g','613'),
-- Fats, Polyunsaturated Fat, PUFA, g, 646, fats-polyunsaturated -->
xmlwrap02('fats-polyunsaturated',ifnull(a.n646,0),'g','646'),
-- Fats, Saturated Fat, SFA, g, 606, fats-saturated -->
xmlwrap02('fats-saturated',ifnull(a.n606,0),'g','606'),
-- Fats, Stearic Acid, 18:0, g, 614, fats-stearic -->
xmlwrap02('fats-stearic',ifnull(a.n614,0),'g','614'),
-- Fats, Total Fat, g, 204, fats-total -->
xmlwrap02('fats-total',ifnull(a.n204,0),'g','204'),
-- Minerals, Calcium, mg, 301, minerals-calcium -->
xmlwrap02('minerals-calcium',ifnull(a.n301,0),'mg','301'),
-- Minerals, Copper, mg, 312, minerals-copper -->
xmlwrap02('minerals-copper',ifnull(a.n312,0),'mg','312'),
-- Minerals, Iron, mg, 303, minerals-iron -->
xmlwrap02('minerals-iron',ifnull(a.n303,0),'mg','303'),
-- Minerals, Magnesium, mg, 304, minerals-magnesium -->
xmlwrap02('minerals-magnesium',ifnull(a.n304,0),'mg','304'),
-- Minerals, Manganese, mg, 315, minerals-manganese -->
xmlwrap02('minerals-manganese',ifnull(a.n315,0),'mg','315'),
-- Minerals, Phosphorus, mg, 305, minerals-phosphorus -->
xmlwrap02('minerals-phosphorus',ifnull(a.n305,0),'mg','305'),
-- Minerals, Potassium, mg, 306, minerals-potassium -->
xmlwrap02('minerals-potassium',ifnull(a.n306,0),'mg','306'),
-- Minerals, Selenium, mcg, 317, minerals-selenium -->
xmlwrap02('minerals-selenium',ifnull(a.n317,0),'mcg','317'),
-- Minerals, Sodium, mg, 307, minerals-sodium -->
xmlwrap02('minerals-sodium',ifnull(a.n307,0),'mg','307'),
-- Minerals, Zinc, mg, 309, minerals-zinc -->
xmlwrap02('minerals-zinc',ifnull(a.n309,0),'mg','309'),
-- Other, Alcohol, g, 221, other-alcohol -->
xmlwrap02('other-alcohol',ifnull(a.n221,0),'g','221'),
-- Other, Cost, $, 10005, other-cost -->
xmlwrap02('other-cost',0,'$','10005'),
-- Other, Water, g, 255, other-water -->
xmlwrap02('other-water',ifnull(a.n255,0),'g','255'),
-- Other, Weight, g, 10000, other-weight -->
xmlwrap02('other-weight',100.00,'g','10000'),
-- Phytonutrients, Anthocyanins, mg, 10024, phytonutrients-anthocyanins -->
xmlwrap02('phytonutrients-anthocyanins',ifnull(anthocyanidins,0),'mg','10024'),
-- Phytonutrients, Caffeine, mg, 262, phytonutrients-caffeine -->
xmlwrap02('phytonutrients-caffeine',ifnull(a.n262,0),'mg','262'),
-- Phytonutrients, Carotene, beta, mcg, 321, phytonutrients-beta_carotene -->
xmlwrap02('phytonutrients-beta_carotene',ifnull(a.n321,0),'mcg','321'),
-- Phytonutrients, Carotenoids, mg, 10019, phytonutrients-carotenoids -->
xmlwrap02('phytonutrients-carotenoids',ifnull(n321+n322+n334+n337+n338,0),'mcg','10019'),
-- Phytonutrients, Flavanols, mg, 10022, phytonutrients-flavanols -->
xmlwrap02('phytonutrients-flavanols',ifnull(flavan_3_ols,0),'mg','10022'),
-- Phytonutrients, Flavanones, mg, 10023, phytonutrients-flavanones -->
xmlwrap02('phytonutrients-flavanones',ifnull(flavanones,0),'mg','10023'),
-- Phytonutrients, Flavones, mg, 10021, phytonutrients-flavones -->
xmlwrap02('phytonutrients-flavones',ifnull(flavones,0),'mg','10021'),
-- Phytonutrients, Flavonoids, mg, 10026, phytonutrients-flavonoids -->
xmlwrap02('phytonutrients-flavonoids',ifnull(flavonoids,0),'mg','10026'),
-- Phytonutrients, Flavonols, mg, 10020, phytonutrients-flavonols -->
xmlwrap02('phytonutrients-flavonols',ifnull(flavonols,0),'mg','10020'),
-- Phytonutrients, Isoflavones, mg, 10025, phytonutrients-isoflavones -->
xmlwrap02('phytonutrients-isoflavones',ifnull(isoflavones,0),'mg','10025'),
-- Phytonutrients, Lutein + zeaxanthin, mcg, 338, phytonutrients-lutein_zeaxanthin -->
xmlwrap02('phytonutrients-lutein_zeaxanthin',ifnull(a.n338,0),'mcg','338'),
-- Phytonutrients, Lycopene, mcg, 337, phytonutrients-lycopene -->
xmlwrap02('phytonutrients-lycopene',ifnull(a.n337,0),'mcg','337'),
-- Phytonutrients, Phytosterols, mg, 636, phytonutrients-phytosterols -->
xmlwrap02('phytonutrients-phytosterols',ifnull(a.n636,0),'mg','636'),
-- Phytonutrients, Theobromine, mg, 263, phytonutrients-theobromine -->
xmlwrap02('phytonutrients-theobromine',ifnull(a.n263,0),'mg','263'),
-- Protein, Complete Protein, g, 10001, protein-complete -->
xmlwrap02('protein-complete',0.0,'g','10001'),
-- Protein, Total Protein, g, 203, protein-total -->
xmlwrap02('protein-total',ifnull(a.n203,0),'g','203'),
-- Vitamins, A, RAE, mcg, 320, vitamins-vitamin_a -->
xmlwrap02('vitamins-vitamin_a',ifnull(a.n320,0),'mcg','320'),
-- Vitamins, B12, mcg, 418, vitamins-vitamin_b12 -->
xmlwrap02('vitamins-vitamin_b12',ifnull(a.n418,0),'mcg','418'),
-- Vitamins, B6, mg, 415, vitamins-vitamin_b6 -->
xmlwrap02('vitamins-vitamin_b6',ifnull(a.n415,0),'mg','415'),
-- Vitamins, C, mg, 401, vitamins-vitamin_c -->
xmlwrap02('vitamins-vitamin_c',ifnull(a.n401,0),'mg','401'),
-- Vitamins, Choline, mg, 421, vitamins-choline -->
xmlwrap02('vitamins-choline',ifnull(a.n421,0),'mg','421'),
-- Vitamins, D, mcg, 328, vitamins-vitamin_d -->
xmlwrap02('vitamins-vitamin_d',ifnull(a.n328,0),'mcg','328'),
-- Vitamins, E, mg, 323, vitamins-vitamin_e -->
xmlwrap02('vitamins-vitamin_e',ifnull(a.n323,0),'mg','323'),
-- Vitamins, Folate, DFE, mcg, 435, vitamins-folate -->
xmlwrap02('vitamins-folate',ifnull(a.n435,0),'mcg','435'),
-- Vitamins, K, mcg, 430, vitamins-vitamin_k -->
xmlwrap02('vitamins-vitamin_k',ifnull(a.n430,0),'mcg','430'),
-- Vitamins, Niacin, mg, 406, vitamins-niacin -->
xmlwrap02('vitamins-niacin',ifnull(a.n406,0),'mg','406'),
-- Vitamins, Pantothenic Acid, mg, 410, vitamins-pantothenic -->
xmlwrap02('vitamins-pantothenic_acid',ifnull(a.n410,0),'mg','410'),
-- Vitamins, Riboflavin, mg, 405, vitamins-riboflavin -->
xmlwrap02('vitamins-riboflavin',ifnull(a.n405,0),'mg','405'),
-- Vitamins, Thiamin, mg, 404, vitamins-thiamin -->
xmlwrap02('vitamins-thiamin',ifnull(a.n404,0),'mg','404'),
xmlstart('category-list'),
xmlstart('category'),
xmlwrap('category-id',fdgrp_cd),
xmlwrap('category-name',escape_xml_element_data(fdgrp_desc)),
xmlend('category'),
xmlend('category-list'),
xmlend('food')) as food
FROM allfoodsandnutrientswithdescplusflavonoids a,
     glycemicindex b
WHERE a.ndb_no = b.ndb_no
AND (n205 - n291) > 0;
--
OPEN result;
--
END;
/


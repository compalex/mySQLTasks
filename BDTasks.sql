-- THESE TASKS HAVE BEEN DONE BY ALEX COMPALEX

-- Task #1
SELECT `model`, `speed`, `hd` 
FROM `pc` 
WHERE `price` < 500;

-- Task #2
SELECT DISTINCT `maker` 
FROM `product` 
WHERE `type` = 'printer';

-- Task #3
SELECT `model`, `ram`, `screen` 
FROM `laptop` 
WHERE `price` > 1000;

-- Task #4
SELECT * 
FROM `printer`
WHERE `color` = 'y';

-- Task #5
SELECT `model`, `speed`, `hd` 
FROM `pc` 
WHERE `cd` IN ('12x', '24x') AND `price` < 600;

-- Task #6
SELECT `product`.`maker`, `laptop`.`speed` 
FROM `laptop` 
JOIN `product` 
ON `laptop`.`model` = `product`.`model` 
WHERE NOT `laptop`.`hd` < 10;
    
-- Task #7 ?????
SELECT `product`.`model`, `pc`.`price` 
FROM `pc`
JOIN `product`
ON `pc`.`model` = `product`.`model`
WHERE `product`.`maker` = 'B'
UNION
SELECT `product`.`model`, `laptop`.`price` 
FROM `laptop`
JOIN `product`
ON `laptop`.`model` = `product`.`model`
WHERE `product`.`maker` = 'B'
UNION
SELECT `product`.`model`, `printer`.`price` 
FROM `printer`
JOIN `product`
ON `printer`.`model` = `product`.`model`
WHERE `product`.`maker` = 'B';

-- Task #8
SELECT DISTINCT `maker` 
FROM `product` 
WHERE `type` = 'PC' AND `maker` NOT IN (
	SELECT `maker`
    FROM `product`
    WHERE `type` = 'laptop'
);

-- Task #9
SELECT `product`.`maker`
FROM `product`
WHERE `product`.`model` IN (
	SELECT `pc`.`model`
    FROM `pc`
    WHERE `pc`.`speed` >= 450
);

-- Task #10 ?????
SELECT `model`, `price`
FROM `printer`
ORDER BY `price` DESC
LIMIT 3;

-- Task #11
SELECT AVG(`speed`)
FROM `pc`;

-- Task #12
SELECT AVG(`speed`)
FROM `laptop`
WHERE `price` > 1000;

-- Task #13
SELECT AVG(`pc`.`speed`)
FROM `pc`
WHERE `pc`.`model` IN (
	SELECT `product`.`model`
    FROM `product`
    WHERE `maker` = 'A'
);

-- Task #14
SELECT `speed`, AVG(`price`)
FROM `pc`
GROUP BY `speed`
ORDER BY `speed`;

-- Task #15
SELECT `hd`
FROM `pc`
GROUP BY (`hd`)
HAVING COUNT(`hd`) > 1;

-- Task #16
SELECT A.`model`, B.`model`, A.`speed`, A.`RAM`
FROM `pc` AS A
JOIN `pc` AS B
ON A.`speed` = B.`speed`
AND A.`RAM` = B.`RAM`
AND A.`model` < B.`model`;

-- Task #17
SELECT `product`.`type`, `laptop`.`model`, `laptop`.`speed`
FROM `laptop`
JOIN `product`
ON `product`.`model` = `laptop`.`model`
WHERE `laptop`.`speed` < (
	SELECT MIN(`pc`.`speed`)
    FROM `pc`
);

-- Task #18
SELECT `product`.`maker`, `printer`.`price`
FROM `printer`
JOIN `product`
ON `printer`.`model` = `product`.`model`
WHERE `printer`.`model` IN (
	SELECT `model`
	FROM `printer`
	WHERE `color` = 'y'
)
ORDER BY `price` ASC
LIMIT 2;

-- Task #19
SELECT `maker`, AVG(`screen`)
FROM `product`
JOIN `laptop`
ON `product`.`model` = `laptop`.`model`
GROUP BY `maker`;

-- Task #20
SELECT `maker`, COUNT(*)
FROM `product`
WHERE `type` = 'PC'
GROUP BY `maker`
HAVING COUNT(*) >= 3;

-- Task #21
SELECT `maker`, MAX(`price`)
FROM `product`
JOIN `pc`
ON `pc`.`model` = `product`.`model`
WHERE `type` = 'pc'
GROUP BY `maker`;

-- Task #22
SELECT `speed`, AVG(`price`)
FROM `pc`
WHERE `speed` > 600
GROUP BY `speed`
ORDER BY `speed`;

-- Task #23
SELECT DISTINCT `maker`
FROM `product`
WHERE `model` IN (
	SELECT `model`
    FROM `pc`
    WHERE `speed` >= 750
) AND `maker` IN (
    SELECT `maker`
	FROM `product`
	WHERE `model` IN (
		SELECT `model`
		FROM `laptop`
		WHERE `speed` >= 750
	)
);

-- Task #24
SELECT `model`, `price`
FROM `pc`
UNION 
SELECT `model`, `price`
FROM `laptop`
UNION 
SELECT `model`, `price`
FROM `printer`
ORDER BY `price`
LIMIT 3;

-- Task #25
SELECT `model`, `RAM`, `speed`
FROM `pc`
ORDER BY `RAM` ASC, `speed` DESC
LIMIT 3;



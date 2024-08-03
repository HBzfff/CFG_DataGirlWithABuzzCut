CREATE DATABASE `onlinedatagirlwithabuzzcut` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

-- table 1: Categories based on the conventional social interpretation of gathered visual data

CREATE TABLE Categories_GWABC (
             Cat_Id INT PRIMARY KEY AUTO_INCREMENT,
             Cat_Name VARCHAR(55),
             Cat_Descr VARCHAR(500),
             Cat_DecisionRules VARCHAR(500)
             );
             
INSERT INTO Categories_GWABC 
            (Cat_Name, Cat_Descr, Cat_DecisionRules)
            VALUES
            ("Femininity", 
            "This category includes images of figure(s) which show(s) feminine features.",
            "Based on conventional social recognition. If the figure is wearing general famale-style makeup(eye shadow/eyeliner/lipstick/...) or women's clothes(dress/skirt/skinny sweater/crop top/...), categorise the image under 'Femininity'."),
            ("Masculinity",
            "This category includes images of figure(s) which show(s) masculine features.",
            "Based on conventional social recognition. If the figure is wearing men's clothes or shows a men-like style in the context, categorise the image under 'Masculinity'."),
            ("Neutral Gender",
            "This category includes images of figure(s) without any obvious gender features.",
            "If the figure doesn't show any features of conventional gender expression (no makeup/unisex clothes), categorise the image under 'Neutral Gender'.")
            ;

SELECT * FROM Categories_GWABC;
       
-- table 2: Codes created based on the visual representations of the posts
CREATE TABLE Codes_VisualRep_GWABC (
             Code_Id INT PRIMARY KEY AUTO_INCREMENT,
             Code VARCHAR(55),
             Code_Descr VARCHAR(500),
             Code_DecisionRule VARCHAR(500)
             );
             
INSERT INTO Codes_VisualRep_GWABC 
            (Code, Code_Descr, Code_DecisionRule)
            VALUES
            ("Wearing women’s clothes or jewellery and with makeup", 
            "This code includes half-body / whole-body portraits which show figures wearing women's clothes or jewellery and with makeup",
            "If the image is a half-body / whole-body portrait, and the figure in it is wearing women's clothes (dress / skirt /skinny top/...) or jewellery (convertional women-style earings / ring / necklace... - depends on the specific items, usually with thin diameter or fine texture) with makeup (lipstick, eye shadow, eyeliners...), code the image under 'wearing women’s clothes or jewellery and with makeup'."),
            ("Wearing women’s clothes or jewellery and without makeup",
            "This code includes half-body / whole-body portraits which show figures wearing women's clothes or jewellery and without makeup",
            "If the image is a half-body / whole-body portrait, and the figure in it is wearing women's clothes (dress / skirt /skinny top/...) or jewellery (convertional women-style earings / ring / necklace... - depends on the specific items, usually with thin diameter or fine texture) without makeup, code the image under 'wearing women’s clothes or jewellery and without makeup'."),
            ("With makeup",
            "This code includes bust / headshot portraits which show figures with makeup",
            "If the image is a bust / headshot, and the figure in it is wearing makeup (lipstick, eye shadow, eyeliners...), code the image under 'with makeup'."),
            ("Wearing men’s clothes or jewellery and without makeup", 
            "This code includes half-body / whole-body portraits which show figures wearing men's clothes or jewellery and without makeup",
            "If the image is a half-body / whole-body portrait, and the figure in it is wearing men's clothes (men's suits / tank top...) or jewellery (convertional men-style earings / ring / necklace... - depends on the specific items, usually with thick diameter or rough texture) without makeup, code the image under 'wearing men’s clothes or jewellery and without makeup'."),
            ("Wearing unisex clothes or jewellery and with makeup",
            "This code includes half-body / whole-body portraits which show figures wearing unisex clothes or jewellery and with makeup",
            "If the image is a half-body / whole-body portrait, and figure in it is wearing unisex clothes (loose hoodie / loose shirt / loose trousers /...) or jewellery (simple style without any obvious gender features) with makeup (lipstick, eye shadow, eyeliners...), code the image under 'wearing unisex clothes or jewellery and with makeup'."),
            ("Wearing unisex clothes or jewellery and without makeup",
            "This code includes half-body / whole-body portraits which show figures wearing unisex clothes or jewellery and without makeup",
            "If the image is a half-body / whole-body portrait, and figure in it is wearing unisex clothes (loose hoodie / loose shirt / loose trousers /...) or jewellery (simple style without any obvious gender features) without makeup, code the image under 'wearing unisex clothes or jewellery and without makeup'."),
			("without makeup",
            "This code inclueds bust / headshot which show figures without makeup",
            "If the image is a bust / headshot, and the figure in it doesn't wear makeup, code the image under 'without makeup'.")
            ;

SELECT * FROM Codes_VisualRep_GWABC;

-- table 3: Codes allocated under each categories and the corresponding posts

CREATE TABLE CodesWithinCat (
             Cat_Id INT,
             Code_Id INT,
             Post_Id VARCHAR(10),
             CONSTRAINT CatId FOREIGN KEY (Cat_Id)
             REFERENCES Categories_GWABC (Cat_Id),
             CONSTRAINT CodeId FOREIGN KEY (Code_Id)
             REFERENCES Codes_VisualRep_GWABC (Code_Id)
             );

INSERT INTO CodesWithinCat
            (Cat_Id, Code_Id, Post_Id)
            VALUES
            (1,1,'p3'),
            (1,1,'p7'),
            (1,1,'p8'),
            (1,1,'p17'),
            (1,1,'p18'),
            (1,2,'p1'),
            (1,2,'p5'),
            (1,2,'p6'),
            (1,2,'p35'),
            (1,3,'p2'),
            (1,3,'p4'),
            (1,3,'p11'),
		    (2,4,'p9'),
            (2,4,'p15'),
            (3,5,'p10'),
            (3,5,'p13'),
            (3,5,'p14'),
            (3,5,'p19'),
            (3,5,'p21'),
            (3,5,'p22'),
            (3,5,'p30'),
            (3,5,'p31'),
            (3,6,'p12'),
            (3,6,'p16'),
            (3,6,'p20'),
            (3,6,'p25'),
            (3,6,'p26'),
            (3,6,'p34'),
            (3,7,'p28'),
            (3,7,'p32'),
            (3,7,'p23'),
            (3,7,'p24'),
            (3,7,'p27'),
            (3,7,'p29'),
            (3,7,'p33');
            
SELECT * FROM CodesWithinCat;

CREATE UNIQUE INDEX PostId ON CodesWithinCat(Post_Id);

-- table 4: Key words collected from the textual content of the posts

CREATE TABLE KeyWordsWithinPosts (
             KeyWord VARCHAR(20),
             Post_Id VARCHAR(10),
             KeyWord_Count INT,
             CONSTRAINT PostId FOREIGN KEY (Post_Id)
             REFERENCES CodesWithinCat (Post_Id)
             );

INSERT INTO KeyWordsWithinPosts
            (KeyWord, Post_Id, KeyWord_Count)
            VALUES
            ('girl', 'p5', 2),
            ('girl', 'p11', 1),
            ('girl', 'p12', 1),
            ('girl', 'p20', 1),
            ('girl', 'p22', 1),
            ('left', 'p1', 1),
            ('left', 'p5', 1),
            ('left', 'p6', 1),
            ('left', 'p15', 1),
            ('left', 'p18', 1),
            ('left', 'p34', 1),
            ('swipe', 'p1', 1),
            ('swipe', 'p5', 1),
            ('swipe', 'p6', 1),
            ('swipe', 'p15', 1),
            ('swipe', 'p18', 1),
            ('swipe', 'p34', 1),
            ('help', 'p6', 1),
            ('help','p15', 1),
            ('help', 'p16', 1),
            ('help', 'p18', 1),
            ('help', 'p34', 1),
            ('sister', 'p30', 2),
            ('year','p15', 1),
            ('year', 'p19', 1),
            ("clitoris'", 'p23', 1),
            ("clitoris'", 'p35', 1),
            ('abnormal', 'p20', 1),
            ('amazing',	'p32', 1),
            ('changed',	'p11', 1),
            ('dormitory', 'p20', 1),
            ('dramatic', 'p20', 1),
            ('dude', 'p20', 1),
            ('female', 'p15', 1),
            ('fluid', 'p24', 1),
            ('gaze', 'p19', 1),
            ('gender', 'p20', 1),
            ('gilrfriend', 'p34', 1),
            ('handsome', 'p34', 1),
            ('lesbians', 'p35', 1),
            ('straight', 'p35', 1);

SELECT * FROM KeyWordsWithinPosts;

-- table 5: Alternative words for the keywords used in the textual content
CREATE TABLE AltWordsWithinPosts (
             KeyWord VARCHAR(20),
             AltWord VARCHAR(20),
             Post_Id VARCHAR(10),
             AltWord_Count INT,
             CONSTRAINT PostId2 FOREIGN KEY (Post_Id)
             REFERENCES CodesWithinCat (Post_Id)
             );

INSERT INTO AltWordsWithinPosts 
            (KeyWord, AltWord, Post_Id, AltWord_Count)
            VALUES
            ('girl', 'girls', 'p33', 1),
            ('girl', 'girls', 'p1', 1),
            ('girl', 'girls', 'p16', 1),
            ('girl', "girls'", 'p25', 1),
            ('sister', 'sisters', 'p27', 1),
            ('year', 'years', 'p24', 1);
	
SELECT * FROM AltWordsWithinPosts;


-- DATA OPERATION

-- 1. Use any type of joints to create a view that combines multiple tables in a logical way
-- Using right join to join three tables and display the distributions of coded visual representation within each category

CREATE VIEW ContentAnalysis_Coding AS
SELECT Cat_Name, 
       COUNT(*) AS Code_Freq, 
       CONCAT(ROUND(COUNT(*)/(SELECT COUNT(*) FROM CodesWithinCat)*100,2),'%') AS Cat_Pct
FROM Categories_GWABC
JOIN CodesWithinCat
USING (Cat_Id)
JOIN Codes_VisualRep_GWABC
USING (Code_id)
GROUP BY Cat_Id;

SELECT *
FROM ContentAnalysis_Coding;

-- 2. Create a stored function that can be applied to a query in your DB
-- To quickly show which category the code belong to
DROP FUNCTION IF EXISTS Which_Code;
DELIMITER //
CREATE FUNCTION Which_Code(
Post_Id VARCHAR(10))
RETURNS VARCHAR(200)
DETERMINISTIC
BEGIN
     DECLARE Which_Code VARCHAR(200);
     SELECT Code INTO Which_Code
     FROM CodesWithinCat cwc
     JOIN Codes_VisualRep_GWABC
     USING (Code_Id)
     WHERE cwc.Post_Id = Post_Id;
     RETURN (Which_Code);
END//
DELIMITER ;

SELECT Which_Code('p30');

SELECT Cat_Name, Code
FROM Categories_GWABC
JOIN CodesWithinCat
USING (Cat_Id)
JOIN Codes_VisualRep_GWABC
USING (Code_id)
GROUP BY Cat_Name, Code
Having Code = Which_Code('p20');


-- 3. An example query with a subquery to demonstrate how to extract data from th DB for analysis
-- Explain: Combine the key words with their alternative words used in the posts and rank them by their frequency of use for discourse analysis. This aims to understand how users achieve their online presentation through textual expression and what the language reflects.

SELECT Keyword AS Word, COUNT(*) AS Word_Freq
FROM
(SELECT KeyWord, KeyWord_Count
FROM KeyWordsWithinPosts
UNION ALL
SELECT KeyWord, AltWord_Count
FROM AltWordsWithinPosts) AllWord
GROUP BY Word
HAVING Word_Freq > 1
ORDER BY Word_Freq DESC;

-- 4. Create a stored procedure
-- Explain: To loacat posts containing the keywords and provide the contextual information for discourse analysis
CREATE VIEW All_Words AS
SELECT KeyWord, KeyWord_Count, Post_Id
FROM KeyWordsWithinPosts
UNION ALL
SELECT KeyWord, AltWord_Count, Post_Id
FROM AltWordsWithinPosts;

DROP PROCEDURE IF EXISTS Which_Post;
DELIMITER //
CREATE PROCEDURE Which_Post(KeyWord VARCHAR(20))
BEGIN 
     SELECT Post_Id 
     FROM All_Words aw
     WHERE aw.KeyWord = KeyWord;
END //
DELIMITER ;

CALL Which_Post('girl');


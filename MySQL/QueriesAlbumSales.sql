-- Total number of albums per artist
SELECT Artist, COUNT(*) AS Total_Albums
FROM album_sales
GROUP BY Artist;

-- Combined album sales per artist
SELECT Artist, SUM(`2022 Sales`) AS Combined_Sales
FROM album_sales
GROUP BY Artist;

-- Top 1 artist with most sales
SELECT Artist, SUM(`2022 Sales`) AS Combined_Sales
FROM album_sales
GROUP BY Artist
ORDER BY Combined_Sales DESC
LIMIT 1;

-- Top 10 albums per year based on their number of sales
SELECT Artist, Album,  `2022 Sales`, Date_Released
FROM (
    SELECT *, 
           RANK() OVER (PARTITION BY LEFT(Date_Released, 2) ORDER BY `2022 Sales` DESC) AS RankInYear
    FROM album_sales
) ranked
WHERE RankInYear <= 10;

-- Search albums by artist name 
SELECT *
FROM album_sales
WHERE Artist LIKE '%Aespa%';
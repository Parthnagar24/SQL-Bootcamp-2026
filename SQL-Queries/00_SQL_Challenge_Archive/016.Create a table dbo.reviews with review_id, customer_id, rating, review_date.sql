--016.Create a table dbo.reviews with review_id, customer_id, rating, review_date.

CREATE TABLE reviews 
(
	review_id INT NOT NULL,
	customer_id INT NOT NULL,
	rating FLOAT NOT NULL,
	review_date DATE
	CONSTRAINT pk_reviews PRIMARY KEY (review_id)
)
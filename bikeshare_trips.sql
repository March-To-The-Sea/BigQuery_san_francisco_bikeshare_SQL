WITH subscribers AS
  (SELECT DISTINCT subscriber_type, Count(subscriber_type) AS occurence_value
  FROM bigquery-public-data.san_francisco.bikeshare_trips
  GROUP BY subscriber_type
  ORDER BY occurence_value DESC)

SELECT *
FROM subscribers
UPDATE COVIDVACCINATIONS
SET  new_tests = 0,
total_tests	=0,
total_tests_per_thousand=0,
new_tests_per_thousand = 0,
new_tests_smoothed = 0,
new_tests_smoothed_per_thousand = 0,
positive_rate = 0,
tests_per_case = 0 ,
tests_units = 0,
total_vaccinations = 0,
people_vaccinated = 0,
people_fully_vaccinated=0,
new_vaccinations = 0,
new_vaccinations_smoothed = 0,
total_vaccinations_per_hundred =0,
people_vaccinated_per_hundred =0,
people_fully_vaccinated_per_hundred =0,
new_vaccinations_smoothed_per_million =0

WHERE new_tests is Null
or total_tests is NULL
or total_tests_per_thousand is NULL
or new_tests_per_thousand is NULL
or new_tests_smoothed is NUll
or new_tests_smoothed_per_thousand is NULL
or positive_rate is NULL
or tests_per_case is NUll
or tests_units is NULL
or total_vaccinations is NULL
or people_vaccinated is NULL
or people_fully_vaccinated is NULL
or new_vaccinations	is NULL
or new_vaccinations_smoothed is NULL
or total_vaccinations_per_hundred is NULL
or people_vaccinated_per_hundred is NULL
or people_fully_vaccinated_per_hundred is NULL
or new_vaccinations_smoothed_per_million is NULL

UPDATE COVIDVACCINATIONS
SET continent = 
    CASE 
        WHEN location = 'World' THEN 'Global'
        WHEN location = 'Europe' THEN 'Europe'
        WHEN location = 'Asia' THEN 'Asia'
        WHEN location = 'Africa' THEN 'Africa'
        WHEN location = 'North America' THEN 'North America'
        WHEN location = 'South America' THEN 'South America'
        WHEN location = 'Oceania' THEN 'Oceania'
        ELSE 'Unknown' 
    END
WHERE continent IS NULL;
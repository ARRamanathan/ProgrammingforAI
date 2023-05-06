This is a code that gives an movie recommendation using Python. This is a cross platform suggestion between 3 OTT's Netflix, Amazon Prime, Disney+.

The Data are accquired from Just Watch and on May 2022 containing data available in the United States.

All three data set has same structure of two csv files containing the following columns.

This dataset has two files containing the titles (titles.csv) and the cast (credits.csv) for the title.

titles (titles.csv) dataset contains 15 columns containing their information, including:

id: The title ID on JustWatch.
title: The name of the title.
show_type: TV show or movie.
description: A brief description.
release_year: The release year.
age_certification: The age certification.
runtime: The length of the episode (SHOW) or movie.
genres: A list of genres.
production_countries: A list of countries that produced the title.
seasons: Number of seasons if it's a SHOW.
imdb_id: The title ID on IMDB.
imdb_score: Score on IMDB.
imdb_votes: Votes on IMDB.
tmdb_popularity: Popularity on TMDB.
tmdb_score: Score on TMDB.


And cast (credits.csv)  has credits of actors and directors titles with 5 columns containing their information:

person_ID: The person ID on JustWatch.
id: The title ID on JustWatch.
name: The actor or director's name.
character_name: The character name.
role: ACTOR or DIRECTOR.


The python dependency can be downloaded using the requiremen.txt files


The Python Code is of the structure
        Import Statments
        Data Loading
        Data Understanding
        Data Cleaning
        EDA - Exploratory Data Analysis
        PCA - Principle Component Analysis
        Modeling
            - K-Means Clustering
            - DBSCAN 
            - Networkx
        Recommendation Model
        Output


If you have any further queries

Please mail to ramanathan.arr@gmail.com

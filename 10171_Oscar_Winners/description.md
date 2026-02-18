# Oscar Winners

**ID:** 10171 | **Difficulty:** Hard | **Company:** Netflix

## Problem

Find the genre of the person with the most number of Oscar winnings. If more than one person has the same number of wins, return the first one in alphabetical order by name. Use the names as keys when joining the tables.

## Tables

| Table                  | Columns                   |
|------------------------|---------------------------|
| `oscar_nominees`       | nominee, winner, category |
| `nominee_information`  | name, top_genre           |

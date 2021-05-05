# Pewlett-Hackard-Analysis
## Overview of the analysis:

The purpose of this analysis was to help Bobby make and prepare for his analysis. We also had to help Bobby determine the number of retiring employees per title and identify which employees are eligible to participate in a mentorship program since many of their current employees are reaching their retirement age by using programs like PostgresSQL and pgAdmin. Since we were given six different CSV files of the company’s different databases, we used PostgreSQL to help him create a database and pgAdmin to work with the data and import it.

## Results:

There is a bulleted list with four major points from the two analysis deliverables.

* People born between the years 1952 to 1955 are the ones who are currently working at the company, but haven’t retired yet. Some of them have multiple titles, so the retirement_titles query was to show their current title.

* The mentorship eligibility table only shows people born in 1965. This could mean there might be other employees who are eligible for the mentorship too if the query decided to look at the people who are born before 1965. This can affect the results of how many people are actually eligible for the mentorship.

* From the retiring_titles table, it shows how many are retiring for each job title. The results show a lot of people with the title “Senior Engineer” is retired compared to people with the title “Manager”. Only 2 people with the title “Manager” are retiring, while 29414 people with the title “Senior Engineer” are retiring.

*

<img width="181" alt="retiring_titles" src="https://user-images.githubusercontent.com/79742633/116846535-50dfee00-ab9d-11eb-8e80-7944b87cd942.png">


## Summary:

Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?

When looking at the retiring_titles table, 90,398 roles will need to be filled after the "silver tsunami" happens.

Some tables or additional queries this may need could be to see if the employee has other responsibilities which would make them too busy to participate in a mentorship program even if they’re eligible. Another table we should add is a table to add people born in other years to be eligible for the mentorship if they need more job roles to be filled because that would give them more people to choose from.

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

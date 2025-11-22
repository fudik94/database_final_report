Final Project Report

Student: Fuad Ismayilbayli
Project Topic: Analysis of Estonian Startups


Introduction
For this project, I used a CSV file named estonia_startapp.csv, which contains information about Estonian startups, including:
•	name – company name
•	code – unique company identifier
•	type – type of company (e.g., Osaühing, Mittetulundusühing)
•	kmkr_nr – VAT number
•	status – company status
•	open_date – date of registration
•	adress – street address
•	city – city of registration

This CSV file was imported into a SQLite database (new_startups.db) using Python.
1 – Problem Description (30%)
Problem Background
This project uses real-world data from the CSV file estonia_startapp.csv, which contains detailed information about Estonian startups. The goal is to design a properly normalized relational database based on this dataset, load it into SQLite, and perform meaningful analytical SQL queries.
The CSV was imported into a SQLite database (new_startups.db) using Python. After importing, the data was normalized into 6 entities according to relational database design principles.
Users
•	Business analysts studying startup growth
•	Government agencies analyzing economic activity
•	Investors evaluating startup ecosystems
•	Researchers collecting registration statistics
Entities and Relationships
This database contains six entities:
1.	Company
2.	Address
3.	City
4.	CompanyType
5.	CompanyStatus
6.	VATRegistry
Business Rules
1.	Each company must belong to exactly one company type.
2.	Each company must have exactly one status.
3.	Each company must be registered at exactly one address.
4.	Each address must belong to exactly one city.
5.	VAT numbers are stored separately and each company can have zero or one VAT record.
These rules enforce consistency, reduce redundancy, and allow flexible expansion of the database.





Summary:
•	Database was created from the CSV file, normalized into two tables: Company and Address.
•	Three queries demonstrate: JOIN, aggregation (GROUP BY), and window functions (RANK).
•	Query results and scripts are included in the ZIP file for submission.


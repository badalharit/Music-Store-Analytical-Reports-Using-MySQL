# Music Store Analytical Reports

## Description
This project is designed to analyze and report on various aspects of a music store's operations, focusing on revenue generation, sales performance, and customer insights. We are currently in the process of creating a Django dashboard to visualize and interact with the data from the database stored procedures (SPs) and views.

## Key Features
- **Monthly Revenue Summary**: Provides insights into total revenue generated per month.
- **Top Selling Genres**: Analyzes the most purchased music genres and their total revenue.
- **Employee Performance**: Tracks how many customers each employee manages and their total sales.
- **Django Dashboard**: A new feature that will provide an interactive interface for visualizing data and generating reports.

## Database Structure
The project utilizes a relational database with the following key tables:
- **tbl_invoice**: Contains invoice records for sales transactions.
- **tbl_invoice_line**: Details each item sold in an invoice.
- **tbl_track**: Stores information about individual music tracks.
- **tbl_genre**: Contains genre information for categorizing music.
- **tbl_employee**: Holds employee details for tracking performance.
- **tbl_customer**: Contains customer information for sales analysis.

## Instructions for Setup and Usage
1. Import the database schema and data from the provided SQL scripts into your MySQL database.
2. Execute the views to generate reports on monthly revenue, top-selling genres, and employee performance.
3. Use the stored procedures to analyze specific queries related to music sales and customer behavior.
4. Follow the upcoming instructions for setting up the Django dashboard once it is implemented.

## Conclusion
This project provides valuable insights into the music store's operations, helping to identify trends and improve business strategies. The addition of the Django dashboard will enhance the user experience and facilitate better data interaction.

# OLIST E-COMMERCE DATA ANALYSIS

## Data Cleaning & Validation Documentation

### 1. Overview

As part of the Olist E-Commerce SQL Analysis project, a comprehensive
data cleaning and validation process was performed before proceeding to
Exploratory Data Analysis (EDA).

The purpose of this stage was to assess the structural integrity,
completeness, consistency, validity, and relational reliability of the
datasets and to ensure that the data was sufficiently trustworthy for
subsequent analytical queries.

The analysis was conducted using **DuckDB** through **DBeaver**, with
SQL used as the primary language for data inspection & investigation,
cleaning & validation, exploration & analysis.

------------------------------------------------------------------------

#### 2. Dataset Overview

The Olist E-Commerce dataset consists of multiple relational tables
representing different components of the e-commerce operation.

The imported tables and their record counts were validated as follows:

  --------------------------------------------
  **Table**                        **Records**
  ------------------------------ -------------
  customers                             99,441

  geolocation                        1,000,163

  order_items                          112,650

  order_payments                       103,886

  order_reviews                         99,224

  orders                                99,441

  products                              32,951

  sellers                                3,095

  product_category_translation              71
  --------------------------------------------

The record counts were checked using SQL aggregation queries to confirm
that the imported tables contained the expected number of records.

## 3. Data Cleaning & Validation Objectives

The validation process was designed around the following data-quality
dimensions:

- Structural validation

- Data type validation

- Record-count validation

- Missing-value validation

- Duplicate-value validation

- Blank-string validation

- Range and numerical validity

- Formatting and consistency checks

- Referential integrity

- Logical data-quality checks

These checks were performed to identify potential issues that could
affect the reliability of analytical results.

------------------------------------------------------------------------

## 4. Record Count Validation

The first validation step was to determine the total number of records
contained within each table.

This provided a baseline for subsequent checks and made it possible to
determine whether individual columns contained missing values by
comparing their non-null counts against the total number of records.

For example, the customers table contains **99,441 records**, while the
orders table also contains **99,441 records**.

Column-level record counts were then compared against the total table
row count.

#### Result

The customers table contained 99,441 records across its validated
columns:

- customer_id

- customer_unique_id

- customer_zip_code_prefix

- customer_city

- customer_state

The expected record count was maintained across these columns.

------------------------------------------------------------------------

## 5. Data Type Validation

The structure and data types of the tables were inspected using database
metadata commands.

For example:

DESCRIBE customers;

and:

DESCRIBE orders;

This was used to verify that identifiers, categorical fields, numerical
fields, and date/time fields were represented using appropriate database
data types.

Data type validation is important because incorrect data types can
affect filtering, aggregation, sorting, joins, date calculations, and
other analytical operations.

------------------------------------------------------------------------

## 6. Missing-Value Validation

Missing-value checks were performed across the relevant columns in the
datasets.

The purpose was to identify fields containing NULL values and determine
whether the missing values represented genuine data-quality problems or
expected conditions within the original dataset.

#### Customers

The customers table was checked for missing values across its major
fields.

The validation showed that the checked customer fields did not contain
unexpected NULL values.

This established that the core customer identifiers and location
attributes were sufficiently complete for analysis.

#### Orders

The orders table contained missing values in selected date-related
fields.

The identified missing values included:

  -------------------------------------------
  **Column**                        **Missing
                                    Records**
  ------------------------------- -----------
  order_approved_at                       160

  order_delivered_carrier_date          1,783

  order_delivered_customer_date         2,965

  order_estimated_delivery_date             0
  -------------------------------------------

The core fields:

- order_id

- customer_id

- order_status

were also checked for missing values.

The identified missing dates were retained as part of the dataset\'s
original information rather than automatically replacing them with
artificial values, since missing delivery-related dates may correspond
to legitimate order states or incomplete delivery events.

------------------------------------------------------------------------

## 7. Duplicate Validation

Duplicate checks were performed on important identifier columns to
determine whether records that should be unique appeared multiple times.

For example, the following logic was used:

SELECT customer_id, COUNT(\*) AS customer_id_appear

FROM customers

GROUP BY customer_id

HAVING COUNT(\*) \> 1;

#### Customers

The customer_id field was checked for unsupported duplicate values.

The validation returned no duplicate customer_id values.

This indicates that each customer record was uniquely represented by its
customer_id within the table.

Similar duplicate validation was also performed on important order
identifiers.

------------------------------------------------------------------------

## 8. Blank-String Validation

Missing values are not always represented by NULL.

A field may contain an empty string (\'\') while technically remaining
non-null.

Therefore, blank-string checks were performed on important textual
fields.

For example:

SELECT \*

FROM customers

WHERE customer_city = \'\'

OR customer_state = \'\'

OR customer_id = \'\'

OR customer_unique_id = \'\';

The purpose of this check was to ensure that apparently populated fields
were not actually empty.

The customer dataset did not reveal critical blank-string issues within
the checked fields.

## 9. Text Consistency Validation

Text fields were examined for formatting inconsistencies such as:

- Leading or trailing spaces

- Inconsistent capitalization

- Unexpected blank values

Examples included checks using:

TRIM(customer_state)

and:

UPPER(customer_state)

The same approach was applied to city-level textual fields.

These checks helped establish whether categorical fields were
consistently represented and suitable for grouping and aggregation
during the EDA stage.

------------------------------------------------------------------------

## 10. Customer ZIP Code Validation

The customer_zip_code_prefix field was checked for invalid numerical
ranges.

The validation logic included:

SELECT \*

FROM customers

WHERE customer_zip_code_prefix \< 0

OR customer_zip_code_prefix \> 99999;

This was performed to identify values outside the expected ZIP-code
range.

The validation did not identify critical range violations in the checked
data.

------------------------------------------------------------------------

## 11. Referential Integrity Validation

Because the Olist dataset consists of related tables, relationships
between tables were also examined.

For example, customer identifiers in the orders table were compared
against the customers table.

A referential integrity check was performed using a join between the two
tables:

SELECT c.customer_id, o.customer_id

FROM customers c

LEFT JOIN orders o

ON c.customer_id = o.customer_id

WHERE c.customer_id IS NULL;

This type of validation was used to ensure that relationships between
related entities could be reliably established before analytical joins
were performed.

------------------------------------------------------------------------

## 12. Orders Dataset Validation

The orders dataset was examined using several validation dimensions.

#### Structural Checks

The following fields were inspected:

- order_id

- customer_id

- order_status

- order_purchase_timestamp

- order_approved_at

- order_delivered_carrier_date

- order_delivered_customer_date

- order_estimated_delivery_date

#### Missing-Value Checks

The date-related columns were individually checked for missing values
rather than treating the entire dataset as either complete or
incomplete.

This made it possible to identify exactly where missing information
existed.

#### Identifier Checks

The order_id and customer_id fields were checked for missing values and
unsupported duplicates.

#### Order Status Validation

Distinct order statuses were inspected to identify the categories
represented within the dataset.

This provided an additional logical validation layer before analyzing
order lifecycle and delivery performance.

------------------------------------------------------------------------

## 13. Products Dataset Validation

The products table was also subjected to structural, completeness, and
numerical validation.

The fields examined included:

- product_id

- product_category_name

- product_name_length

- product_description_length

- product_photos_qty

- product_weight_g

- product_length_cm

- product_height_cm

- product_width_cm

#### Missing-Value Findings

The validation identified missing values in several product attributes.

Notably, the following fields contained missing records:

  ----------------------------------------
  **Column**                     **Missing
                                 Records**
  ---------------------------- -----------
  product_category_name                610

  product_name_length                  610

  product_description_length           610

  product_photos_qty                   610

  product_weight_g                       2
  ----------------------------------------

The product identifier itself was also checked separately to ensure that
the primary product reference was not missing.

#### Numerical Validity

Product numerical attributes were checked for invalid negative values.

The validation covered fields such as:

- Product name length

- Product description length

- Number of product photos

- Product weight

- Product length

- Product height

- Product width

This ensured that measurements and quantities did not contain logically
impossible negative values.

------------------------------------------------------------------------

## 14. Data Quality Assessment

The validation process identified that the datasets were generally
suitable for analytical use after the required cleaning and validation
procedures.

The main data-quality observations were:

#### Customers

- Expected record count confirmed.

- Core customer fields were checked for missing values.

- No unsupported duplicate customer_id values identified.

- Blank-string checks performed.

- Text consistency checks performed.

- ZIP-code range validation performed.

- Referential integrity was examined.

#### Orders

- Expected record count confirmed.

- Core identifiers were checked.

- Order status values were inspected.

- Missing delivery-related dates were identified and documented.

- Date fields were validated individually.

- Duplicate and null checks were performed on important identifiers.

#### Products

- Expected record count confirmed.

- Product identifier completeness was checked.

- Missing product attributes were identified.

- Numerical fields were tested for invalid negative values.

- Product dimensions, weight, photo count, and text-length attributes
  were examined.

------------------------------------------------------------------------

# 15. Cleaning Approach

The cleaning process followed a controlled approach rather than blindly
replacing or deleting questionable values.

The primary principles were:

1.  Identify the issue.

2.  Measure its frequency.

3.  Determine whether the value represented an actual data-quality
    problem or an expected condition.

4.  Apply cleaning only where justified.

5.  Preserve legitimate missing information where replacing it would
    introduce assumptions.

6.  Revalidate the dataset after cleaning.

This approach reduces the risk of introducing artificial values or
unintentionally changing the meaning of the original dataset.

------------------------------------------------------------------------

# 16. Validation Queries

SQL was used throughout the process to create reproducible validation
checks.

Examples included:

### Record Count

SELECT COUNT(\*)

FROM customers;

### Missing Values

SELECT COUNT(\*)

FROM orders

WHERE order_approved_at IS NULL;

### Duplicate Detection

SELECT customer_id, COUNT(\*) AS customer_id_appear

FROM customers

GROUP BY customer_id

HAVING COUNT(\*) \> 1;

### Blank-String Detection

SELECT \*

FROM customers

WHERE customer_city = \'\'

OR customer_state = \'\';

### Range Validation

SELECT \*

FROM customers

WHERE customer_zip_code_prefix \< 0

OR customer_zip_code_prefix \> 99999;

### Referential Integrity

SELECT c.customer_id, o.customer_id

FROM customers c

LEFT JOIN orders o

ON c.customer_id = o.customer_id

WHERE c.customer_id IS NULL;

These checks provide a reproducible SQL-based data-quality validation
framework.

**[NOTE :]{.underline}** Others can be viewed personally on process
screenshots!!!

------------------------------------------------------------------------

## 17. Validation Outcome

Following the completed cleaning and validation process, the Olist
datasets were considered sufficiently structured and reliable for the
next stage of the project.

The validation established confidence in:

- Record completeness

- Identifier integrity

- Data types

- Duplicate status

- Text consistency

- Numerical validity

- Date-field completeness

- Cross-table relationships

- Overall structural consistency

Known missing values were identified and documented rather than being
ignored.

The cleaned and validated datasets can therefore proceed to
**Exploratory Data Analysis (EDA)**.

------------------------------------------------------------------------

## 18. Transition to Exploratory Data Analysis

With the data-quality stage completed, the next phase is Exploratory
Data Analysis.

The purpose of EDA is not primarily to clean the data, but to understand
what the data is telling us.

The Olist dataset will be explored to identify:

#### Trends

A trend describes how a metric changes over time.

For example:

- Monthly order volume

- Monthly revenue

- Changes in average order value

- Growth or decline in customer activity

#### Patterns

Patterns are recurring behaviours or characteristics within the data.

Examples include:

- Frequently purchased product categories

- Common payment methods

- Recurring order-status distributions

- Customer purchasing behaviour

- Seller performance patterns

#### Relationships

Relationships describe how two or more variables are associated with one
another.

For example:

- Delivery time and customer review scores

- Product price and product category

- Freight value and order value

- Payment method and payment value

- Number of items in an order and total order value

A relationship does not automatically mean that one variable causes
another. The purpose of EDA is to identify and investigate these
associations before drawing conclusions.

------------------------------------------------------------------------

## 19. Planned EDA Direction

The exploratory stage will examine the Olist business from multiple
perspectives, including:

#### Customer Analysis

- Customer distribution

- Customer locations

- Customer purchasing activity

- Repeat versus unique customers

- Customer order frequency

#### Order Analysis

- Order volume

- Order status distribution

- Order trends over time

- Order completion patterns

- Delivery performance

#### Sales Analysis

- Revenue trends

- Average order value

- Order value distribution

- Payment behaviour

- Product and category performance

#### Product Analysis

- Most frequently purchased products/categories

- Product pricing

- Product performance

- Product characteristics

- Category-level performance

#### Seller Analysis

- Seller activity

- Seller contribution to orders

- Seller geographic distribution

- Seller performance

#### Delivery Analysis

- Delivery duration

- Estimated versus actual delivery

- Late delivery patterns

- Delivery performance by location/category

#### Review Analysis

- Review score distribution

- Relationship between delivery performance and review scores

- Review behaviour across order statuses and other relevant dimensions

------------------------------------------------------------------------

## 20. Final Status

**Data Import:** Completed\
**Data Structure Validation:** Completed\
**Record Count Validation:** Completed\
**Data Type Validation:** Completed\
**Missing-Value Validation:** Completed\
**Duplicate Validation:** Completed\
**Blank-String Validation:** Completed\
**Text Consistency Validation:** Completed\
**Numerical/Range Validation:** Completed\
**Referential Integrity Validation:** Completed\
**Data Cleaning:** Completed\
**Data Quality Assessment:** Completed\
**Exploratory Data Analysis:** Next Stage\
**Business Insights:** To be developed from EDA findings\
**Final SQL Analysis:** To be completed after EDA and insight
development

Thanks for following so far! Be prepared for the next phase \-\-- SQL!
SQL!! SQL!!!

------------------------------------------------------------------------

# Conclusion

The Olist E-Commerce dataset underwent a structured SQL-based cleaning
and validation process designed to establish data reliability before
analysis.

The process involved validating the structure and record counts of the
imported datasets, inspecting data types, identifying missing values,
testing for duplicates and blank strings, validating numerical ranges,
checking textual consistency, and examining relationships between
related tables.

Rather than indiscriminately modifying missing or unusual values, the
validation process focused on understanding the nature of each issue and
preserving the original meaning of the data wherever appropriate.

With the data-quality stage completed, the project is now ready to
transition into Exploratory Data Analysis, where the focus will shift
from **\"Is the data reliable?\"** to **\"What is happening within the
business represented by the data?\"**

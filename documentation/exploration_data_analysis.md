**Olist E-Commerce Data Exploration Analysis**

**1. Overview**

This exploratory analysis examines an e-commerce dataset covering
customer activity, orders, reviews, delivery performance, products,
payments, and sellers.

The analysis was conducted using SQL to explore the structure and
behavior of the business across several key areas:

- Order reporting period

- Customer geographic distribution

- Customer order status

- Customer reviews and review scores

- Review response time

- Delivery performance

- Delivery delays

- Product category demand

- Payment methods

- Payment values

- Product category and payment method relationships

- Additional fees associated with products and orders

- Seller activity and geographic distribution

The objective of the exploration was to identify important patterns in
customer behavior, order fulfillment, product demand, payment
preferences, delivery performance, and seller activity.

**2. Reporting Period**

The first stage of the exploration established the period covered by the
order data.

The earliest order purchase date recorded in the dataset is **September
4, 2016**, while the latest recorded order purchase date is **October
17, 2018**.

**Reporting Period**

**Start Date:** September 4, 2016\
**End Date:** October 17, 2018

This provides a multi-year period for evaluating customer activity,
order fulfillment, product demand, payment behavior, and operational
performance.

**3. Customer Geographic Distribution**

**3.1 Top States by Ordering Customers**

Customer distribution was examined by state to identify where the
largest concentrations of ordering customers are located.

The dataset contains **27 customer states**.

The ten states with the highest number of customers are:

  --------------------------------------
  **Rank**   **State**     **Customers**
  ---------- ----------- ---------------
  1          SP                   41,746

  2          RJ                   12,852

  3          MG                   11,635

  4          RS                    5,466

  5          PR                    5,045

  6          SC                    3,637

  7          BA                    3,380

  8          DF                    2,140

  9          ES                    2,033

  10         GO                    2,020
  --------------------------------------

São Paulo (SP) records the highest number of customers by a considerable
margin, followed by Rio de Janeiro (RJ) and Minas Gerais (MG).

The concentration of customers in these leading states provides an
important geographical perspective on the marketplace\'s customer base.

**3.2 Top Cities by Ordering Customers**

Customer distribution was also examined at city level.

The dataset contains **4,119 customer cities**.

The ten cities with the highest customer counts are:

  -------------------------------------------
  **Rank**   **City**           **Customers**
  ---------- ---------------- ---------------
  1          São Paulo                 15,540

  2          Rio de Janeiro             6,882

  3          Belo Horizonte             2,773

  4          Brasília                   2,131

  5          Curitiba                   1,521

  6          Campinas                   1,444

  7          Porto Alegre               1,379

  8          Salvador                   1,245

  9          Guarulhos                  1,189

  10         São Bernardo do              938
             Campo            
  -------------------------------------------

São Paulo is the leading customer city, followed by Rio de Janeiro and
Belo Horizonte.

The results show that customer activity is distributed across a large
number of cities, while a relatively small group of major cities
accounts for a substantial concentration of customers.

**4. Customer Order Status**

Order status was examined to understand the distribution of customers
across different stages of the order lifecycle.

  ------------------------------------------
  **Order         **Customers**   **Orders**
  Status**                      
  ------------- --------------- ------------
  Delivered              96,478       96,478

  Shipped                 1,107        1,107

  Canceled                  625          625

  Unavailable               609          609

  Invoiced                  314          314

  Processing                301          301

  Created                     5            5

  Approved                    2            2
  ------------------------------------------

The order data is strongly concentrated around the **delivered** status,
with 96,478 delivered orders.

Shipped orders account for the next largest group, followed by canceled
and unavailable orders.

The distribution demonstrates that the dataset contains records covering
multiple stages of the order lifecycle, while completed deliveries
represent the dominant order status.

**5. Relationship Between Order Status and Review Score**

The relationship between customer order status and review scores was
explored by connecting orders with customer reviews.

The strongest observed combinations are concentrated within delivered
orders.

  -----------------------------------------------------
    **Customers**   **Orders** **Order         **Review
                               Status**         Score**
  --------------- ------------ ------------- ----------
           56,817       56,817 Delivered              5

           18,943       18,943 Delivered              4

            9,381        9,381 Delivered              1

            7,942        7,942 Delivered              3

            2,938        2,938 Delivered              2

              640          640 Shipped                1

              462          462 Unavailable            1

              421          421 Canceled               1

              256          256 Processing             1

              230          230 Invoiced               1
  -----------------------------------------------------

Among delivered orders with reviews, a review score of **5** is the most
frequently recorded score, followed by scores of **4, 1, 3, and 2**.

Lower order-status groups such as shipped, unavailable, canceled,
processing, and invoiced are predominantly represented by a review score
of 1 in the extracted result.

**6. Customer Review Response Time**

The analysis also examined the amount of time between review creation
and review response.

The longest observed response intervals include:

  ------------------------
    **Review **Response
     Score** Interval**
  ---------- -------------
           1 518 days
             16:46:52

           5 512 days
             15:47:37

           5 508 days
             01:36:09

           4 471 days
             16:19:53

           5 446 days
             20:51:34

           5 433 days
             23:30:57

           4 412 days
             12:30:15

           5 411 days
             10:39:13

           5 383 days
             10:20:11

           4 367 days
             16:21:56
  ------------------------

The results reveal very long review-response intervals in some customer
records, with the highest observed interval exceeding **500 days**.

The extracted records include both high and low review scores among
these long response intervals.

**7. Delivery Performance**

Delivery performance was classified by comparing the actual delivery
date with the estimated delivery date.

The analysis produced the following delivery performance
classifications:

  -----------------------------
  **Order       **Delivery
  Status**      Performance**
  ------------- ---------------
  Delivered     Early Delivery

  Delivered     Late Delivery

  Delivered     NULL

  Canceled      Early Delivery

  Canceled      Late Delivery

  Invoiced      NULL

  Shipped       NULL

  Processing    NULL

  Unavailable   NULL

  Created       NULL

  Approved      NULL
  -----------------------------

The delivery-performance classification identifies three possible
outcomes:

- **Early Delivery**

- **Delivered On-time**

- **Late Delivery**

Orders without the required delivery-date information return a NULL
classification.

The delivered order group contains early, late, and unclassified
records, while several other order statuses do not have the required
delivery dates for performance classification.

**8. Delivery Delay Intervals**

The analysis further examined the difference between the actual customer
delivery date and the estimated delivery date for delivered orders.

The ten largest delivery delay intervals identified include:

  -----------------------------------
  **Rank**   **Order     **Delay
             Status**    Interval**
  ---------- ----------- ------------
  1          Delivered   188 days
                         23:24:07

  2          Delivered   181 days
                         14:36:39

  3          Delivered   175 days
                         20:51:31

  4          Delivered   167 days
                         17:00:07

  5          Delivered   166 days
                         14:00:04

  6          Delivered   165 days
                         15:12:50

  7          Delivered   162 days
                         17:14:25

  8          Delivered   161 days
                         18:36:29

  9          Delivered   161 days
                         14:38:21

  10         Delivered   159 days
                         14:38:18
  -----------------------------------

The results identify several extremely large delivery-delay intervals,
with the largest recorded interval approaching **189 days**.

**9. Delivery Delay and Customer Review Score**

The analysis connected delivery-delay intervals with customer review
scores to examine customer feedback associated with delayed deliveries.

Examples from the extracted results include:

  -----------------------------------
  **Delay      **Order       **Review
  Interval**   Status**       Score**
  ------------ ----------- ----------
  146 days     Delivered            5
  00:23:13                 

  139 days     Delivered            5
  09:32:15                 

  134 days     Delivered            3
  07:24:17                 

  123 days     Delivered            5
  10:24:06                 

  108 days     Delivered            5
  10:10:53                 

  83 days      Delivered            5
  01:41:37                 

  82 days      Delivered            5
  22:07:26                 

  77 days      Delivered            5
  07:47:10                 

  77 days      Delivered            5
  04:38:21                 

  77 days      Delivered            5
  03:37:50                 
  -----------------------------------

The extracted records show that high review scores appear among orders
with substantial delivery-delay intervals.

This relationship was explored to understand the customer feedback
associated with delayed deliveries.

**10. Most Ordered Product Categories**

Product demand was examined by connecting order items with product
categories.

The leading product categories are:

  -----------------------------------------------------------------------------
  **Rank**   **Product Category**       **Orders**    **Quantity        **Total
                                                       Ordered**        Price**
  ---------- ------------------------ ------------ ------------- --------------
  1          cama_mesa_banho                11,115        13,665   1,036,988.68

  2          beleza_saude                    9,670        11,081   1,258,681.34

  3          esporte_lazer                   8,641         9,932     988,048.97

  4          moveis_decoracao                8,334        11,540     729,762.49

  5          informatica_acessorios          7,827         9,874     911,954.32

  6          utilidades_domesticas           6,964         9,051     632,248.66

  7          relogios_presentes              5,991         6,594   1,205,005.68

  8          telefonia                       4,545         5,161     323,667.53

  9          ferramentas_jardim              4,347         5,874     485,256.46

  10         automotivo                      4,235         4,881     592,720.11
  -----------------------------------------------------------------------------

The **cama_mesa_banho** category records the highest number of orders,
followed by **beleza_saude** and **esporte_lazer**.

The category-level total-price results also show differences between
order volume and monetary value across categories.

**11. Product Categories in English**

The product category results were further connected to the
product-category translation table to provide English category names.

This creates a more accessible representation of the category analysis
for reporting and visualization purposes while preserving the original
category information.

The translated category structure can therefore be used when presenting
the analysis to an English-speaking audience.

**12. Payment Method Analysis**

Payment methods were examined by connecting payment records with orders.

  --------------------------------------------
  **Payment      **Customers** **Total Payment
  Method**                             Value**
  ------------ --------------- ---------------
  Credit Card           76,795   12,542,084.19

  Boleto                19,784    2,869,361.27

  Voucher                5,775      379,436.87

  Debit Card             1,529      217,989.79

  Not Defined                3            0.00
  --------------------------------------------

Credit card is the dominant payment method in both customer count and
total payment value.

Boleto is the second most frequently used payment method, followed by
voucher and debit card.

**13. Zero-Value Payment Records**

The analysis specifically investigated payment records where the payment
value was zero.

The extracted records include voucher and not-defined payment types.

Examples include:

  -----------------------
  **Payment     **Payment
  Type**          Value**
  ----------- -----------
  Voucher            0.00

  Not Defined        0.00

  Voucher            0.00

  Voucher            0.00

  Not Defined        0.00
  -----------------------

The zero-value records were subsequently connected to order status.

The resulting order statuses include:

- Delivered

- Shipped

- Canceled

This exploration provides additional visibility into payment records
where no positive payment value was recorded.

**14. Preferred Payment Method**

Payment methods with positive total payment values were ranked by
customer count.

  -------------------------------------------------------
  **Rank**   **Payment      **Customers** **Total Payment
             Method**                             Value**
  ---------- ------------ --------------- ---------------
  1          Credit Card           76,795   12,542,084.19

  2          Boleto                19,784    2,869,361.27

  3          Voucher                5,775      379,436.87

  4          Debit Card             1,529      217,989.79
  -------------------------------------------------------

Credit card is clearly the most preferred payment method within the
extracted customer payment records.

**15. Product Category and Payment Method**

The analysis combined product categories with payment methods to
determine the payment method associated with the largest order volumes
within product categories.

The leading combinations are:

  -----------------------------------------------------------------
  **Product Category**     **Payment      **Orders** **Total Amount
                           Method**                          Paid**
  ------------------------ ------------ ------------ --------------
  cama_mesa_banho          Credit Card         8,959   1,386,451.30

  beleza_saude             Credit Card         7,566   1,326,716.99

  esporte_lazer            Credit Card         6,635   1,088,571.54

  moveis_decoracao         Credit Card         6,379   1,077,975.12

  informatica_acessorios   Credit Card         5,436     976,363.85

  utilidades_domesticas    Credit Card         5,411     815,974.27

  relogios_presentes       Credit Card         4,858   1,169,481.98

  telefonia                Credit Card         3,400     371,512.51

  brinquedos               Credit Card         3,294     502,125.92

  automotivo               Credit Card         3,277     695,976.30
  -----------------------------------------------------------------

Credit card appears as the leading payment method across the
highest-order product-category combinations.

**16. Additional Fees by Product Category**

The analysis examined the difference between total payment values and
product prices to identify the additional fee associated with product
categories.

The leading results are:

  --------------------------------------------------
  **Product Category**       **Orders**      **Total
                                         Added Fee**
  ------------------------ ------------ ------------
  cama_mesa_banho                11,823   620,002.65

  beleza_saude                    9,972   360,017.32

  esporte_lazer                   8,945   368,131.22

  moveis_decoracao                8,744   665,082.50

  informatica_acessorios          8,082   643,052.88

  utilidades_domesticas           7,355   428,171.13

  relogios_presentes              6,201   176,073.38

  telefonia                       4,721   147,482.89

  ferramentas_jardim              4,574   320,063.21

  automotivo                      4,379   235,541.82
  --------------------------------------------------

The results demonstrate that additional fees vary considerably across
product categories.

**17. Order-Level Added Fee Including Freight**

A separate order-level analysis incorporated both product prices and
freight values before comparing the resulting amount with total payment
value.

The highest extracted differences include:

  -----------------------------------------------------------------------
  **Order**                            **Price +     **Amount     **Added
                                       Freight**       Paid**       Fee**
  ---------------------------------- ----------- ------------ -----------
  03caa2c082116e1d31e67e9ae3700499     13,664.08   109,312.64   95,648.56

  ab14fdcfbe524636d65ee38360e22ce8      2,262.80    45,256.00   42,993.20

  1b15974a0141d54e36626dca3fdc731a      2,202.40    44,048.00   41,845.60

  2cc9089445046817a7539d90805e6e5a      6,081.54    36,489.24   30,407.70

  e8fa22c3673b1dd17ea315021b1f0f61      3,018.60    30,186.00   27,167.40
  -----------------------------------------------------------------------

The extracted records demonstrate significant differences between
product-plus-freight amounts and total amounts paid for some orders.

**18. Seller Analysis**

**18.1 Total Sellers**

The seller table contains:

**3,095 sellers**

This provides the overall seller population available for the
marketplace analysis.

**18.2 Top Sellers by Orders Received**

Seller activity was ranked according to the number of order items
associated with each seller.

  ----------------------------------------------------------
  **Rank**   **Seller ID**                          **Orders
                                                  Received**
  ---------- ---------------------------------- ------------
  1          6560211a19b47992c3666cc44a7e94c0          2,033

  2          4a3ca9315b744ce9f8e9374361493884          1,987

  3          1f50f920176fa81dab994f9023523100          1,931

  4          cc419e0650a3c5ba77189a1882b7556a          1,775

  5          da8622b14eb17ae2831f4ac5b9dab84a          1,551

  6          955fee9216a65b617aa5c0531780ce60          1,499

  7          1025f0e2d44d7041d6cf58b6550e0bfa          1,428

  8          7c67e1448b00f6e969d365cea6b010ab          1,364

  9          ea8482cd71df3c1969d7b9473ff13abc          1,203

  10         7a67c85e85bb2ce8582c35f2203ad736          1,171
  ----------------------------------------------------------

The leading seller recorded 2,033 orders, while the second and third
sellers recorded 1,987 and 1,931 respectively.

**19. Seller Cities by Orders**

Seller activity was also examined geographically.

The highest-order sellers are located across cities including:

- São Paulo

- Ibitinga

- São José do Rio Preto

- Santo André

- Piracicaba

- Itaquaquecetuba

- Guariba

- Campo Limpo Paulista

- Petrópolis

- Ilicínea

- Praia Grande

- Salto

São Paulo appears repeatedly among the highest-order seller locations,
indicating strong seller activity within the city.

**20. Seller States by Orders**

Seller activity was further examined by state.

The extracted top seller results show strong representation from:

- São Paulo (SP)

- Rio de Janeiro (RJ)

- Minas Gerais (MG)

- Paraná (PR)

São Paulo accounts for the majority of the highest-ranking sellers in
the extracted result, followed by representation from Rio de Janeiro,
Minas Gerais, and Paraná.

**21. Exploration Summary**

The SQL exploration provided a broad view of the e-commerce marketplace
across customers, orders, reviews, delivery, products, payments, and
sellers.

The major patterns identified throughout the exploration include:

1.  The order dataset covers a period from September 2016 to October
    2018.

2.  Customer activity is highly represented in São Paulo, Rio de
    Janeiro, and Minas Gerais.

3.  São Paulo is the leading customer state and customer city.

4.  Delivered orders dominate the order-status distribution.

5.  Review scores of 5 are the most frequently observed among the
    extracted delivered-order review records.

6.  Some customer reviews have extremely long response intervals.

7.  Delivery records contain both early and late deliveries, with some
    exceptionally large delivery-delay intervals.

8.  Cama, mesa e banho is the leading product category by order volume
    in the extracted category analysis.

9.  Credit card is the dominant payment method.

10. Credit card is also the leading payment method across the
    highest-order product-category combinations.

11. Product categories differ considerably in their associated
    additional fee values.

12. The seller base contains 3,095 sellers, with a relatively
    concentrated group of high-order sellers.

13. São Paulo is strongly represented among high-performing seller
    locations.

Overall, the exploration establishes a detailed analytical foundation
for evaluating customer behavior, operational performance, product
demand, payment behavior, and seller activity within the e-commerce
marketplace.

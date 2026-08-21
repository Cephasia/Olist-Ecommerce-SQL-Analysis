**Olist E-Commerce Business Findings, Insights & Recommendations**

**1. Executive Summary**

The exploratory analysis reveals a marketplace with strong customer
concentration in major Brazilian states and cities, a highly dominant
delivered-order population, strong customer preference for credit-card
payments, concentrated demand across a number of product categories, and
a seller network with identifiable high-performing sellers and
geographic clusters.

The analysis also highlights important operational patterns around
delivery performance and customer reviews. While delivered orders
dominate the dataset, the presence of significant delivery delays and
extended review-response intervals provides opportunities for improving
customer experience and operational efficiency.

The following findings translate the SQL exploration into
business-oriented insights and recommendations.

**2. Customer Market Concentration**

**Finding**

Customer activity is strongly concentrated geographically.

São Paulo has the highest customer count with **41,746 customers**,
followed by Rio de Janeiro with **12,852** and Minas Gerais with
**11,635**.

At city level, São Paulo leads with **15,540 customers**, followed by
Rio de Janeiro with **6,882**.

**Insight**

The marketplace has particularly strong customer presence in major
economic and population centers, with São Paulo standing out as the most
significant customer market in the analysis.

**Recommendation**

The business should prioritize customer acquisition, retention,
promotional campaigns, and localized marketing strategies in
high-concentration states and cities.

São Paulo should receive particular attention because it leads both
state-level and city-level customer activity.

**3. Strong Order Completion**

**Finding**

Delivered orders account for **96,478 orders**, compared with 1,107
shipped orders, 625 canceled orders, and 609 unavailable orders.

**Insight**

The overwhelming majority of orders in the dataset reach the delivered
stage.

This indicates that successful order completion represents the dominant
outcome within the marketplace\'s order lifecycle.

**Recommendation**

The business should maintain the operational processes supporting
successful delivery while focusing improvement efforts on the smaller
but strategically important groups of canceled, unavailable, processing,
and delayed orders.

Reducing friction in these stages can further strengthen overall order
fulfillment performance.

**4. Customer Satisfaction and Review Behavior**

**Finding**

Among the extracted order-status and review-score combinations, **56,817
customers/orders** are associated with delivered orders receiving a
review score of 5.

Delivered orders receiving scores of 4 account for another 18,943
customers/orders.

**Insight**

High review scores represent a substantial portion of the customer
feedback observed for delivered orders.

This indicates strong positive customer feedback within the marketplace.

**Recommendation**

The business should continue identifying and preserving the operational
practices associated with highly rated customer experiences.

High-performing sellers, products, and delivery processes can also be
studied further to identify repeatable practices that support positive
customer experiences.

**5. Delivery Performance Opportunity**

**Finding**

The delivery-performance analysis identifies early deliveries, late
deliveries, and records without a delivery-performance classification.

The delivery-delay analysis also identifies individual delivered orders
with delays approaching **189 days**.

**Insight**

Although delivered orders dominate the marketplace, some customer orders
experience substantial differences between estimated and actual delivery
dates.

These large delays represent important operational exceptions within the
delivery process.

**Recommendation**

The business should establish a delivery-performance monitoring
framework that tracks:

- Early delivery rate

- On-time delivery rate

- Late delivery rate

- Average delivery delay

- Maximum delivery delay

- Delivery performance by seller

- Delivery performance by customer location

- Delivery performance by product category

Orders with exceptionally high delivery delays should receive particular
operational attention.

**6. Delivery Experience and Customer Reviews**

**Finding**

The analysis of delivery delays alongside review scores shows several
delayed orders receiving high review scores, including multiple orders
with delays exceeding 70 days that received a score of 5.

**Insight**

Customer review behavior does not move uniformly with the size of the
delivery delay in the extracted records.

This demonstrates that customer feedback contains additional dimensions
beyond delivery timing.

**Recommendation**

The business should evaluate delivery performance together with other
customer-experience factors rather than relying on delivery time alone.

Future analysis should combine delivery performance with:

- Product category

- Seller

- Customer location

- Payment method

- Freight value

- Order value

- Review score

- Review comments

This can provide a more complete understanding of customer experience.

**7. Product Demand Concentration**

**Finding**

The leading product category by order volume is **cama_mesa_banho**,
with 11,115 orders.

It is followed by:

- beleza_saude --- 9,670 orders

- esporte_lazer --- 8,641 orders

- moveis_decoracao --- 8,334 orders

- informatica_acessorios --- 7,827 orders

The ten leading categories collectively account for a substantial share
of the extracted order volume.

**Insight**

Customer demand is concentrated around a relatively small group of
product categories.

The strongest categories therefore represent important areas of
marketplace activity.

**Recommendation**

The business should prioritize high-demand categories when planning:

- Inventory availability

- Seller acquisition

- Promotional campaigns

- Product recommendations

- Category-specific marketing

- Cross-selling strategies

High-performing categories should also be monitored for changes in
demand over time.

**8. Product Value Does Not Follow Order Volume Uniformly**

**Finding**

The product-category analysis shows that categories with high order
volumes do not necessarily have the highest total price values.

For example, **beleza_saude** records fewer orders than cama_mesa_banho
but has a higher total price value in the extracted results.

Similarly, **relogios_presentes** records fewer orders but produces a
comparatively high total price value.

**Insight**

Order volume and monetary contribution represent different dimensions of
product performance.

**Recommendation**

Product performance should therefore be evaluated using multiple
measures rather than order count alone.

Recommended KPIs include:

- Number of orders

- Quantity ordered

- Total product value

- Average order value

- Revenue contribution

- Freight contribution

- Added fee

- Customer review score

**9. Credit Card Dominance**

**Finding**

Credit card is the leading payment method with:

**76,795 customers**

and approximately:

**12.54 million** in total payment value.

Boleto is the second-largest payment method with 19,784 customers and
approximately 2.87 million in total payment value.

**Insight**

Credit cards represent the dominant payment channel within the
marketplace.

The extracted payment value also shows a substantial difference between
credit-card transactions and the other payment methods.

**Recommendation**

The business should continue supporting credit-card transactions as a
core payment channel while maintaining alternative payment methods for
customers with different payment preferences.

Payment performance should also be monitored across product categories
to understand whether payment behavior differs by customer segment or
product type.

**10. Payment Method and Product Category**

**Finding**

Credit card is the leading payment method across the highest-order
product-category combinations.

For example:

- cama_mesa_banho --- 8,959 credit-card orders

- beleza_saude --- 7,566

- esporte_lazer --- 6,635

- moveis_decoracao --- 6,379

- informatica_acessorios --- 5,436

**Insight**

The dominance of credit-card payments extends across major product
categories rather than being concentrated in only one category.

**Recommendation**

Credit-card payment infrastructure should remain a strategic priority.

The business can also use category-level payment behavior to improve
promotional strategies and payment-focused campaigns.

**11. Additional Fee Opportunity**

**Finding**

The product-category analysis identifies substantial differences between
product prices and total payment values.

For example, the extracted results show:

- cama_mesa_banho --- 620,002.65 total added fee

- moveis_decoracao --- 665,082.50

- informatica_acessorios --- 643,052.88

- utilidades_domesticas --- 428,171.13

**Insight**

The amount added to customer payments varies considerably across product
categories.

Some categories therefore generate considerably higher additional
amounts beyond the product-price component.

**Recommendation**

Management should monitor these additional charges at category, seller,
and order levels.

Understanding the composition of these amounts can help improve pricing
transparency, profitability analysis, and category-level commercial
strategy.

**12. High-Value Order-Level Differences**

**Finding**

Some individual orders show substantial differences between the
product-plus-freight amount and the total amount paid.

The highest extracted example records:

- Product + freight: **13,664.08**

- Total amount paid: **109,312.64**

- Difference: **95,648.56**

Other extracted orders also show differences exceeding 10,000.

**Insight**

A small number of orders can contain exceptionally large monetary
differences between the calculated product-plus-freight amount and the
total payment amount.

**Recommendation**

These high-value transactions should be included in a dedicated
transaction-monitoring process.

The business should investigate unusually large payment differences at
order level to understand the commercial characteristics associated with
them.

**13. Seller Concentration**

**Finding**

The marketplace contains **3,095 sellers**.

However, a relatively small group of sellers records substantially
higher order activity.

The leading seller receives 2,033 orders, followed by sellers with
1,987, 1,931, 1,775, and 1,551 orders respectively.

**Insight**

Seller activity is not evenly distributed across the marketplace.

A group of high-performing sellers contributes a significant volume of
marketplace activity.

**Recommendation**

The business should develop seller-performance monitoring using metrics
such as:

- Orders received

- Revenue generated

- Customer review score

- Delivery performance

- Cancellation rate

- Product category

- Customer location

- Payment value

High-performing sellers can be prioritized for strategic partnerships,
while lower-performing sellers can be supported through targeted
operational improvement programs.

**14. Seller Geographic Concentration**

**Finding**

São Paulo appears repeatedly among the highest-order seller locations.

Other important seller locations include Ibitinga, São José do Rio
Preto, Santo André, Piracicaba, Itaquaquecetuba, and several other
cities.

At state level, São Paulo is strongly represented among the
highest-performing sellers.

**Insight**

The marketplace\'s seller network has identifiable geographic clusters,
with São Paulo being particularly prominent.

**Recommendation**

Seller acquisition and logistics strategies should consider geographic
concentration.

The business can strengthen fulfillment coverage by analyzing the
relationship between seller locations, customer locations, delivery
performance, and freight costs.

**15. Overall Business Insights**

The exploration reveals five major business themes:

**1. Geographic Concentration**

Customer and seller activity is strongly represented in specific
regions, especially São Paulo.

**2. Strong Order Completion**

Delivered orders dominate the marketplace order lifecycle.

**3. Product Demand Concentration**

A relatively small number of categories account for a substantial share
of order activity.

**4. Payment Preference**

Credit card is overwhelmingly the leading payment method.

**5. Operational Variability**

Despite strong delivery completion, the marketplace contains significant
delivery-delay and payment-difference exceptions that require deeper
operational analysis.

**16. Strategic Recommendations**

Based on the exploratory findings, the following strategic actions are
recommended.

**Customer Strategy**

- Focus customer retention initiatives on high-value customer markets.

- Develop localized campaigns for major customer states and cities.

- Analyze repeat purchasing behavior within the strongest customer
  locations.

**Product Strategy**

- Prioritize high-demand product categories.

- Monitor category-level revenue and order performance separately.

- Develop cross-selling opportunities around complementary high-demand
  categories.

- Track category performance over time.

**Payment Strategy**

- Maintain strong credit-card payment infrastructure.

- Monitor payment behavior across product categories.

- Evaluate alternative payment methods for customer segments with lower
  credit-card usage.

**Delivery Strategy**

- Monitor early, on-time, and late delivery performance.

- Investigate exceptionally long delivery delays.

- Compare delivery performance across sellers and customer locations.

- Improve estimated-delivery accuracy.

**Seller Strategy**

- Develop seller-performance scorecards.

- Identify and reward consistently high-performing sellers.

- Monitor seller-level delivery and review performance.

- Evaluate seller geographic distribution against customer demand.

**Customer Experience Strategy**

- Combine review scores with delivery performance, seller performance,
  and product information.

- Investigate extremely long review-response intervals.

- Use customer feedback to identify areas requiring operational
  improvement.

**Financial & Transaction Monitoring**

- Monitor unusually large differences between product-plus-freight
  values and total payment values.

- Analyze payment values at order and category level.

- Establish exception reports for unusually high transaction
  differences.

**17. Conclusion**

The SQL exploration provides a broad view of the marketplace\'s customer
base, product demand, payment behavior, delivery operations, and seller
ecosystem.

The marketplace demonstrates strong customer activity in major Brazilian
markets, high delivered-order volume, significant demand across selected
product categories, and a clear preference for credit-card payments.

At the same time, the analysis identifies important operational areas
for further attention, particularly delivery delays, review-response
intervals, seller performance, and unusually large payment differences.

Together, these findings provide a foundation for developing a business
dashboard that allows stakeholders to monitor marketplace performance,
identify operational exceptions, understand customer behavior, and make
informed commercial decisions.

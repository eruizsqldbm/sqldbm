CREATE OR REPLACE VIEW SILVER.VW_SALES_TRANSACTION_DETAIL (SALES_TXN_ID string, RECEIPT_NUMBER string, LINE_NUMBER int, LINE_TYPE string, TXN_TS timestamp, TXN_DATE date, TXN_YEAR int, TXN_QUARTER int, TXN_MONTH int, TXN_DAY_OF_WEEK int, TXN_WEEK_OF_YEAR int, STORE_ID string, STORE_CODE string, STORE_NAME string, STORE_TYPE string, STORE_CITY string, STORE_STATE string, STORE_COUNTRY string, REGISTER_ID string, REGISTER_NUMBER string, CASHIER_ID string, CASHIER_NAME string, CASHIER_ROLE string, CUSS_ID string, LOYALTY_ID string, CUSS_FIRST_NAME string, CUSS_LAST_NAME string, PRODUCT_ID string, SKU string, UPC string, PRODUCT_NAME string, BRAND string, CATEGORY string, SUBCATEGORY string, UOM string, PROMOTION_ID string, PROMOTION_CODE string, PROMOTION_NAME string, PROMOTION_TYPE string, TAX_ID string, TAX_NAME string, TAX_JURISDICTION string, TAX_RATE_PCT decimal(9, 6), TXN_STATUS string, CURRENCY_CODE string, QUANTITY decimal(18, 4), UNIT_PRICE decimal(18, 4), EXTENDED_AMOUNT decimal(18, 2), LINE_DISCOUNT_AMOUNT decimal(18, 2), LINE_TAX_AMOUNT decimal(18, 2), LINE_NET_AMOUNT decimal(18, 2), HEADER_SUBTOTAL_AMOUNT decimal(18, 2), HEADER_DISCOUNT_AMOUNT decimal(18, 2), HEADER_TAX_AMOUNT decimal(18, 2), HEADER_TOTAL_AMOUNT decimal(18, 2), CREATED_TS timestamp, UPDATED_TS timestamp) AS
SELECT
    h.sales_txn_id,
    h.receipt_number,
    l.line_number,
    l.line_type,
    h.txn_ts,
    h.txn_date,
    cal.year          AS txn_year,
    cal.quarter       AS txn_quarter,
    cal.month         AS txn_month,
    cal.day_of_week   AS txn_day_of_week,
    cal.week_of_year  AS txn_week_of_year,
    s.store_id,
    s.store_code,
    s.store_name,
    s.store_type,
    s.city            AS store_city,
    s.state           AS store_state,
    s.country         AS store_country,
    r.register_id,
    r.register_number,
    c.cashier_id,
    c.cashier_name,
    c.role            AS cashier_role,
    cu.customer_id,
    cu.loyalty_id,
    cu.first_name     AS customer_first_name,
    cu.last_name      AS customer_last_name,
    p.product_id,
    p.sku,
    p.upc,
    p.product_name,
    p.brand,
    p.category,
    p.subcategory,
    p.uom,
    pr.promotion_id,
    pr.promotion_code,
    pr.promotion_name,
    pr.promotion_type,
    tx.tax_id,
    tx.tax_name,
    tx.tax_jurisdiction,
    tx.tax_rate_pct,
    h.txn_status,
    h.currency_code,
    l.quantity,
    l.unit_price,
    l.extended_amount,
    l.discount_amount  AS line_discount_amount,
    l.tax_amount       AS line_tax_amount,
    l.net_amount       AS line_net_amount,
    h.subtotal_amount  AS header_subtotal_amount,
    h.discount_amount  AS header_discount_amount,
    h.tax_amount       AS header_tax_amount,
    h.total_amount     AS header_total_amount,
    l.created_ts,
    l.updated_ts

FROM silver.fct_sales_txn_line   l
JOIN silver.fct_sales_txn_header h  ON l.sales_txn_id = h.sales_txn_id
LEFT JOIN silver.dim_store       s  ON h.store_id      = s.store_id
LEFT JOIN silver.dim_register    r  ON h.register_id   = r.register_id
LEFT JOIN silver.dim_cashier     c  ON h.cashier_id     = c.cashier_id
LEFT JOIN silver.dim_customer    cu ON h.customer_id    = cu.customer_id
LEFT JOIN silver.dim_product     p  ON l.product_id     = p.product_id
LEFT JOIN silver.dim_promotion   pr ON l.promotion_id   = pr.promotion_id
LEFT JOIN silver.dim_tax         tx ON l.tax_id         = tx.tax_id
LEFT JOIN silver.dim_calendar    cal ON h.txn_date       = cal.date_id;
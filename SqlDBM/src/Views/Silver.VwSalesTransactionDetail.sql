CREATE OR REPLACE VIEW Silver.VwSalesTransactionDetail (SalesTxnId string, ReceiptNumber string, LineNumber int, LineType string, TxnTs timestamp, TxnDate date, TxnYear int, TxnQuarter int, TxnMonth int, TxnDayOfWeek int, TxnWeekOfYear int, StoreId string, StoreCode string, StoreName string, StoreType string, StoreCity string, StoreState string, StoreCountry string, RegisterId string, RegisterNumber string, CashierId string, CashierName string, CashierRole string, CustomerId string, LoyaltyId string, CustomerFirstName string, CustomerLastName string, ProductId string, Sku string, Upc string, ProductName string, Brand string, Category string, Subcategory string, Uom string, PromotionId string, PromotionCode string, PromotionName string, PromotionType string, TaxId string, TaxName string, TaxJurisdiction string, TaxRatePct decimal(9, 6), TxnStatus string, CurrencyCode string, Quantity decimal(18, 4), UnitPrice decimal(18, 4), ExtendedAmount decimal(18, 2), LineDiscountAmount decimal(18, 2), LineTaxAmount decimal(18, 2), LineNetAmount decimal(18, 2), HeaderSubtotalAmount decimal(18, 2), HeaderDiscountAmount decimal(18, 2), HeaderTaxAmount decimal(18, 2), HeaderTotalAmount decimal(18, 2), CreatedTs timestamp, UpdatedTs timestamp) AS
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
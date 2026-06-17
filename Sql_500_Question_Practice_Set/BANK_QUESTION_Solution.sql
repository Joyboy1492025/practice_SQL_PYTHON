SHOW DATABASES;
USE banking;
SHOW TABLES;
DESC customer;
/*============================================================================================
 Category 1: Selection & Point Filtering (Questions 1–25)
==============================================================================================*/ 
-- 1. Write a query to list all records from the customer table.
SELECT * 
FROM customer;

-- 2. How do you display the ID, name, and contact details of all customers?
SELECT customer_id, name, contact 
FROM customer;

-- 3. Write a query to get all details of accounts with an exact balance of 120000.00.
SELECT * 
FROM account 
WHERE balance = 12000.00;

-- 4. How can you find the username and password string for customer ID 15?
SELECT username , password 
FROM customer 
WHERE customer_id = 15;

-- 5. Write a query to view all recorded fields in the transaction table.
SELECT * 
FROM transaction;

-- 6. How do you show all data inside the beneficiary table?
SELECT * 
FROM beneficiary;

-- 7. Write a query to find accounts belonging to customer ID 5.
SELECT * 
FROM account 
WHERE customer_id = 5;

-- 8. How do you display transaction details for transaction ID 5022?
SELECT * 
FROM transaction 
WHERE transaction_id = 5022;

-- 9. Write a query to find the bank details of beneficiary ID 9015.
SELECT * 
FROM beneficiary 
WHERE beneficiary_id = 9015;

-- 10. How can you extract the name and address of customer ID 100?
SELECT name, address 
FROM customer 
WHERE customer_id = 100;

-- 11. Write a query to select all unique account types available in the system.
SELECT DISTINCT type 
FROM account ;

-- 12. How do you show distinct transaction types registered in the database?
SELECT DISTINCT type 
FROM transaction;

-- 13. Write a query to find the address of the customer with username 'priya.patel'.
SELECT address , username 
FROM customer 
WHERE username = 'priya.patel';

-- 14. How do you show the amount and type for transaction ID 5100?
SELECT amount , type 
FROM transaction 
WHERE transaction_id = 5100;

-- 15. Write a query to extract the account number of beneficiary ID 9105.
SELECT accountNumber 
FROM beneficiary 
WHERE beneficiary_id = 9105;

-- 16. How can you find customers with the exact name 'Amit Verma'?
SELECT * 
FROM customer 
WHERE name = 'Amit Verma';

-- 17. Write a query to get account configurations where the balance is exactly 0.
SELECT * 
FROM account 
WHERE balance = 0;

-- 18. How do you view transaction data bound to account ID 1001?
SELECT * 
FROM transaction 
WHERE account_id = 1001;

-- 19. Write a query to read address profiles for customer ID 12.
SELECT address 
FROM customer 
WHERE customer_id = 12;

-- 20. How do you select customer references mapped to the beneficiary name 'Aarav Sharma'?
SELECT * 
FROM beneficiary 
WHERE name = 'Aarav Sharma';

-- 21. Write a query to find the configuration type of account ID 1050.
SELECT type 
FROM account 
WHERE account_id = 1050;

-- 22. How do you check all columns for account number '100500001234' in the beneficiary table?
SELECT * 
FROM beneficiary 
WHERE accountNumber = 100500001234;

-- 23. Write a query to find all data for transaction items recording an amount Greater than 5000.00.
SELECT * 
FROM transaction 
WHERE amount > 5000;

-- 24. How do you list all details for customer ID 78?
SELECT * 
FROM customer 
WHERE customer_id = 78;

-- 25. Write a query to list transaction timestamp configurations for transaction ID 5200.
SELECT timestamp 
FROM transaction 
WHERE transaction_id = 5200;

/*============================================================================================
Category 2: Logical Operators & Range Filtering (Questions 26–50)
==============================================================================================*/ 
-- 1. How do you select accounts with balances between 50000 and 150000?
SELECT * 
FROM account 
WHERE balance BETWEEN 50000 AND 150000;

-- 2. Write a query to extract customer records with IDs between 10 and 30.
SELECT * 
FROM customer 
WHERE customer_id BETWEEN 10 AND 30;

-- 3. How can you find transactions processed with amounts ranging between 1000 and 5000?
SELECT * 
FROM transaction 
WHERE amount BETWEEN 1000 AND 5000;

-- 4. Write a query to identify accounts with a balance below 10000 or above 300000.
SELECT * 
FROM account 
WHERE balance < 10000 OR balance > 300000;

-- 5. How do you list savings accounts with balances greater than 90000?
SELECT * 
FROM account 
WHERE type = 'Savings' AND balance > 90000;

-- 6. Write a query to find current accounts with a balance less than 50000.
SELECT * 
FROM account 
WHERE balance < 50000;

-- 7. How do you find transaction rows that are Credits and have amounts exceeding 20000?
SELECT * FROM transaction WHERE type = 'Credit';

-- 8. Write a query to identify Debit transactions valued under 500.
SELECT * 
FROM transaction 
WHERE type = 'Debit' AND amount < 500;

-- 9. How can you search for customers whose ID is either 1, 5, 10, or 15?
SELECT * 
FROM customer 
WHERE customer_id IN(1,5,10,15);
  
-- 10. Write a query to find accounts tracking types other than 'Savings' or 'Current'.
SELECT * 
FROM account 
WHERE type IN('Savings','Current');

-- 11. How do you identify beneficiaries linked to customer IDs 1, 2, 3, or 4?
SELECT * 
FROM beneficiary 
WHERE customer_id IN(1,2,3,4);

-- 12. Write a query to look up balances outside the scope of 20000 to 80000.
SELECT * 
FROM account 
WHERE balance NOT BETWEEN 20000 AND 80000;

-- 13. How do you extract customers who do not live in Mumbai or Delhi?
SELECT * 
FROM customer 
WHERE address NOT IN('Mumbai','Delhi');

-- 14. Write a query to find transactions that are not of type 'Debit' and have an amount greater than 10000.
SELECT * 
FROM transaction 
WHERE NOT type = 'Debit' AND amount > 10000;
 
-- 15. How do you select accounts for customer ID 1 with a balance over 50000?
SELECT * 
FROM account 
WHERE customer_id = 1 AND balance > 50000;

-- 16. Write a query to find accounts that have non-zero and non-negative balances.
SELECT * 
FROM account 
WHERE balance > 0;

-- 17. How do you look up transactions executed on account 1001 containing amounts between 2000 and 10000?
SELECT * 
FROM transaction 
WHERE account_id = 1001 AND amount BETWEEN 2000 AND 10000;

-- 18. Write a query to find beneficiary entities excluding beneficiary IDs 9001, 9002, and 9003.
SELECT * 
FROM beneficiary 
WHERE beneficiary_id NOT IN(9001,9002,9003);

-- 19. How can you find customers whose IDs are between 100 and 120 and contain active contacts?
SELECT * 
FROM customer 
WHERE customer_id BETWEEN 100 AND 120 AND contact IS NOT NULL;

-- 20. Write a query to find fixed deposit accounts containing balances below 200000.
SELECT * 
FROM account 
WHERE type = 'Fixed Deposit' AND balance < 200000;

-- 21. How do you select transactions occurring on account 1002 that are Credits?
SELECT * 
FROM transaction 
WHERE account_id = 1002 AND type = 'Credit';   

-- 22. Write a query to isolate accounts with a customer ID greater than 89 matching the 'Savings' classification.
SELECT * 
FROM account 
WHERE customer_id > 89 AND type = 'Savings' ;

-- 23. How do you find transaction profiles with transaction IDs from 5010 to 5050?
SELECT * 
FROM transaction 
WHERE transaction_id BETWEEN 5010 AND 5050;

-- 24. Write a query to filter beneficiary entities missing valid bank details string notation.
SELECT * 
FROM beneficiary 
WHERE bankDetails IS NULL OR bankDetails = ' ';

-- 25. How can you extract accounts with customer reference ranges from 50 to 100 possessing balances over 150000?
SELECT * 
FROM account 
WHERE customer_id BETWEEN 50 AND 100 AND balance > 150000.00;

/*============================================================================================
Category 3: Advanced String Processing & Pattern Matching (Questions 51–75)
==============================================================================================*/ 
-- 1. Write a query to find all customers whose names start with 'A'.
SELECT * 
FROM customer 
WHERE name LIKE 'A%';

-- 2. How do you locate customer profiles whose names end with 'Patel'?
SELECT * 
FROM customer 
WHERE name LIKE '%Patel';

-- 3. Write a query to list customers residing at locations mentioning 'MG Road'.
SELECT * 
FROM customer 
WHERE address LIKE '%MG Road%';

-- 4. How can you find out which customer usernames contain a dot ('.') character?
SELECT * 
FROM customer 
WHERE username LIKE '%.%';

-- 5. Write a query to search for bank details referencing 'ICICI Bank' in the beneficiary table.
SELECT * 
FROM beneficiary 
WHERE bankDetails LIKE '%ICICI Bank%';

-- 6. How do you select customers whose contact phone numbers end with '4567'?
SELECT * 
FROM customer 
WHERE contact LIKE '%4567';

-- 7. Write a query to find beneficiaries whose name contains 'Mehta' anywhere.
SELECT * 
FROM  beneficiary 
WHERE name LIKE '%Mehta%';

-- 8. How do you retrieve users whose address specifies a 'Sector' zone?
SELECT * 
FROM customer 
WHERE address LIKE '%Sector%';

-- 9. Write a query to extract the names of customers where the second letter is 'a'.
SELECT * 
FROM customer 
WHERE name LIKE '_a%';

-- 10. How can you find customer contacts starting with '98'?
SELECT * 
FROM customer 
WHERE contact LIKE '98%';

-- 11. Write a query to extract beneficiaries where the bank location explicitly indicates 'Mumbai'.
SELECT * 
FROM beneficiary 
WHERE bankDetails LIKE '%Mumbai%';

-- 12. How do you find out which customer records have addresses concluding with 'Delhi'?
SELECT * 
FROM customer 
WHERE address LIKE '%Delhi%';

-- 13. Write a query to get all customers whose name has a length of exactly 12 characters.
SELECT * 
FROM customer 
WHERE LENGTH(name) = 12;

-- 14. How do you search for usernames that contain the text pattern 'sharma'?
SELECT * 
FROM customer 
WHERE username LIKE '%sharma%';

-- 15. Write a query to convert all customer names to uppercase format.
SELECT *, UPPER(name) AS upper_name 
FROM customer;

-- 16. How do you view all usernames transformed to completely lowercase strings?
SELECT *, LOWER(username) AS lower_username 
FROM customer;

-- 17. Write a query to find beneficiary account numbers that contain '0000'.
SELECT * 
FROM beneficiary 
WHERE accountNumber LIKE '%0000%';

-- 18. How can you show the first 5 characters of all customer addresses?
SELECT *, SUBSTR(name,1,5) 
FROM customer;

-- 19. Write a query to search for customers whose name contains exactly two distinct words (separated by one space).
SELECT * 
FROM customer 
WHERE name LIKE '% %' AND name NOT LIKE '% % %';

-- 20. How do you fetch customer records with names that start with 'V' and end with 'Singh'?
SELECT * 
FROM customer 
WHERE name LIKE 'V%Singh';
 
-- 21. Write a query to calculate the character length of all stored passwords.
SELECT *, LENGTH(password) 
FROM customer;

-- 22. Replace 'Road' with 'Rd.' in all address fields for view output.                                                                       
SELECT *, REPLACE(address,'Road','Rd') AS newstr 
FROM customer 
WHERE address;

-- 23. Write a query to locate details where beneficiary account numbers start with '100'.
SELECT * 
FROM beneficiary 
WHERE accountNumber LIKE '100%';

-- 24. How can you trim leading and trailing spaces from beneficiary name elements?
SELECT *, TRIM(name) AS newname 
FROM beneficiary;

-- 25. Write a query to locate customers whose address fields are populated with text of a length greater than 25 characters.
SELECT * 
FROM customer 
WHERE LENGTH(address) > 25;

/*============================================================================================
Category 4: Basic Sorting & Pagination (Questions 76–100)
==============================================================================================*/ 
-- 1. How do you order all customer profiles alphabetically by name?
SELECT * 
FROM customer 
ORDER BY name ASC;

-- 2. Write a query to sort account configurations by balance in descending sequence.
SELECT * 
FROM account 
ORDER BY balance DESC;

-- 3. How do you list customer metrics sorted by ID descending?
SELECT * 
FROM customer 
ORDER BY customer_id DESC;

-- 4. Write a query to view transactions ordered from the newest to oldest execution timestamp.
SELECT * 
FROM transaction 
ORDER BY timestamp;

-- 5. How can you sort transaction sets based on transaction amounts in ascending structure?
SELECT * 
FROM transaction 
ORDER BY amount;

-- 6. Write a query to group sort by account type first, then balance descending.
SELECT * 
FROM account 
ORDER BY type , balance DESC;

-- 7. How do you list the top 5 wealthiest accounts based on balance metrics?
SELECT * 
FROM account 
ORDER BY balance DESC LIMIT 5;

-- 8. Write a query to extract the 10 oldest processing transaction rows tracked.
SELECT * 
FROM transaction 
ORDER BY timestamp DESC LIMIT 10;

-- 9. How do you fetch customers starting from offset index position 10 to fetch 10 rows?
SELECT * 
FROM customer 
LIMIT 10,10;

-- 10. Write a query to order beneficiary rows alphabetically by name.
SELECT * 
FROM beneficiary 
ORDER BY name;
 
-- 11. How can you show account IDs and balances ordered from lowest to highest valuations?
SELECT * 
FROM account 
ORDER BY balance;

-- 12. Write a query to sort transactions from account 1001 chronologically.
SELECT * 
FROM transaction 
WHERE account_id = 1001 ORDER BY timestamp ASC;

-- 13. How do you get the 3 largest transactions ever recorded in history?
SELECT * 
FROM transaction 
ORDER BY amount DESC LIMIT 3;

-- 14. Write a query to arrange customers by the length of their names in descending structure.
SELECT * 
FROM customer 
ORDER BY LENGTH(name) DESC;

-- 15. How do you fetch customer records 21 through 30 via limit offsets?
SELECT * 
FROM customer LIMIT 20 ,10;

-- 16. Write a query to extract account instances sorted by customer references ascending.
SELECT * 
FROM account 
ORDER BY customer_id;
 
-- 17. How do you list active credit events ordered from highest transaction value downwards?
SELECT * 
FROM transaction 
WHERE type = 'Credit' ORDER BY amount DESC;

-- 18. Write a query to show the lowest 5 account balances recorded across the banking platform.
SELECT * 
FROM account 
ORDER BY balance LIMIT 5;

-- 19. How can you sort beneficiaries by customer ID links, then by beneficiary name?
SELECT * 
FROM beneficiary 
ORDER BY customer_id ,name;

-- 20. Write a query to extract transaction IDs 5001 to 5100 sorted by amount value descending.
SELECT * 
FROM transaction 
WHERE transaction_id BETWEEN 5001 AND 5100 ORDER BY amount DESC;

-- 21. How do you order customer records by address values alphabetically, ignoring null targets?
SELECT * 
FROM customer 
WHERE address IS NOT NULL ORDER BY address;

-- 22. Write a query to sort fixed deposit arrangements by balance properties descending.
SELECT * 
FROM account 
WHERE type = 'Fixed Deposit' ORDER BY balance DESC;

-- 23. How do you display accounts ranking 6th to 15th highest in terms of fiscal net value?
 SELECT * 
 FROM account 
 ORDER BY balance DESC LIMIT 5,10;
 
-- 24. Write a query to sort transactions by account ID ascending, then by execution times descending.
SELECT * 
FROM transaction 
ORDER BY account_id , timestamp DESC;

-- 25. How can you select names from the beneficiary table ordered backwards from Z to A?
SELECT * 
FROM beneficiary 
ORDER BY name DESC;

/*============================================================================================
Category 5: Mathematical Operations & Basic Conversions (Questions 101–125)
==============================================================================================*/ 
-- 1. Write a query to calculate total liquidity balances across all bank accounts.
SELECT ROUND(SUM(balance)) AS liquidity_balances 
FROM account;

-- 2. How do you determine the average balance of all savings accounts?
SELECT ROUND(AVG(balance)) AS average_balance 
FROM account 
WHERE type = 'Savings';

-- 3. Write a query to find the maximum balance present within current accounts.
SELECT MAX(balance) AS max_balance 
FROM account 
WHERE type = 'Current';

-- 4. How can you locate the absolute smallest transaction amount recorded?
SELECT MIN(amount) AS smallest_transaction 
FROM transaction;

-- 5. Write a query to track the absolute count of transaction instances executed.
SELECT COUNT(*) AS count_transaction 
FROM transaction;

-- 6. How do you count the volume of registered customers?
SELECT COUNT(*) AS count_customer 
FROM customer;

-- 7. Write a query to discover the total count of savings accounts in the system.
SELECT COUNT(*) AS count_saving_account 
FROM account 
WHERE type = 'Savings';

-- 8. How do you sum all financial allocations processed inside Credit types?
SELECT SUM(amount) AS total_credit_transaction 
FROM transaction 
WHERE type = 'Credit';

-- 9. Write a query to sum all financial leakage inside Debit transaction categories.
SELECT SUM(amount) AS total_debit_transaction 
FROM transaction 
WHERE type = 'Debit';
 
-- 10. How can you calculate a hypothetical 5% tax adjustment cost over all current account metrics?
SELECT ROUND((5 / 100 )* SUM(balance)) AS hypothetical_tax 
FROM account 
WHERE type = 'Current';

-- 11. Write a query to show the net valuation balance variation after applying a flat addition of 1000 units across all accounts.
SELECT account_id, balance, (balance + 1000.00) AS hypothetical_bonus_balance 
FROM account;

-- 12. How do you determine the average amount exchanged over all transaction types?
SELECT AVG(amount) AS overall_avg_trans_amount 
FROM transaction;

-- 13. Write a query to find the highest amount transacted in a Debit event.
SELECT MAX(amount) AS highest_amount 
FROM transaction 
WHERE type = 'Debit';

-- 14. How can you find the lowest balance linked to a fixed deposit asset tracking metric?
SELECT MIN(balance) AS lowest_balance 
FROM account 
WHERE type = 'Fixed Deposit';

-- 15. Write a query to calculate the average balance across all combined accounts.
SELECT AVG(balance) AS avg_balance 
FROM account;

-- 16. How do you count unique customer links explicitly storing at least one beneficiary target?
SELECT COUNT(DISTINCT customer_id) AS total_customer 
FROM beneficiary;

-- 17. Write a query to count the total occurrences of beneficiaries set up on HDFC platforms.
SELECT COUNT(*) AS total_customer 
FROM beneficiary 
WHERE bankDetails LIKE '%HDFC%';

-- 18. How do you show absolute rounded currency values for account data?
SELECT ROUND(balance,0) AS rounded_balance 
FROM account;

-- 19. Write a query to divide total transaction credits by the total counts of transactions to map weights.
SELECT SUM(amount) / COUNT(*) AS total 
FROM transaction;

-- 20. How can you calculate the remaining value if account balances were distributed equally into 3 separate funds?
SELECT account_id, balance, (balance / 3) AS split_fund_value 
FROM account;

-- 21. Write a query to count the number of customers who have addresses configured with a 'Street' component.
SELECT COUNT(*) AS count 
FROM customer 
WHERE address LIKE '%Street%';

-- 22. How do you find out the maximum transaction size occurring on account 1001?
SELECT MAX(amount) AS high_transaction 
FROM transaction 
WHERE account_id = 1001;

-- 23. Write a query to calculate the standard count of current accounts registered.
SELECT COUNT(*) AS count_current 
FROM account 
WHERE type = 'Current';

-- 24. How do you determine the cumulative value of the lowest 5 account balances combined?
SELECT SUM(balance) AS sum_balance 
FROM (SELECT balance FROM account ORDER BY balance ASC LIMIT 5) AS lower_five;

-- 25. Write a query to find the average value extracted by debit transactions processed during early phases.
SELECT AVG(amount) AS avg_amount 
FROM transaction 
WHERE type = 'Debit';

/*============================================================================================
Category 6: Inner Joins & Relational Merges (Questions 126–150)
==============================================================================================*/ 
-- 1. How do you match customer names with their account configurations and balance positions?
SELECT c.customer_id,c.name, a.account_id, a.type, a.balance 
FROM customer c 
INNER JOIN account a ON c.customer_id = a.customer_id;

-- 2. Write a query to view transaction streams along with structural customer name metrics.
SELECT t.transaction_id,t.account_id,c.customer_id,c.name 
FROM transaction t
INNER JOIN account a ON t.account_id = a.account_id
INNER JOIN customer c ON a.customer_id = c.customer_id;

-- 3. How do you list all beneficiaries assigned to each customer by target names?
SELECT b.beneficiary_id,b.customer_id,c.name
FROM beneficiary b
INNER JOIN customer c ON b.customer_id = c.customer_id;

-- 4. Write a query to view transactions tracking accounts with balances greater than 200000.
SELECT *
FROM transaction t
INNER JOIN account a ON t.account_id = a.account_id
WHERE a.balance > 200000;

-- 5. How do you show customer profiles who own a 'Fixed Deposit' account type?
SELECT c.customer_id,c.name,a.type,a.balance
FROM customer c
INNER JOIN account a ON c.customer_id = a.customer_id
WHERE a.type = 'Fixed Deposit';

-- 6. Write a query to list accounts along with transactional logs processing sums over 50000.
SELECT a.account_id,a.customer_id,t.amount
FROM account a
INNER JOIN transaction t ON a.account_id = t.account_id
WHERE t.amount > 50000;

-- 7. How can you intersect customer identity records where both the customer and the beneficiary are located in 'Mumbai'?
SELECT *
FROM customer c 
INNER JOIN beneficiary b ON c.customer_id = b.customer_id 
WHERE c.address LIKE '%Mumbai%' AND b.bankDetails LIKE '%Mumbai%';

-- 8. Write a query to extract historical timelines of savings account transactional variations.
SELECT *
FROM account a 
INNER JOIN transaction t ON a.account_id = t.account_id
WHERE a.type = 'Savings';

-- 9. How do you show usernames of customers running current arrangements tracking debits?
SELECT c.customer_id,c.name,c.username,t.transaction_id,t.type
FROM customer c 
INNER JOIN account a ON c.customer_id = a.customer_id
INNER JOIN transaction t ON a.account_id = t.account_id
WHERE t.type = 'Debit';

-- 10. Write a query to find customer address strings tracking accounts holding less than 15000 units.
SELECT *
FROM customer c 
INNER JOIN account a ON c.customer_id = a.customer_id
WHERE a.balance < 15000;

-- 11. How can you map account IDs to customer names whose contact records start with '987'?
SELECT *
FROM customer c 
INNER JOIN account a ON c.customer_id = a.customer_id
WHERE c.contact LIKE '987%';

-- 12. Write a query to link beneficiary targets to structural savings portfolios managed by the customer.
SELECT *
FROM beneficiary b
INNER JOIN account a ON b.customer_id = a.customer_id
WHERE a.type = 'Savings';

-- 13. How do you extract full operational records linking customer names, account IDs, and transaction values?
SELECT c.name,a.account_id,t.transaction_id,t.amount 
FROM customer c
INNER JOIN account a ON c.customer_id = a.customer_id
INNER JOIN transaction t ON a.account_id = t.account_id;

-- 14. Write a query to find transaction events executed by customers named 'Aarav Sharma'.
SELECT c.name,a.account_id,t.transaction_id,t.amount 
FROM customer c
INNER JOIN account a ON c.customer_id = a.customer_id
INNER JOIN transaction t ON a.account_id = t.account_id
WHERE c.name = 'Aarav Sharma';

-- 15. How can you pair customer addresses with beneficiary bank detail parameters?
SELECT c.name,c.address,b.bankDetails
FROM customer c
INNER JOIN beneficiary b ON c.customer_id = b.customer_id;

-- 16. Write a query to find accounts associated with transactions valued at exactly 25000.00.
SELECT * 
FROM account a
INNER JOIN transaction t ON a.account_id = t.account_id
WHERE t.amount = 25000;

-- 17. How do you identify customers whose beneficiaries are hosted on 'SBI' networks?
SELECT c.name,b.bankDetails
FROM customer c
INNER JOIN beneficiary b ON c.customer_id = b.customer_id
WHERE b.bankDetails LIKE '%SBI%';

-- 18. Write a query to display full configurations of accounts possessing transactions of type 'Credit' processing after '2024-02-01'.
SELECT * 
FROM account a
INNER JOIN transaction t ON a.account_id = t.account_id
WHERE t.type = 'Credit' AND DATE(t.timestamp) > '2024-02-01';

-- 19. How do you fetch the name, contact structure, and current asset totals for customer references up to index 20?
SELECT c.name, c.contact, a.balance 
FROM customer c 
INNER JOIN account a ON c.customer_id = a.customer_id 
WHERE c.customer_id <= 20;

-- 20. Write a query to track account items processing logs that occur precisely during January 2024.
SELECT *
FROM account a
INNER JOIN transaction t ON a.account_id = t.account_id
WHERE timestamp LIKE "2024-01%";

-- 21. How do you view customer structures whose beneficiaries have the lowercase pattern 'patel' in their name?
SELECT *
FROM customer c
INNER JOIN beneficiary b ON c.customer_id = b.customer_id
WHERE c.name LIKE '%Patel%';

-- 22. Write a query to retrieve transaction data for accounts tracking 'Current' architecture arrangements.
SELECT *
FROM account a
INNER JOIN transaction t ON a.account_id = t.account_id
WHERE a.type = 'Current';

-- 23. How do you match customer identifiers against accounts containing liquidity above global averages?
SELECT *
FROM customer c 
INNER JOIN account a ON c.customer_id = a.customer_id
WHERE a.balance > (SELECT AVG(balance) FROM account);

-- 24. Write a query to list transaction amounts along with primary beneficiary connections for customer 1.
SELECT * 
FROM transaction t 
INNER JOIN account a ON t.account_id = a.account_id
INNER JOIN beneficiary b ON a.customer_id = b.customer_id
WHERE b.customer_id = 1;

-- 25. How can you group intersect all accounts matching customers residing in 'Kolkata'?
SELECT *
FROM customer c
INNER JOIN account a ON c.customer_id = a.customer_id
WHERE c.address LIKE '%Kolkata%';

/*============================================================================================
Category 7: Left, Right & Outer Join Variations (Questions 151–175)
==============================================================================================*/ 
-- 1. How do you list all customers and any accounts they have, ensuring customers without accounts are included?
-- 2. Write a query to find customers who do not own any account configurations in the bank.
-- 3. How do you display all accounts and any transactions they have, including accounts with no transaction history?
-- 4. Write a query to isolate account records that have never processed a single transaction event.
-- 5. How do you find all customers and any beneficiaries they have configured, including those with none?
-- 6. Write a query to find customers who have not added any beneficiaries to their profile.
-- 7. How can you match accounts to customers using a RIGHT JOIN to guarantee all account rows are returned?
-- 8. Write a query to match transactions to accounts using a RIGHT JOIN to check for unlinked records.
-- 9. How do you fetch all customer entries alongside potential active current type balances?
-- 10. Write a query to show accounts and transaction amounts for operations exceeding 100000 utilizing LEFT JOINs.
-- 11. How do you find customers who have either no accounts or no beneficiaries?
-- 12. Write a query to identify accounts with zero transaction records that hold balances above 50000.
-- 13. How can you map all customer contacts against beneficiary account allocations via structured left merges?
-- 14. Write a query to simulate a FULL OUTER JOIN by combining LEFT JOIN and RIGHT JOIN outputs using a set operator to fetch all customer-account relationships.
-- 15. How do you find customers whose accounts have no debit history?
-- 16. Write a query to extract accounts whose customers have no listed address values using RIGHT JOIN structures.
-- 17. How do you show all transactions alongside account details, displaying null fields for missing accounts?
-- 18. Write a query to find beneficiaries whose creators have no savings balances.
-- 19. How do you list all accounts alongside transactions executed on Mondays utilizing left joins?
-- 20. Write a query to capture records from customer lists showing matched data positions or full NULL sets across accounts.
-- 21. How do you evaluate customer names against beneficiary bank nodes, prioritizing customer row tracking?
-- 22. Write a query to extract accounts containing transactions with amounts exactly processing at 50000 flat, showcasing all system accounts.
-- 23. How can you pair customer usernames alongside beneficiary configurations targeting HDFC Bank assets?
-- 24. Write a query to check structural integrity by finding any transactions with an account_id that does not exist in the account table.
-- 25. How do you isolate beneficiaries created by customer index nodes above 100 with zero active savings structures?

/*============================================================================================
Category 8: Basic Grouping & Aggregate Functions (Questions 176–200)
==============================================================================================*/ 
-- 1. How do you find the total number of accounts for each customer?
-- 2. Write a query to find the total balance per account type.
-- 3. How do you show the average transaction amount for each transaction type?
-- 4. Write a query to count how many beneficiaries each customer has added.
-- 5. How do you calculate the maximum balance held within each separate account classification?
-- 6. Write a query to calculate the minimum transaction value executed per account ID.
-- 7. How can you determine total transaction volumes (counts) per account tracking reference?
-- 8. Write a query to group customers by city (derived from parsing the address string) and count them.
-- 9. How do you aggregate transaction credits value per account ID?
-- 10. Write a query to aggregate total debits processed per account ID.
-- 11. How do you find the average account balance of customers who have multiple accounts?
-- 12. Write a query to show the count of active transaction items, categorizing them by year and month.
-- 13. How can you find the maximum amount credited in a single transaction across accounts?
-- 14. Write a query to find the total number of beneficiaries assigned to bank configurations hosted at 'SBI'.
-- 15. How do you group accounts by customer reference code and pick out the absolute smallest individual balances?
-- 16. Write a query to determine the average transaction footprint across distinct accounts.
-- 17. How do you count the frequency of distinct username structures grouping them by first character patterns?
-- 18. Write a query to sum total customer balance valuations grouping by customer ID references.
-- 19. How can you extract transaction groupings processing counts over account lines?
-- 20. Write a query to aggregate account numbers under beneficiary groupings by tracking name matching counts.
-- 21. How do you find the peak transaction event size per account managed?
-- 22. Write a query to sum the total financial amount transacted for each transaction type per account.
-- 23. How do you extract customer count groupings segmented by contact prefixes (first 3 digits)?
-- 24. Write a query to calculate the minimum current value stored per customer grouping node.
-- 25. How can you group beneficiary setups by bank names and extract historical configuration occurrences?

/*============================================================================================
Category 9: Group Filtering with HAVING (Questions 201–225)
==============================================================================================*/ 
-- 1. How do you find customers who own more than 1 account configuration?
-- 2. Write a query to filter account types whose total combined liquidity exceeds 5000000.
-- 3. How do you identify accounts with an average transaction size greater than 20000?
-- 4. Write a query to isolate customers who have added more than 1 beneficiary target.
-- 5. How can you find accounts that have processed more than 3 transaction statements?
-- 6. Write a query to isolate account lines where the minimum credit processing amount exceeds 10000.
-- 7. How do you list customers whose aggregated net worth across all accounts is above 300000?
-- 8. Write a query to show transaction types that have accumulated more than 100 transaction counts.
-- 9. How do you find accounts whose cumulative debits exceed 50000 units?
-- 10. Write a query to find out which customer groupings contain average balances falling under 15000.
-- 11. How do you show account blocks whose single highest credit transaction sits below 50000?
-- 12. Write a query to group transaction components by account ID tracking total values between 50000 and 200000.
-- 13. How can you identify cities containing more than 5 distinct banking customers?
-- 14. Write a query to extract accounts where transaction frequency is precisely 2.
-- 15. How do you find customers whose accounts contain average balances over 100000?
-- 16. Write a query to isolate beneficiary name metrics tracking duplication occurrences in the system.
-- 17. How do you identify account categories tracking total occurrences under 50 records?
-- 18. Write a query to select accounts whose absolute net balance after a simulated 10% deduction would still exceed 100000.
-- 19. How do you find customer nodes whose maximum single account balance is over 250000?
-- 20. Write a query to extract transaction date sets processing more than 10 operations globally.
-- 21. How can you look up account profiles whose minimum single debit transaction layout totals more than 5000?
-- 22. Write a query to isolate customer IDs tracking total savings balances above 80000.
-- 23. How do you identify transaction nodes whose mean asset transfer exceeds 40000?
-- 24. Write a query to select customer segments possessing combined fixed deposit assets over 300000.
-- 25. How do you view transaction processing metrics with account counts recording amounts below 10000 inside group structures?

/*============================================================================================
Category 10: Subqueries & Nested Expressions (Questions 226–250)
==============================================================================================*/ 
-- 1. How do you find the customer name who owns the account with the highest balance in the bank?
-- 2. Write a query to select all accounts with a balance greater than the global average balance.
-- 3. How can you find all transactions processed for accounts owned by customer ID 1?
-- 4. Write a query to extract accounts that have processed transactions with an amount greater than 300000.
-- 5. How do you find customers who have added at least one beneficiary located at 'HDFC Bank, Mumbai'?
-- 6. Write a query to locate transactions attached to 'Fixed Deposit' account types.
-- 7. How can you find accounts belonging to the customer with username 'aarav.sharma'?
-- 8. Write a query to find the minimum balance among all savings accounts and return accounts matching it.
-- 9. How do you extract transaction lines whose values exceed the average transaction volume recorded on account 1001?
-- 10. Write a query to list beneficiaries linked to customers who have current accounts.
-- 11. How do you isolate the absolute oldest transaction row using subqueries?
-- 12. Write a query to find accounts whose balance position is less than the average balance of all current accounts.
-- 13. How can you extract customers who share the same last name pattern as 'Priya Patel' via subqueries?
-- 14. Write a query to find transactions that occurred on accounts with a balance of exactly 45230.50.
-- 15. How do you select beneficiaries whose ownership belongs to customers with more than 1 account?
-- 16. Write a query to find the customer details for the individual who executed the largest debit transaction.
-- 17. How do you fetch transactions executed on accounts whose balances are within a low threshold (under 10000)?
-- 18. Write a query to select accounts created by customers residing in 'Bengaluru'.
-- 19. How can you list transactions tracking accounts that hold balances exceeding the total sum of account balances for customer ID 3?
-- 20. Write a query to isolate beneficiaries recorded under customer nodes that possess zero active credit transactions.
-- 21. How do you find accounts containing balances higher than any individual transaction amount ever logged?
-- 22. Write a query to select customer addresses that map to beneficiaries holding structural configurations with SBI.
-- 23. How do you isolate transactions processing values below the absolute lowest balance registered inside Current configurations?
-- 24. Write a query to retrieve customer identity profiles lacking any logged entries in the beneficiary directory.
-- 25. How can you identify account IDs tracking transaction credits that are larger than the average debit amount?

/*============================================================================================
Category 11: Advanced Subqueries & Correlated Subqueries (Questions 251–275)
==============================================================================================*/ 
-- 1. How do you find accounts whose balance is greater than the average balance of accounts belonging to that same customer?
-- 2. Write a query to list transactions that represent the maximum amount for their respective account using a correlated subquery.
-- 3. How do you identify customers who have at least one account with a balance over 200000 using the EXISTS operator?
-- 4. Write a query to find customers who do not have any beneficiaries using the NOT EXISTS operator.
-- 5. How can you check if there is a transaction within an account's historical operational dates matching a specific milestone (e.g., '2024-01-05')?
-- 6. Write a query to select the latest transaction row for every single account in the system using a correlated subquery.
-- 7. How do you find customers whose accounts have all processed at least one transaction using conditional existence check patterns?
-- 8. Write a query to find accounts of type 'Savings' that have a balance higher than the balance of any 'Current' account using the ANY keyword.
-- 9. How do you find accounts of type 'Savings' that have a balance higher than the balance of all 'Current' accounts using the ALL keyword?
-- 10. Write a query to isolate beneficiaries whose customer reference maps to a user possessing a total net worth over 400000.
-- 11. How do you list transactions where the amount is greater than the average transaction amount of the parent account type?
-- 12. Write a query to find customers who have added beneficiaries containing names that match other existing customers in the bank.
-- 13. How can you select the first transaction ever recorded for each individual account using a correlated subquery?
-- 14. Write a query to find accounts whose historical credit transactions have all been greater than 5000.
-- 15. How do you fetch customer records where the count of accounts owned matches precisely the count of beneficiaries created?
-- 16. Write a query to find transactions where the amount exceeds the balance of the associated account.
-- 17. How do you identify customers whose accounts are exclusively 'Savings' accounts?
-- 18. Write a query to extract beneficiary configurations where the customer reference points to a person living on 'Brigade Road'.
-- 19. How can you select the third transaction recorded for an account by evaluating lower historical timestamp counts?
-- 20. Write a query to find accounts whose customer has a contact number that is unique in the system using correlated lookups.
-- 21. How do you extract transactions where the transaction amount matches the minimum balance of any account owned by the same customer?
-- 22. Write a query to find customers whose names are shorter than the name of any beneficiary they have added.
-- 23. How can you isolate accounts that have processed dynamic debit metrics exceeding 10000 units using existential filters?
-- 24. Write a query to isolate customer entities who have registered beneficiaries with distinct bank details matching their own address string patterns.
-- 25. How do you list transactions that occurred in the first half of the recorded historical window for that specific account?

/*============================================================================================
Category 12: Window Functions & Analytical Extensions (Questions 276–300)
==============================================================================================*/ 
-- 1. How do you rank all accounts based on balance from highest to lowest using RANK()?
-- 2. Write a query to assign continuous row numbers to transactions within each individual account chronologically using ROW_NUMBER().
-- 3. How can you compute the running total balance change across transactions for each account (where Credits add and Debits subtract)?
-- 4. Write a query to find the dense rank of customers by net worth using DENSE_RANK().
-- 5. How do you fetch the previous transaction amount for the same account line using LAG()?
-- 6. Write a query to fetch the subsequent transaction amount for comparison tracking using LEAD().
-- 7. How do you divide accounts into 4 equal wealth quartiles using NTILE()?
-- 8. Write a query to determine the absolute first transaction value for each account line using FIRST_VALUE().
-- 9. How can you determine the absolute last transaction value inside analytical windows using LAST_VALUE()?
-- 10. Write a query to calculate the percentage rank of account balances using PERCENT_RANK().
-- 11. How do you compute the cumulative distribution framework score of balances using CUME_DIST()?
-- 12. Write a query to find moving average metrics over the past 3 transaction operations for each account using windows frames.
-- 13. How do you isolate transactions that rank as the top 1 newest entry within their account tracking path?
-- 14. Write a query to calculate the average balance partition alongside standard account fields using window aggregations.
-- 15. How can you extract the transaction amount difference between the current row and the immediate next row using window functions?
-- 16. Write a query to track the running maximum transaction size processed on each account.
-- 17. How do you assign unique line item configurations to customers grouped by city metrics using analytical row counts?
-- 18. Write a query to compute the running total count of transactions generated across the historic window.
-- 19. How do you segment customer balance nodes into 10 distinct deciles using window extensions?
-- 20. Write a query to extract rows that sit exactly in the second position of an asset sorting list per user using analytical filters.
-- 21. How can you find the percentage share of an account's balance relative to the customer's total net worth using partition functions?
-- 22. Write a query to find the difference between the maximum and minimum transaction size processed for each account as a window calculation.
-- 23. How do you identify transactions where the current transaction value is more than double the size of the previous transaction on that account using window lookups?
-- 24. Write a query to compute dense ranks for transaction rows partitioned by type and ordered by amount descending.
-- 25. How can you display account metadata combined with window counts showing total active sibling configurations owned by the same customer?

/*============================================================================================
Category 13: Common Table Expressions (CTEs) (Questions 301–325)
==============================================================================================*/ 
-- 1. How do you create a CTE to identify the wealthiest customers and list their names and total net worth?
-- 2. Write a query using a CTE to filter out transactions executed in January 2024 and find their average volume.
-- 3. How can you chain two CTEs together: the first calculating customer account counts, the second filtering for customers with multiple accounts?
-- 4. Write a query with a CTE that isolates debit metrics and matches it back against account metadata.
-- 5. How do you use a CTE to isolate unique beneficiary banks and count their occurrences?
-- 6. Write an analytical query using a CTE that determines the dense rank of accounts inside transaction counts and filters for rank 1 targets.
-- 7. How can you evaluate customer phone numbers through a formatting CTE that exposes masked characters?
-- 8. Write a query to extract running balances up to a small sequence limit using a CTE framework for clean output separation.
-- 9. How do you write a CTE to define spatial geographic attributes based on parsing addresses and count regional densities?
-- 10. Write a query using a CTE to list all credit type transactions, then calculate their variance from the mean credit size.
-- 11. How do you determine the highest-earning fixed deposit configuration owner using modular CTE wrappers?
-- 12. Write a query to filter accounts with high balances via a CTE and select their matching beneficiary records.
-- 13. How can you isolate transactions processed precisely between 09:00:00 and 12:00:00 using a temporal parsing CTE?
-- 14. Write a query utilizing a CTE that identifies customers who have multiple beneficiaries and lists their profile attributes.
-- 15. How do you use a CTE to evaluate account liquidity positions as categories ('Tier 1', 'Tier 2', 'Tier 3') and calculate group counts?
-- 16. Write a query to construct a CTE that pairs transaction values against account types to discover total savings volumes.
-- 17. How do you determine the standard deviation gap simulated manually over accounts using sequential CTE workflows?
-- 18. Write a query to identify customer instances containing duplicate usernames using lookup CTE architectures.
-- 19. How do you isolate transaction rows that processed amounts larger than the average transaction amount for the parent account using a CTE?
-- 20. Write a query to trace beneficiary name lengths using functional string transformation windows encapsulated in a CTE.
-- 21. How can you extract all current accounts using a CTE and find their total number of transactions?
-- 22. Write a query to capture the absolute maximum single debit event amount ever processed via structural CTE lookups.
-- 23. How do you find out which customer configurations have total investments over 300000 in fixed deposits using CTE grouping?
-- 24. Write a query to combine structural account values and count transactional histories via descriptive joint CTE metrics.
-- 25. How do you design a CTE that selects the absolute oldest customer based on ID ranking structures?

/*============================================================================================
Category 14: Conditional Logic & CASE Expressions (Questions 326–350)
==============================================================================================*/ 
-- 1. How do you classify accounts into 'Wealthy Profile', 'Moderate Profile', or 'Low Balance Profile' based on balance thresholds of 100000 and 20000 using a CASE expression?
-- 2. Write a query to calculate custom annual interest yields: 5% for Savings, 2% for Current, 8% for Fixed Deposits using CASE.
-- 3. How can you display transaction types with custom display labels ('Funds Injected' for Credit, 'Funds Extracted' for Debit)?
-- 4. Write a query to mask customer contacts by displaying only the final 4 digits, replacing the rest with 'X' using conditional evaluation.
-- 5. How do you create a query that dynamically checks if an account balance can cover a hypothetical flat charge of 50000 units?
-- 6. Write a query to pivot transaction counts by type into separate columns ('credit_count', 'debit_count') using conditional aggregation (CASE inside SUM).
-- 7. How do you pivot total transaction amounts by type into separate columns (total_credited, total_debited)?
-- 8. Write a query to categorize transactions into 'Micro', 'Macro', or 'Mega' scales based on whether the amount is under 5000, between 5000 and 50000, or above 50000.
-- 9. How can you sort accounts dynamically using a CASE statement based on a specific account type ordering preference?
-- 10. Write a query to flag addresses lacking state markers or concrete comma separators as 'Incomplete Address Logistics'.
-- 11. How do you determine the structural weight distribution of accounts based on custom customer segments using inline conditional aggregates?
-- 12. Write a query to group transactions based on processing hours into 'Morning Shift', 'Afternoon Shift', or 'Evening Shift'.
-- 13. How do you isolate customer records and flag usernames containing numeric attributes using dynamic regex indicators inside a CASE loop?
-- 14. Write a query to check beneficiary configurations and categorize them into routing tiers based on whether they belong to major partner networks.
-- 15. How can you apply customized tiered maintenance fees over current balances directly via selective projection blocks using CASE conditions?
-- 16. Write a query to extract transaction counts and flag if the count exceeds 3 entries as a high frequency volume operational target.
-- 17. How do you determine if customer addresses map to metro zones ('Mumbai', 'Delhi', 'Bengaluru') or regional market extensions?
-- 18. Write a query to evaluate the safety of account password configurations based on string length matching metrics.
-- 19. How can you calculate custom withdrawal penalties across accounts for a simulated crisis model using structural filters?
-- 20. Write a query to categorize transactions chronologically by day of the week ('Weekday Processing Block' vs 'Standard Business Weekday').
-- 21. How do you calculate unique beneficiary verification metrics using numeric length evaluation strings?
-- 22. Write a query to assign credit risk parameters to customer identifiers based on total debt transactions processed.
-- 23. How do you display the type of beneficiary bank structure based on whether it contains 'Co-op' indicators?
-- 24. Write a query to evaluate if a customer's registered contact number uses a standard mobile operator configuration format.
-- 25. How can you isolate accounts and calculate hypothetical target insurance cover values up to a maximum limit of 100000 units using CASE clamping?

/*============================================================================================
Category 15: Advanced Date & Time Analytics (Questions 351–375)
==============================================================================================*/ 
-- 1. How do you extract the year, month, and day as separate columns from every transaction timestamp?
-- 2. Write a query to find all transactions that occurred in January 2024.
-- 3. How can you calculate the chronological age in months between a transaction and a specific fixed year/month reference?
-- 4. Write a query to format transaction timestamps to a clean date string format (YYYY-MM-DD).
-- 5. How do you find the name of the weekday (e.g., 'Friday', 'Saturday') for each transaction record?
-- 6. Write a query to isolate transactions that occurred on weekends (Saturday and Sunday).
-- 7. How do you find the total transaction amount processed during each hour of the day?
-- 8. Write a query to find out which transactions were executed in the second quarter of any calendar year.
-- 9. How can you calculate the absolute gap in days between the oldest and newest transaction for each account?
-- 10. Write a query to fetch transactions processed after 15:00:00 (3 PM), simulating end-of-day clearings.
-- 11. How do you extract the calendar week number of the year for all transaction logs?
-- 12. Write a query to group transactions by specific dates and count day-by-day throughput frequencies.
-- 13. How can you find the day of the month (1 to 31) for transaction occurrences?
-- 14. Write a query to find transactions processed during the first 10 days of any month.
-- 15. How do you determine the last day of the month for each transaction timestamp using LAST_DAY()?
-- 16. Write a query to calculate the total transaction volume processed specifically on the 15th of any month.
-- 17. How can you isolate transactions processed during late-night hours (between 00:00:00 and 05:00:00)?
-- 18. Write a query to look up the total transaction count distributions segmented by calendar years.
-- 19. How do you find out which accounts had transactions spaced less than 24 hours apart from their previous activity?
-- 20. Write a query to format timestamps into a verbose textual structure (e.g., '12th January 2024').
-- 21. How do you check if any historical entries were generated on a leap year date context?
-- 22. Write a query to calculate the exact number of seconds elapsed from midnight to the transaction execution window.
-- 23. How can you filter transactions processed strictly within the winter months (December, January, February)?
-- 24. Write a query to extract the total volume of transactions mapped to the 1st day of the standard business week (Mondays).
-- 25. How do you isolate transaction paths that have occurred exactly during a chosen historical year baseline (e.g., 2024)?

/*============================================================================================
Category 16: Multi-Table Set Operations (Questions 376–400)
==============================================================================================*/ 
-- 1. How do you combine a list of all distinct customer names and beneficiary names into a single unified directory using UNION?
-- 2. Write a query to find all names that exist in both the customer directory and the beneficiary list using an intersection join approach.
-- 3. How can you track all unique addresses and bank locations in a single unified lookup index framework?
-- 4. Write a query to create a comprehensive lookup of all target accounts by extracting bank account references from both tables.
-- 5. How do you check for user profiles whose usernames are completely identical to their passwords as a data sanitation check?
-- 6. Write a query to generate a master list of all transaction amounts alongside account balances to analyze wealth distribution with entity tags.
-- 7. How do you isolate beneficiary names that do not match any customer names in the system?
-- 8. Write a query to find out which names are shared across multiple customer profiles or beneficiary entities using grouping set combinators.
-- 9. How can you combine accounts holding balances over 200000 with accounts holding transaction amounts over 50000 into a priority audit list?
-- 10. Write a query to intersect usernames with stored password strings to verify token distributions.
-- 11. How do you extract all distinct bank names from beneficiary configurations combined with regional customer cities?
-- 12. Write a query to combine structural profiles of accounts holding less than 10000 with accounts holding less than 1000 across transactions.
-- 13. How can you isolate customer IDs that appear in the account directory but have no entries in the beneficiary ledger using set differences?
-- 14. Write a query to create a unified ledger of customer activities, showing customer name and event type ('Opened Account' vs 'Added Beneficiary').
-- 15. How do you extract all transaction IDs that are Credits combined with all transaction IDs that are Debits into a single column with verification tags?
-- 16. Write a query to find out which beneficiary names match exactly with the name parameters of customer records with an index below 10.
-- 17. How can you create a list of all distinct account balances combined with transaction amounts to check for overlapping numerical values?
-- 18. Write a query to combine a list of all current account owners with all savings account owners.
-- 19. How do you isolate beneficiaries that have been explicitly mapped back to customer IDs between 1 and 50?
-- 20. Write a query to construct a master dataset containing all registered contact information from the customer table combined with beneficiary account numbers.
-- 21. How can you find out which customer names are explicitly absent from the beneficiary configuration list?
-- 22. Write a query to combine transaction tracking rows that occurred in the first week of January 2024 with those in the last week of February 2024.
-- 23. How do you merge customer locations with beneficiary bank descriptions to build a complete geographical index for logistics analysis?
-- 24. Write a query to find accounts that have never received a credit and have never processed a debit using set difference models.
-- 25. How can you generate a single structural list of all primary key IDs across both the customer and account tables to check for overlapping numerical ranges?

/*============================================================================================
Category 17: Complex Financial Auditing & Reconciliation (Questions 401–425)
==============================================================================================*/ 
-- 1. How do you identify accounts where the current balance does not match the sum of historical credits minus debits?
-- 2. Write a query to detect duplicate transaction records processed within 60 seconds of each other with identical amounts.
-- 3. How can you find customers whose combined balance across all accounts is less than 5000, signaling high risk for fee non-compliance?
-- 4. Write a query to find out which current accounts have processed debit transactions that exceed 80% of their total balance position.
-- 5. How do you calculate the structural deposit-to-withdrawal aggregate ratio for each account?
-- 6. Write a query to isolate accounts that have processed more than 10,000 in debits but zero credits within the entire transaction timeline.
-- 7. How do you identify customers who have multiple savings accounts but have left one with a low balance (under 1000)?
-- 8. Write a query to track accounts whose balances dropped below a safe baseline of 2000 after processing a debit.
-- 9. How can you determine the average transaction footprint change month-over-month using window structures?
-- 10. Write a query to flag accounts that processed a transaction with an amount that perfectly matches their current remaining balance.
-- 11. How do you identify customers whose listed addresses are completely identical to those of other customers, indicating potential shared commercial entities?
-- 12. Write a query to find the total capital liquidity held in the bank's top wealthiest account tier.
-- 13. How can you track accounts that have processed transactions with an amount that is an exact multiple of 10000?
-- 14. Write a query to locate beneficiaries whose account numbers match existing customer phone numbers as potential data entry errors.
-- 15. How do you find the percentage of accounts that have been completely inactive (zero transactions) across the entire operational timeline?
-- 16. Write a query to extract the account ID that has the highest ratio of debit transactions relative to its total historical transaction count.
-- 17. How do you find customers whose names contain digits or symbols that break standard alphabetic naming policies?
-- 18. Write a query to audit passwords to see if any match standard default layout patterns.
-- 19. How can you calculate the daily average transaction processing rate per account to optimize infrastructure workloads?
-- 20. Write a query to find accounts whose total transactional credits exceed their structural current asset balances by more than 500%.
-- 21. How do you isolate accounts with active transactions that completely lack recorded timestamps?
-- 22. Write a query to group customer identifiers based on whether their accounts contain an even or odd balance value.
-- 23. How do you find out if any beneficiary shares both an account number and a bank name string with another beneficiary entry?
-- 24. Write a query to audit accounts to verify that no 'Fixed Deposit' configuration has been processed with an active Debit transaction.
-- 25. How can you extract the top 5 accounts with the highest variance between their single largest credit and single largest debit transaction?

/*============================================================================================
Category 18: Fraud Detection Patterns & High-Risk Indicators (Questions 426–450)
==============================================================================================*/ 
-- 1. How do you detect rapid-velocity transactions where accounts process more than 2 debit transactions within a 5-minute window?
-- 2. Write a query to identify structural round-tripping patterns: A credit transaction followed by an identical debit amount on the same account within 24 hours.
-- 3. How can you find accounts with high-risk behavior processing transactions that are larger than 95% of all transactions logged in the entire system?
-- 4. Write a query to locate customers with usernames containing suspicious substrings like 'admin', 'root', or 'null' indicating exploit vulnerabilities.
-- 5. How do you identify accounts that show anomalous structural data positions like negative balances in historical snapshots?
-- 6. Write a query to flag transactions processed between 1 AM and 4 AM that exceed 50000 units.
-- 7. How can you detect "structuring" or smurfing attempts where multiple credit transactions on the same account within 48 hours sit just below the standard 50,000 regulatory reporting threshold?
-- 8. Write a query to find customers who have added more than 3 distinct beneficiaries hosted at different external banks within a short window.
-- 9. How do you identify accounts that processed a transaction that was more than 10 times larger than the historical average transaction size for that specific account?
-- 10. Write a query to detect risk concentrations where one account holds over 90% of a customer's aggregate wealth across multiple portfolios.
-- 11. How do you track beneficiaries with names containing punctuation marks or numbers that might bypass internal system watchlists?
-- 12. Write a query to find accounts that processed a credit transaction over 100000 followed by an immediate change to a low balance position within the month.
-- 13. How can you flag accounts whose historical debit transactions are completely uniform with identical amounts repeated more than 4 times?
-- 14. Write a query to locate customers who do not have a standard Indian mobile contact number layout.
-- 15. How do you detect accounts where a single credit transaction accounts for more than 99% of the total historical credits received?
-- 16. Write a query to find customers who share a single password string with other active platform users indicating credential stuffing risks.
-- 17. How do you identify accounts where a debit was processed immediately after a large credit, leaving a remaining balance of less than 100 units?
-- 18. Write a query to audit beneficiaries whose account numbers are exceptionally short (less than 8 characters) indicating high manual entry risks.
-- 19. How can you flag accounts that processed a debit transaction that perfectly mirrors the amount of a credit transaction processed on a different account owned by the same customer within 1 hour?
-- 20. Write a query to detect high-frequency structural alterations where accounts process more than 10 transactions within a single calendar day.
-- 21. How do you identify beneficiaries whose structural bank details fields are completely filled with placeholder text strings like 'test', 'none', or 'null'?
-- 22. Write a query to track transactions where the processed amount contains unusual non-zero decimal patterns recurrently.
-- 23. How do you flag accounts whose single largest debit transaction is greater than the total net worth of their primary customer across all other accounts combined?
-- 24. Write a query to identify customers whose registered addresses point to known commercial shared mailboxes or PO boxes.
-- 25. How can you isolate accounts with massive credit transactions that were processed on the very first day of the calendar year to audit corporate tax patterns?

/*============================================================================================
Category 19: Database Views & Analytical Syntheses (Questions 451–475)
==============================================================================================*/ 
-- 1. How do you create a view named v_customer_summary that aggregates customer details, total accounts, and total balance?
-- 2. Write a query to filter the customer summary view to find profiles with a total balance over 300000.
-- 3. How do you create a view named v_recent_transactions that shows the last 100 transactions processed in the bank?
-- 4. Write a query to filter the recent transactions view to find credit transactions over 10000.
-- 5. How do you create a view named v_account_lineage that maps out customer details alongside their specific accounts and beneficiaries?
-- 6. Write a query to check the account lineage view to find out which customers have added a beneficiary but do not have a savings account.
-- 7. How do you create a view named v_monthly_stats that calculates total credits and total debits processed across the entire system by month?
-- 8. Write a query to look up the monthly stats view to find months where debits exceeded credits.
-- 9. How do you create a view named v_high_risk_beneficiaries that filters for beneficiaries with external bank names that don't match standard Tier 1 hubs?
-- 10. Write a query to find out the total count of high-risk beneficiaries registered in the system using a reporting view.
-- 11. How do you create a view named v_dormant_accounts that isolates accounts that have processed zero transactions?
-- 12. Write a query to check the dormant accounts view to find unlinked records holding a balance over 100000.
-- 13. How do you create a view named v_customer_reach that extracts clean city markers from customer addresses?
-- 14. Write a query to group the customer reach view by city to analyze market penetration density across India.
-- 15. How do you create a view named v_net_worth_ranking that uses analytical window rankings to rank customers by their net worth?
-- 16. Write a query to pull records from the net worth ranking view to find the top 5 wealthiest customer IDs.
-- 17. How do you create a view named v_daily_ledger that summarizes transaction counts and net volume changes day by day?
-- 18. Write a query to view dates that processed a negative net financial flow from the daily ledger view.
-- 19. How do you create a view named v_account_velocity that determines how many transactions each account executes per week?
-- 20. Write a query to check the account velocity view to identify accounts that exceeded a processing velocity of 3 transactions in a single week.
-- 21. How do you create a view named v_beneficiary_overlap that matches customers who share identical beneficiary account numbers?
-- 22. Write a query to verify if any overlapping beneficiaries exist in the database using the overlap view.
-- 23. How do you create a view named v_fixed_deposit_maturation that estimates hypothetical compound interest balances for fixed deposits over 5 years?
-- 24. Write a query to view projected outcomes from the fixed deposit maturation view.
-- 25. How do you safely drop reporting views to clean up a temporary workspace environment?

/*============================================================================================
Category 20: Complex Multi-Table Transactions & Financial Scripting Simulators (Questions 476–500)
==============================================================================================*/ 
-- 1. How do you write an INSERT statement to add a new customer into the database workspace?
-- 2. Write a update query to alter an account balance directly after processing a new credit transaction.
-- 3. How do you log a transaction entry tracking a simulated 5000 credit adjustment on account 1001?
-- 4. Write a query to deduct a structural low-balance maintenance fee from all accounts holding less than 10000 units.
-- 5. How do you write a bulk query to log debit transaction entries for all accounts penalized by low balance maintenance charges?
-- 6. Write a statement to simulate Step 1 of an active balance transfer (deducting funds from a source account).
-- 7. Write a statement to simulate Step 2 of an active balance transfer (crediting funds to a destination account).
-- 8. How do you record the debit leg of a balance transfer operation inside the transaction history table?
-- 9. How do you record the corresponding credit leg of a balance transfer operation inside the transaction ledger?
-- 10. Write a query to change a customer's registered phone contact record and update their address format simultaneously.
-- 11. How do you programmatically close an account by deleting an account configuration with a balance of 0?
-- 12. Write a query to remove a specific beneficiary entry from a customer's profile directory.
-- 13. How do you apply a annual bonus yield multiplier to all active fixed deposit arrangements?
-- 14. Write a query to selectively reverse an accidental duplicate transaction row by ID.
-- 15. How can you increment transaction tracking keys manually to find the next available primary key index?
-- 16. Write a query to conditionally change product labeling strings (like replacing 'Fixed Deposit' with 'Term Deposit') inside analytical outputs.
-- 17. How do you bulk add a new beneficiary to a customer's tracking table?
-- 18. Write a archiving query to check for and find any transactions older than 5 years.
-- 19. How do you update customer password values to simulate a system-wide security hash patch rotation?
-- 20. Write a query to format all remaining account balances into localized currency strings with symbol indicators.
-- 21. How can you find out which accounts will fall below the statutory minimum threshold of 5000 units if a simulated global fee is applied?
-- 22. Write a query to modify a beneficiary's routing network parameters safely based on structural validation checks.
-- 23. How do you extract the account distribution counts grouped by product type matrix variables across customers?
-- 24. Write a query to check the peak transaction value processed during the current day's business window.
-- 25. How do you run a final comprehensive master verification check that counts and outputs the row totals for all tables in the database to ensure data integrity?
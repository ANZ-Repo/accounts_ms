INSERT INTO accounts (customer_id, account_id, account_type, account_name, balance_date, currency, balance) VALUES (100, 12345, 'savings', 'accname', PARSEDATETIME('2021-12-31-23.59.59','yyyy-MM-dd-HH.mm.ss') , 'AUD', 100);
INSERT INTO accounts (customer_id, account_id, account_type, account_name, balance_date, currency, balance) VALUES (200, 23456, 'current', 'accname', PARSEDATETIME('2021-12-31-23.59.59','yyyy-MM-dd-HH.mm.ss') , 'AUD', 100);
INSERT INTO accounts (customer_id, account_id, account_type, account_name, balance_date, currency, balance) VALUES (100, 34567, 'savings', 'accname', PARSEDATETIME('2021-12-31-23.59.59','yyyy-MM-dd-HH.mm.ss') , 'AUD', 100);

INSERT INTO transactions (account_id, account_name, transdate, currency, credit_amount, debit_amount, trans_type) VALUES (12345, 'savings', PARSEDATETIME('2021-12-31-23.59.59','yyyy-MM-dd-HH.mm.ss') ,'AUD',20, 0 , 'credit');
INSERT INTO transactions (account_id, account_name, transdate, currency, credit_amount, debit_amount, trans_type) VALUES (23456, 'savings', PARSEDATETIME('2021-12-31-23.59.59','yyyy-MM-dd-HH.mm.ss') ,'AUD',0,10, 'debit');
INSERT INTO transactions (account_id, account_name, transdate, currency, credit_amount, debit_amount, trans_type) VALUES (23456, 'current', PARSEDATETIME('2021-12-31-23.59.59','yyyy-MM-dd-HH.mm.ss') ,'AUD',0,30, 'debit');
INSERT INTO transactions (account_id, account_name, transdate, currency, credit_amount, debit_amount, trans_type) VALUES (34567, 'savings', PARSEDATETIME('2021-12-31-23.59.59','yyyy-MM-dd-HH.mm.ss') ,'AUD',0,80, 'debit');
INSERT INTO transactions (account_id, account_name, transdate, currency, credit_amount, debit_amount, trans_type) VALUES (23456, 'current', PARSEDATETIME('2021-12-31-23.59.59','yyyy-MM-dd-HH.mm.ss') ,'AUD',0,70, 'debit');

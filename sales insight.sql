 -- portfolio project


 select * from transactions
  

  --the currency is on USD and INR make it on INR only 
     UPDATE transactions
SET sales_amount = CASE 
                     WHEN currency = 'USD' THEN sales_amount * 75   --75 inr = 1 dollar in 2020 -2019
                     ELSE sales_amount
                  END,
    currency = CASE 
                        WHEN currency = 'USD' THEN 'INR'
						 when currency='INR\r'  then 'INR' -- there a wrong coulmns with this state 'inr\r'
                        ELSE currency
                     END;
					 -------


					 select * from transactions where sales_amount <= 0

					 -- delete those data because 
					 DELETE FROM transactions
                             WHERE sales_amount <= 0;




							 select * from markets
							 --there is a markets without a  markets_name and zone 
							 delete FROM markets
                         WHERE zone IS NULL OR zone = '';
						 --check the data
						  select * from markets
						   where zone is null

							 
						-- our data is ready for analyzing on power bi

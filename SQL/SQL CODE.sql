-- Selects all columns from the transaction_tbl and orders the results asc
select * 
from transaction_table
order by TransactionID asc;

-- Selects all columns from the transaction_tbl and orders the results dec
select *
from transaction_table
order by TransactionID desc;

-- Selects the distinct values of the Opp_type (Opportunity Type)
select distinct(Opportunity_Type)
from candidate_table;
select Opportunity_Type
from candidate_table
group by Opportunity_Type;
select *
from candidate_table
where Opportunity_Type = 'Commited to pay';
update candidate_table set opportunity_type = 'cloed lost'
where candidateID = 'DMCABJMW220034';
select *
from candidate_table
where Opportunity_Type = '';
update candidate_table set opportunity_type= 'prospect'
where candidateID='ABJCYBSEC00067';

-- Selects the Opp_type and counts the number of candidates (CandID)
select Opportunity_Type,count(*) as 'no of candidattes'
from candidate_table
group by opportunity_type;
-- Selects the Opp_type, Trainin_type, and counts the number of candidates
Select Opportunity_Type, Training_type,count(*) as 'no of candidate'
from candidate_table
group by Opportunity_Type,Training_type;


-- Selects the Opp_type, Trainin_type, and counts the number of candidates,
-- assigning the alias 'total candidate' to the count.
select Opportunity_Type,Training_type,count(*) as 'total candidates'
from candidate_table
group by Opportunity_Type,Training_type;

-- Calculates the sum of Instalm_1 (aliased as 'total of first installment')
select sum(First_Installment) as 'total of First installment'
from transaction_table;

-- Selects all columns from the candidate_tbl and limits the output
select *
from candidate_table
limit 10;

-- Calculates the sum of Instalm_1 for each Promo_code
select Promo_Code,sum(First_Installment) as 'total of First instalment'
from transaction_table
group by Promo_Code
having sum(First_Installment)>100000
order by sum(First_Installment) desc
limit 5;

-- Selects all columns and all rows from the candidate_tbl.
-- Selects all columns and all rows from the transaction_tbl.
-- Performs an INNER JOIN between candidate_tbl (aliased as 'can')
-- and transaction_tbl (aliased as 'trans') using the Loc_ID column as the join key.
-- Selects all columns from the resulting joined table.
select *
from candidate_table
join transaction_table
on candidate_table.CandidateID=transaction_table.CandidateID;

-- Performs an INNER JOIN between candidate_tbl (aliased as 'can')
-- and transaction_tbl (aliased as 'trans') using the CandID column as the join key.
-- Selects specific columns: candidate ID from both tables, Registration date,
-- Opportunity type, Payment date 1, and Installment 1 amount.
select can.CandidateID,Reg_Date,Opportunity_Type,Payment_Date,First_Installment Amount
from candidate_table as can
join transaction_table as tran
on can.CandidateID=tran.CandidateID;

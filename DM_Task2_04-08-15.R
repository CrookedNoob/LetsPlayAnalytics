#Consider the insurance dataset. Take out a single case from this 
#dataset and find out the final claim amount as follows:
#If income is less than 50 and coverage is less than 200 then final
#claim amount is 80% of actual claim amount
#If income is less than 50 and coverage is greater or equal to 200 
#then final claim amount is 90% of actual claim amount
#If income is less than 150 and gender=1 then final claim amount is
#75% of actual claim amount
#If income is less than 150 and gender=0 then final claim amount is 
#90% of actual claim amount
#If none of the above condition is satisfied then final claim amount is
#95% of actual claim amount

insurance
study<-insurance[441,]
study
if(study$income<50 | study$coverage<200)
{
  study$claim_amount=.8*study$claim_amount
} else if(study$income<50 | study$coverage>=200)
{
  study$claim_amount=.9*study$claim_amount
}else if(study$income<150 | study$gender=="1")
{
  study$claim_amount=.75*study$claim_amount
}else if(study$income<150 | study$gender=="0")
{
  study$claim_amount=.9*study$claim_amount
}else study$claim_amount=.95*study$claim_amount

study



#Assume that average price of grocery, milk, fresh, frozen, detergent paper
#and delicatessen are Rs 40, 50, 30, 80, 20 and 100 respectively. Also assume 
#that if 5% discount is given to each product, there will be an increase in sale
#(units) of 3%, 5%, 2.5%, 2%, 2% and 3% of the products in the above order.
#will be 4%, 5.5%, 3.25%, 2.75%, 2.5% and 3.75% of the products mentioned
#above in the same order. Choice of discount is driven by median value of 
#sale of each product. If sale value of one product is less than median sale
#value of that product then no discount. If sale value is within middle and
#3rd quartile, then 5% discount will be given and if the sale is above 3rd quartile,
#then 7% discount will be given. Given these information take a single case from
#wholesale dataset, apply the conditions and find out the % increase in total
#revenue  for that case based on discounts applicable to that case (if any)
wholesale

study<-wholesale[10,]
study

#summary of sale s of each type of items

summary(wholesale$Fresh)
fresh_med<-8504 #for storing median 
fresh_3q<-16930 #for storing 3rd quartile
summary(wholesale$Milk)
milk_med<-3627 #for storing median 
milk_3q<-7190 #for storing 3rd quartile
summary(wholesale$Grocery)
groc_med<-4756 #for storing median 
groc_3q<-10660 #for storing 3rd quartile
summary(wholesale$Frozen)
froze_med<-1526 #for storing median 
froze_3q<-3554 #for storing 3rd quartile
summary(wholesale$Detergents_Paper)
deter_med<-816 #for storing median 
deter_3q<-3922 #for storing 3rd quartile
summary(wholesale$Delicassen)
deli_med<-965.5 #for storing median 
deli_3q<-1820 #for storing 3rd quartile

#price of each types of items
p_groc<-40
p_milk<-50
p_fresh<-30
p_froze<-80
p_deter<-20
p_deli<-100

#for fresh
if(study$Fresh<fresh_med)
  {
  rev_fresh=study$Fresh*p_fresh
  }else if (study$Fresh<fresh_3q | study$Fresh>fresh_med)
   {
   rev_fresh<-1.025*study$Fresh*.95*p_fresh
  }else (study$Fresh>fresh_med)
  {
    rev_fresh<-1.035*study$Fresh*.93*p_fresh
  }
rev_fresh

#for grocery
if(study$Grocery<groc_med)
{
  rev_groc=study$Grocery*p_groc
}else if (study$Grocery<groc_3q | study$Grocery>groc_med)
{
  rev_groc<-1.03*study$Grocery*.95*p_groc
}else (study$Grocery>groc_med)
{
rev_groc<-1.04*study$Grocery*.93*p_fresh
}
rev_groc

#for milk
if(study$Milk<milk_med)
{
  rev_milk=study$Grocery*p_groc
}else if (study$Milk<milk_3q | study$Milk>milk_med)
{
  rev_milk<-1.05*study$Milk*.95*p_milk
}else (study$Grocery>groc_med)
{
rev_milk<-1.055*study$Milk*.93*p_milk
}
rev_milk

#for frozen
if(study$Frozen<froze_med)
{
  rev_froze=study$Frozen*p_froze
}else if (study$Frozen<froze_3q | study$Frozen>froze_med)
{
  rev_froze<-1.02*study$Frozen*.95*p_froze
}else (study$Frozen>froze_med)
{
rev_froze<-1.0275*study$Frozen*.93*p_froze
}
rev_froze

#for detergent paper
if(study$Detergents_Paper<deter_med)
{
  rev_deter=study$Detergents_Paper*p_deter
}else if (study$Detergents_Paper<deter_3q | study$Detergents_Paper>deter_med)
{
  rev_deter<-1.02*study$Detergents_Paper*.95*p_deter
}else (study$Detergents_Paper>deter_med)
{
rev_deter<-1.025*study$Detergents_Paper*.93*p_deter
}
rev_deter

#for delicatessen
if(study$Delicassen<deli_med)
{
  rev_deli=study$Delicassen*p_deli
}else if (study$Delicassen<deli_3q | study$Delicassen>deli_med)
{
  rev_deli<-1.03*study$Delicassen*.95*p_deli
}else (study$Delicassen>deli_med)
{
rev_deli<-1.0375*study$Delicassen*.93*p_deli
}
rev_deli

#revenue of all the items in a data frame
revenue<-data.frame(rev_groc, rev_milk, rev_fresh,rev_froze,rev_deter,rev_deli)
revenue

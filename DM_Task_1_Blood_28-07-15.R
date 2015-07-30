blood<-read.csv("E:\\Datasets\\blood.csv") #read external .csv file
blood

#Find out mean of WBC, RBC and Chol
#for the entire dataset. (Hint: look at mean() function)

#for mean of WBC
blood$WBC<-as.character(blood$WBC)
blood$WBC<-as.numeric(blood$WBC)
blood
meanWBC<-mean(blood$WBC,na.rm=TRUE)
meanWBC

#for mean of RBC
blood$RBC<-as.character(blood$RBC)
blood$RBC<-as.numeric(blood$RBC)
blood
meanRBC<-mean(blood$RBC,na.rm=TRUE)
meanRBC

#for mean of CHOL
blood$Chol<-as.character(blood$Chol)
blood$Chol<-as.numeric(blood$Chol)
blood
meanChol<-mean(blood$Chol,na.rm=TRUE)
meanChol

#Find out mean of WBC, RBC for each blood group

#for mean and median wrt blood group - A,B,AB and O
#For RBC
RBC_A_mean<-mean(subset(blood,subset=BloodGroup=="A",select=("RBC"))$RBC,na.rm=TRUE)
RBC_A_mean
RBC_B_mean<-mean(subset(blood,subset=BloodGroup=="B",select=("RBC"))$RBC,na.rm=TRUE)
RBC_B_mean
RBC_AB_mean<-mean(subset(blood,subset=BloodGroup=="AB",select=("RBC"))$RBC,na.rm=TRUE)
RBC_AB_mean
RBC_O_mean<-mean(subset(blood,subset=BloodGroup=="O",select=("RBC"))$RBC,na.rm=TRUE)
RBC_O_mean



#For WBC
WBC_A_mean<-mean(subset(blood,subset=BloodGroup=="A",select=("WBC"))$WBC,na.rm=TRUE)
WBC_A_mean
WBC_B_mean<-mean(subset(blood,subset=BloodGroup=="B",select=("WBC"))$WBC,na.rm=TRUE)
WBC_B_mean
WBC_AB_mean<-mean(subset(blood,subset=BloodGroup=="AB",select=("WBC"))$WBC,na.rm=TRUE)
WBC_AB_mean
WBC_O_mean<-mean(subset(blood,subset=BloodGroup=="O",select=("WBC"))$WBC,na.rm=TRUE)
WBC_O_mean



#Find out median of WBC and RBC and find out mean of WBC and RBC with respect to blood 
#group where WBC and RBC values are above the respective median values


#for WBC
med_WBC<-median(blood$WBC,na.rm=TRUE)
med_WBC
WBC_A_med<-mean(subset(blood,subset=BloodGroup=="A"|WBC>med_WBC,select=("WBC"))$WBC,na.rm=TRUE)
WBC_A_med
WBC_B_med<-mean(subset(blood,subset=BloodGroup=="B"|WBC>med_WBC,select=("WBC"))$WBC,na.rm=TRUE)
WBC_B_med
WBC_AB_med<-mean(subset(blood,subset=BloodGroup=="AB"|WBC>med_WBC,select=("WBC"))$WBC,na.rm=TRUE)
WBC_AB_med
WBC_O_med<-mean(subset(blood,subset=BloodGroup=="O"|WBC>med_WBC,select=("WBC"))$WBC,na.rm=TRUE)
WBC_O_med

#for RBC
med_RBC<-median(blood$RBC,na.rm=TRUE)
med_RBC
RBC_A_mean<-mean(subset(blood,subset=BloodGroup=="A"|RBC>med_RBC,select=("RBC"))$RBC,na.rm=TRUE)
RBC_A_mean
RBC_B_mean<-mean(subset(blood,subset=BloodGroup=="B"|RBC>med_RBC,select=("RBC"))$RBC,na.rm=TRUE)
RBC_B_mean
RBC_AB_mean<-mean(subset(blood,subset=BloodGroup=="AB"|RBC>med_RBC,select=("RBC"))$RBC,na.rm=TRUE)
RBC_AB_mean
RBC_O_mean<-mean(subset(blood,subset=BloodGroup=="O"|RBC>med_RBC,select=("RBC"))$RBC,na.rm=TRUE)
RBC_O_mean


#Find out all the cases where WBC count is within 20% limits of mean WBC count value 
#(i.e WBC_mean +/- 20% of WBC_mean)

med_WBC<-median(blood$WBC,na.rm=TRUE)
med_WBC
WBC_l<-subset(blood,subset=WBC<(1.2*med_WBC)&WBC>(0.8*med_WBC),select=("WBC"))
WBC_l




#if (med_RBC<RBC_A_med)
#{
# print("RBC_A_med",RBC_A_med)
#}
#if(med_RBC<RBC_B_med)
#{
#  print("RBC_B_med",RBC_B_med)
#}
#if(med_RBC<RBC_O_med)
#{
#  print("RBC_O_med")
#  RBC_O_med
#}









  

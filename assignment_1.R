#Create a vector of 100 random numbers taken from 1 to 10.
#Arbitrarily choose any number from within the vector, multiply the same 
#with another random number (any number between 10 and 20) and replace the old number
#with this new multiplication value.

a<-runif(100,1,10) #Use runif() to generate 100 random variables (decimals or fractions)
#within the range 1-10
a
a[39]<-a[39]*15
a[39]
a

#Generate two vectors of numbers (random numbers between 1 and 20) having equal
#length (length>10) and add the two vectors in this way: highest of first vector
#added to lowest of second vector, second highest of 1st vector added to highest
#of second vector, third highest of 1st vector added to 2nd lowest of 2nd vector
#and so on.
v1<-sample(1:20,12,replace=FALSE)
v1<-sort(v1)
v1
v2<-sample(1:20,12,replace=FALSE)
v2<-sort(v2)
v2
v3<-c(1:12)
for(i in 1:12)
{
  v3[i]=v1[13-i]+v2[i]
}
v3


#Generate two vectors (having length 20 each) of normally distributed numbers
#of mean 10 and std dev 3. Join them to form a data frame and add a new variable
#to this data frame which will show the confidence interval between the two 
#numbers taken from the two vectors [ e.g. first value of vector 1 is (say)
#11.1 and 1st value of vector 2 is (say) 9.71. Then the probability interval
#is 0.1815706 considering mean as 10 and std dev as 3]







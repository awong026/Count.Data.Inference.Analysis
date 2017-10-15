#Assignment: Count Data Inference Analysis 

##################################################################################################################

#Question 1: Nuclear Mishap. n = 150. Quesiton: "Should there have been a full evacuation of the immediaate area?"
#Test wheter the distance from the accident and evacuation attitudes are associated. 

##################################################################################################################

#Create matrix from data given in word file by teacher
Evac = matrix(c(7,11,10,5,4,29,9,11,13,6,6,39), 2, 6, byrow = T, dimnames = list(Full.Evac = c("yes", "no"), Distance = c("1-3", "4-6", "7-9", "10-12", "13-15", "15+")))
Evac


chisq.test(Evac) #pvalue = .9939

#Conculsion:
#Used chi square test to whether the distance from the accident and evacuation attitudes are associated. 
#I got a  p value of .9939 which means we can't reject null that accident and evacuation attitudes are independent. 

####################################################################################################

#Question 2: 700 women's birthday's Are the Birthday's spread uniformly? (homogenatility)

####################################################################################################

#Create matrix from data given in word file by teacher
Bday = matrix(c(66,63,64,48,64,74,70,59,54,51,45,42), 12, 1, dimnames = list(Month = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug","Sept", "Oct", "Nov", "Dec"), "count"))
Bday

chisq.test(Bday, correct = F) #pvalue is .04925. We reject that Bday is spread uniformily. 
 fisher.test(Bday)

plot(Bday)

#Conclusion:
#Used chi square test to check for homogeneity in number of birthdays by month for the 700 women who gave birth at the University Hospital of Basel, Switzerland. 
#pvalue is .04925, which means  we reject that birthday count  is spread uniformly at alpha = .05. 
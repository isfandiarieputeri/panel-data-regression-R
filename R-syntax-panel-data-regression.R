library(foreign)
library(plm)

dataset=read.delim('clipboard')
dataset

#Uji Hausmann

#Model 1
gf=NULL
gr=NULL
gf=plm(P1~TPT+RLS+PPK+UMK,data=dataset,model="within")
gr=plm(P1~TPT+RLS+PPK+UMK,data=dataset,model="random")
phtest(gf,gr)

#Model 2
gf=NULL
gr=NULL
gf=plm(P1~TPT+RLS+PPK,data=dataset,model="within")
gr=plm(P1~TPT+RLS+PPK,data=dataset,model="random")
phtest(gf,gr)

#Model 3
gf=NULL
gr=NULL
gf=plm(P1~TPT+RLS+UMK,data=dataset,model="within")
gr=plm(P1~TPT+RLS+UMK,data=dataset,model="random")
phtest(gf,gr)

#Model 4
gf=NULL
gr=NULL
gf=plm(P1~TPT+PPK+UMK,data=dataset,model="within")
gr=plm(P1~TPT+PPK+UMK,data=dataset,model="random")
phtest(gf,gr)

#Model 5
gf=NULL
gr=NULL
gf=plm(P1~RLS+PPK+UMK,data=dataset,model="within")
gr=plm(P1~RLS+PPK+UMK,data=dataset,model="random")
phtest(gf,gr)

#Model 6
gf=NULL
gr=NULL
gf=plm(P1~TPT+RLS,data=dataset,model="within")
gr=plm(P1~TPT+RLS,data=dataset,model="random")
phtest(gf,gr)

#Model 7
gf=NULL
gr=NULL
gf=plm(P1~TPT+UMK,data=dataset,model="within")
gr=plm(P1~TPT+UMK,data=dataset,model="random")
phtest(gf,gr)

#Model 8
gf=NULL
gr=NULL
gf=plm(P1~PPK+UMK,data=dataset,model="within")
gr=plm(P1~PPK+UMK,data=dataset,model="random")
phtest(gf,gr)

#Model 9
gf=NULL
gr=NULL
gf=plm(P1~RLS+UMK,data=dataset,model="within")
gr=plm(P1~RLS+UMK,data=dataset,model="random")
phtest(gf,gr)

#Model 10
gf=NULL
gr=NULL
gf=plm(P1~RLS+PPK,data=dataset,model="within")
gr=plm(P1~RLS+PPK,data=dataset,model="random")
phtest(gf,gr)

#Model 11
gf=NULL
gr=NULL
gf=plm(P1~TPT+PPK,data=dataset,model="within")
gr=plm(P1~TPT+PPK,data=dataset,model="random")
phtest(gf,gr)

#Model 12
gf=NULL
gr=NULL
gf=plm(P1~TPT,data=dataset,model="within")
gr=plm(P1~TPT,data=dataset,model="random")
phtest(gf,gr)

#Model 13
gf=NULL
gr=NULL
gf=plm(P1~RLS,data=dataset,model="within")
gr=plm(P1~RLS,data=dataset,model="random")
phtest(gf,gr)

#Model 14
gf=NULL
gr=NULL
gf=plm(P1~PPK,data=dataset,model="within")
gr=plm(P1~PPK,data=dataset,model="random")
phtest(gf,gr)

#Model 15
gf=NULL
gr=NULL
gf=plm(P1~UMK,data=dataset,model="within")
gr=plm(P1~UMK,data=dataset,model="random")
phtest(gf,gr)

#Uji Breusch-Pagan

#Model 1
g=NULL
g=plm(P1~TPT+RLS+PPK+UMK,data=dataset,model="random")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")

#Model 2
g=NULL
g=plm(P1~TPT+RLS+PPK,data=dataset,model="within")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")

#Model 3
g=NULL
g=plm(P1~TPT+RLS+UMK,data=dataset,model="within")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")

#Model 4
g=NULL
g=plm(P1~TPT+PPK+UMK,data=dataset,model="within")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")

#Model 5
g=NULL
g=plm(P1~RLS+PPK+UMK,data=dataset,model="random")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")

#Model 6
g=NULL
g=plm(P1~TPT+RLS,data=dataset,model="within")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")

#Model 7
g=NULL
g=plm(P1~TPT+UMK,data=dataset,model="within")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")

#Model 8
g=NULL
g=plm(P1~PPK+UMK,data=dataset,model="within")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")

#Model 9
g=NULL
g=plm(P1~RLS+UMK,data=dataset,model="within")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")

#Model 10
g=NULL
g=plm(P1~RLS+PPK,data=dataset,model="within")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")

#Model 11
g=NULL
g=plm(P1~TPT+PPK,data=dataset,model="within")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")

#Model 12
g=NULL
g=plm(P1~TPT,data=dataset,model="within")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")

#Model 13
g=NULL
g=plm(P1~RLS,data=dataset,model="within")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")

#Model 14
g=NULL
g=plm(P1~PPK,data=dataset,model="within")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")

#Model 15
g=NULL
g=plm(P1~UMK,data=dataset,model="within")
plmtest(g,effect="twoways",type="bp")
plmtest(g,effect="individual",type="bp")
plmtest(g,effect="time",type="bp")


#ESTIMASI MODEL UJI WALD

#Model 1
g1=NULL
g1=plm(P1~TPT+RLS+PPK+UMK,data=dataset,model="random",effect="individual")
summary(g1)

g1a=NULL
g1a=plm(P1~TPT+PPK+UMK,data=dataset,model="random",effect="individual")
summary(g1a)

#Model 2
g2=NULL
g2=plm(P1~TPT+RLS+PPK,data=dataset,model="within",effect="twoways")
summary(g2)

g2a=NULL
g2a=plm(P1~TPT+PPK,data=dataset,model="within",effect="twoways")
summary(g2a)

g2b=NULL
g2b=plm(P1~PPK,data=dataset,model="within",effect="twoways")
summary(g2b)

#Model 3
g3=NULL
g3=plm(P1~TPT+RLS+UMK,data=dataset,model="random",effect="individual")
summary(g3)

#Model 4
g4=NULL
g4=plm(P1~TPT+PPK+UMK,data=dataset,model="random",effect="individual")
summary(g4)

#Model 5
g5=NULL
g5=plm(P1~RLS+PPK+UMK,data=dataset,model="within",effect="individual")
summary(g5)

g5a=NULL
g5a=plm(P1~RLS+PPK,data=dataset,model="within",effect="individual")
summary(g5a)

g5b=NULL
g5b=plm(P1~PPK,data=dataset,model="within",effect="individual")
summary(g5b)

#Model 6
g6=NULL
g6=plm(P1~TPT+RLS,data=dataset,model="within",effect="twoways")
summary(g6)

g6a=NULL
g6a=plm(P1~TPT,data=dataset,model="within",effect="twoways")
summary(g6a)

#Model 7
g7=NULL
g7=plm(P1~TPT+UMK,data=dataset,model="random",effect="individual")
summary(g7)

#Model 8
g8=NULL
g8=plm(P1~PPK+UMK,data=dataset,model="within",effect="individual")
summary(g8)

g8a=NULL
g8a=plm(P1~PPK,data=dataset,model="within",effect="individual")
summary(g8a)

#Model 9
g9=NULL
g9=plm(P1~RLS+UMK,data=dataset,model="random",effect="individual")
summary(g9)

#Model 10
g10=NULL
g10=plm(P1~RLS+PPK,data=dataset,model="within",effect="twoways")
summary(g10)

g10a=NULL
g10a=plm(P1~PPK,data=dataset,model="within",effect="twoways")
summary(g10a)

#Model 11
g11=NULL
g11=plm(P1~TPT+PPK,data=dataset,model="within",effect="individual")
summary(g11)

g11a=NULL
g11a=plm(P1~PPK,data=dataset,model="within",effect="individual")
summary(g11a)

#Model 12
g12=NULL
g12=plm(P1~TPT,data=dataset,model="random",effect="twoways")
summary(g12)

#Model 13
g13=NULL
g13=plm(P1~RLS,data=dataset,model="within",effect="twoways")
summary(g13)

#Model 14
g14=NULL
g14=plm(P1~PPK,data=dataset,model="within",effect="individual")
summary(g14)

#Model 15
g15=NULL
g15=plm(P1~UMK,data=dataset,model="random",effect="individual")
summary(g15)


#Uji Korelasi Serial

library(lmtest)
#Model 1a atau 4
g1a=g4=plm(P1~TPT+PPK+UMK,data=dataset,model="random",effect="individual")
pbgtest(g1a,order=2)

#Model 2b atau 10a
g2b=g10a=plm(P1~PPK,data=dataset,model="within",effect="twoways")
pbgtest(g2b,order=2)

#Model 3
g3=plm(P1~TPT+RLS+UMK,data=dataset,model="random",effect="individual")
pbgtest(g3,order=2)

#Model 5b, 8a, 11a, 14
g5b=g8a=g11a=g14=plm(P1~PPK,data=dataset,model="within",effect="individual")
pbgtest(g5b,order=2)

#Model 7
g7=plm(P1~TPT+UMK,data=dataset,model="random",effect="individual")
pbgtest(g7,order=2)

#Model 9
g9=plm(P1~RLS+UMK,data=dataset,model="random",effect="individual")
pbgtest(g9,order=2)

#Model 15
g15=plm(P1~UMK,data=dataset,model="random",effect="individual")
pbgtest(g15,order=2)

#Uji Heterocedasticity

#Model 1a atau 4
g1a=g4=plm(P1~TPT+PPK+UMK,data=dataset,model="random",effect="individual")
coeftest(g1a,vcoc=vcocHC)

#Model 2b atau 10a
g2b=g10a=plm(P1~PPK,data=dataset,model="within",effect="twoways")
coeftest(g2b,vcoc=vcocHC)

#Model 3
g3=plm(P1~TPT+RLS+UMK,data=dataset,model="random",effect="individual")
coeftest(g3,vcoc=vcocHC)

#Model 5b, 8a, 11a, 14
g5b=g8a=g11a=g14=plm(P1~PPK,data=dataset,model="within",effect="individual")
coeftest(g5b,vcoc=vcocHC)

#Model 7
g7=plm(P1~TPT+UMK,data=dataset,model="random",effect="individual")
coeftest(g7,vcoc=vcocHC)

#Model 9
g9=plm(P1~RLS+UMK,data=dataset,model="random",effect="individual")
coeftest(g9,vcoc=vcocHC)

#Model 15
g15=plm(P1~UMK,data=dataset,model="random",effect="individual")
coeftest(g15,vcoc=vcocHC)

#Output Ekstrak
g1a=NULL
g1a=plm(P1~TPT+PPK+UMK,data=dataset,model="random",effect="individual")
ranef(g1a,type="dmean")

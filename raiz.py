import sys, math

a=input ("a:")
b=input ("b:")
c=input ("c:")
d=(b^2)-(4*a*c) # Mário Meyer
# d=((b^2)-4*a)*c Esta errado esta linha, usar a linha superior.
if d<0 :
        print ("Delta negativo, raiz impossivel de ser extraida.")
        sys.exit()

else : print "Delta: %s." % d
        m1=math.sqrt(d)
        x1=(-b+m1)/(2*a)
        x2=(-b-m1)/(2*a)
        print "Raiz ~ X1= %s." % x1
        print "Raiz ~ X2= %s." % x2
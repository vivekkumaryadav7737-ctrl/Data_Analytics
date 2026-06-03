"""
Python operators
a+b => a,b  (operands) + => operator

1- Arithmetic Operator
+,-,*,/,%, //,**
a=7
b=5
print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a%b)    # modulus=>to calculate the remainder
print(11%4)
print(a//b)   #floor division/truncation divide and remove decimal part for quotient.
print(a**b)   #exponential b as the power on a

2- Relational/Conditional Operator  (return Boolean answer which means (T/F)
>,<,>=,<=,==,!=

a=7
b=5
print(a>b)   # > is greater than
print(a<b)   # < is less than
print(a>=b)  # >= is greater than or eqaul to 
print(a<=b)  # <= is less than or  equal to 
print(a!=b)  # != is not equal to
print(a==b)  # == is equal to

3- Assignment Operators
   =,+=,-=,*=,etc
a=10   #( a is assigned to 10)
a+=1   # => a=a+1
a*=2   # => a=a*2
print(a)

4-Membership Operator   checks existence
   in, not in           return boolean answer (T/F)
a="aman"
b="amankumar"
print(a in b)
print("ankum" in b)
print("ka" in b)        
print("ka" not in b)

a=[1,2,3]
b=[1,2,3]
print(a in b)

a=[1,2,3]
b=[1,2,{1,2,3],3]
print(a in b)

5-Identity Operator (Check exact match)
  is, is not  (return boolean answer (T/F)
a="aman"
b="amankumar"
c="aman"
print(a is b)
print(a is c)
print(a is not b)

a=[1,2,3]
b=[1,2,3]
print(a is b)   false

6-Logical Operators
and  min 2 condn  => if both conditns are T, final result will be T, otherwise f
or   if both conds are F, final result F, otherwise T
not  works with only one and once condn/input.
also know as inverter operator

print(10>5 and 10>50)
print(10>5 and 10>7)
print(10>70 and 10>50)


print(10>5 or 10>50)
print(10>5 or 10>7)
print(10>70 or 10>50)

print(not 10>5)
print(not False)
print(not True)

"""








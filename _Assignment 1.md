
Ryan Marinelli
Assignment 1 


```python
valueList = [1, 2, 4, 10, 12, 117, 1244]
```


```python
sum = 0.0
```


```python
i = 0
for i in valueList:
    sum += sum + i
```

Question One Part A


```python
print(sum)
```

    1798.0
    

Question One Part B 



```python
mean = sum/(len(valueList))
print(mean)
```

    256.85714285714283
    

Question One Part C 



```python
product = valueList[0]
for i in valueList:
    product *= i
    
```


```python
print(product)
```

    139726080
    

Question 2 Part A


```python
secondList = [3, 2, 3, 3, 3, 2, 8, 2, 2, 126]
thirdList = [7, 267, 4, 2, 5, 319, 5, 6, 713, 3]
```


```python
def getSum (list):
    sum = 0.0
    
    for i in list:
        sum += i
    return(sum)

def getMean(list):
   sum = getSum(list)
   n = len(list)
   return(sum/n)

def getProduct(list):
    product = 1
    for i in list:
        product *= i
    return(product)
    
```


```python
print(getSum(secondList))
```

    154.0
    


```python
print(getSum(thirdList))
```

    1331.0
    


```python
print(getMean(secondList))
```

    15.4
    


```python
print(getMean(thirdList))
```

    133.1
    


```python
print(getProduct(secondList))
```

    1306368
    


```python
print(getProduct(thirdList))
```

    1530354394800
    

Question 3


```python
numList = range(1,100)
```


```python
for i in numList:
    if i % 3 == 0 and i % 5 == 0:
        print("Fizz Buzz")
    
    elif (i % 3 == 0):
        print("Fizz")
        
    elif (i % 5 == 0):
        print("Buzz")
        
    else:
        print(str(i))
```

    1
    2
    Fizz
    4
    Buzz
    Fizz
    7
    8
    Fizz
    Buzz
    11
    Fizz
    13
    14
    Fizz Buzz
    16
    17
    Fizz
    19
    Buzz
    Fizz
    22
    23
    Fizz
    Buzz
    26
    Fizz
    28
    29
    Fizz Buzz
    31
    32
    Fizz
    34
    Buzz
    Fizz
    37
    38
    Fizz
    Buzz
    41
    Fizz
    43
    44
    Fizz Buzz
    46
    47
    Fizz
    49
    Buzz
    Fizz
    52
    53
    Fizz
    Buzz
    56
    Fizz
    58
    59
    Fizz Buzz
    61
    62
    Fizz
    64
    Buzz
    Fizz
    67
    68
    Fizz
    Buzz
    71
    Fizz
    73
    74
    Fizz Buzz
    76
    77
    Fizz
    79
    Buzz
    Fizz
    82
    83
    Fizz
    Buzz
    86
    Fizz
    88
    89
    Fizz Buzz
    91
    92
    Fizz
    94
    Buzz
    Fizz
    97
    98
    Fizz
    

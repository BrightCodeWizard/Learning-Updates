MIT
Iteration
 Iteration in Python refers to the process of repeating a process multiple time. It's like telling the computer, “Keep doing this until I say stop” or “Do this for every item in a collection.”

Way to perform iteration in python  
While loops: this loop keeps running as a condition is true. 
Examples


Control flow: while loops 
Control flow refers to the order in which a program executes its instructions. 
It iterates through numbers in a sequence. 

For loops: this loop is used to iterate over a sequence (like a list, string, or rage)


      #Example 1
    where = input("You are in the Lost Forest. Go left or right? ")
    while where == "right":
      where = input("You are in the Lost Forest. Go left or right? ")
    print("You got out of the lost forest! \o/")
    
    
    #Example 2
    n =  int(input("Enter a non-negative integer:  "))
    while n > 0:
       print('x')
    n = n-1
    
    
    while True:
        print("nooooooo")
    
    # You Try It 1:
    # Expand this code to show a sad face when the user entered
    # the while loop more than 2 times. Hint: use a counter
    
    where = input("Go left or right? ")
    counter = 0
    while where == "right":
        counter = counter + 1
        if counter > 2:
            print(":(")
        where = input("Go left or right? ")
    print("You got out!")




      #YOU TRY IT!
     # What do these print?
    for i in range (1, 4, 1):
        print(i)
    for j in range(1, 4, 2):
        print(j*2)
    for me in range(4, 0, -1):
        print("$" * me)
    
    
    
    
    
    
    # Fix this code to use variables start and end in the range, to get
     #the total sum between and including those values.
    #For example, if start=3 and end=5 then the sum should be 12
    
    mysum = 0
    start = 1
    end = 3
    for i in range(start, end+1):
        mysum+=i
    print(mysum)



    #with while loops
    x = 6
    i = 1
    one = 1
    while i <= x:
        one *= 1
        i += 1
    print(f'(x) one is {one}')
    
    
    ##with for loops
    two = 1
    for i in range(1, x+1, 1):
        two*=i
        print(f'{x} two is {two}')
    
    
      #examples 0ne
    mysum = 0
    for i in range(10):
        mysum += i
    print(mysum)
    
    
    #example two
    mysum = 0
    for i in range(7, 10):
        mysum += i
    print(mysum)
    
    
    #example three
    mysum = 0
    for i in range(5, 11, 2):
        mysum += i
        break
        if mysum == 5:
            break
            mysum += 1
    print(mysum)

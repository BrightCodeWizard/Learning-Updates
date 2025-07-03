**MIT **





Floats and approximation methods. 



Floats: is a datatype use to store represent real number. It is used to represent decimal number. e.g. 3.14 or -0.5.  in binary, not all decimal fraction can be represented exactly. 



Binary Representation 


•	Integers have clean binary representations. 
•	Fractions are harder: 0.1 in base 10 is infinite in binary to rounding errors. 





Why this Matters 
•	Errors are can be built up when using floats. 






Moral of the story 
•	Never use == with floats
•	Instead, check if values are within a small epsilon difference 




Approximation Methods
Estimation values like √x when exact computation is not possible. 







Algorithm 
•	Start with a guess. 
•	Keep increasing by a small amount(increment) until guess**2 is “close enough” to x. 
•	Using epsilon (e.g. 0.01) to determine closeness 










Overshooting issue 
•	You may go past the correct values without hitting the epsilon
•	Fix 




     
        
        # float
        # Examples
        
        X = 0
           for i  in range(10):
               X += 0.1
             print(X == 1)
               print(X)
        
            # moral of story
            abs(x - y) < epsilon
        
            # approximation methods
           y = 36
           epsilon = 0.01
           guess = 0.0
           increment =0.0001
           num_guesses = 0
           while abs(guess**2 - y) > epsilon:
               guess += increment
               num_guesses += 1
            print(f'{guess} is close to square root of {x}')
        
        
            #fix
            while abs(guess**2 - x) >= epsilon and guess**2 <= x:
        
        
        
            #example
        
            x float(input('Enter a decimal number between 0 and 1: '))
        
        
            p = 0
            while ((2**p)*x)% 1 !=0:
                print(f'Remainder = {str((2**p)*x - int(2**p))}')
                p+1
        
                num = int(x*(2**p))
        
                result ="
                if num == 0:
                    result = '0'
                while num > 0:
                    result = str(num%2) + result
                    num = num//2
        
                for i in range(p-len(result)):
                    result = '0' + result
        
        
                result = result[0:-p] + result[-p]
                print(f'The binary respesentation of decimal {str(x)} is {str(result)}')
        
        
        
        
            #Approximaton by epsilon increments
        
            try with 36, 24, 12345
                x = 36
            epsilon = 0.01
            num_guesses = 0
            guess = 0.0
            increment = 0.0001
            while abs(guess**2 - x) > epsilon:
                guess += increment
                num_guesses = +=1
            print(f'num_guesses ={num_guesses}')
            print(f'{guess} is close to square root of {x}')
        
        
        
            #Assignment
            # if you are incrementing from 0 by 0.022, how many increments
            # can you do before you do before you get a floating point error
            x = 0
            count = 20
            for i in range(count):
                x+=0.022
                print(x)
        
        
        

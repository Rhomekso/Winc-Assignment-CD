# return the fibonacci sequence up to n
# formula: Fn = Fn-1 + Fn-2
# example: 0,1,1,2,3,5,8,13,21,34,55


def getfibonacci(n: int):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return getfibonacci(n - 1) + getfibonacci(n - 2)
    
fiboutput = [
    getfibonacci(0),
    getfibonacci(1),
    getfibonacci(2),
    getfibonacci(3),
    getfibonacci(4),
    getfibonacci(5),
    getfibonacci(6),
    getfibonacci(7),
    getfibonacci(8),
    getfibonacci(9),
    getfibonacci(10)
]

print(fiboutput)
print(fiboutput == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55])

### John Hopkins at Coursera: R programming
## Assignment: Caching the Inverse of a Matrix



### Example of use

```

> m = makeCacheMatrix()
> m$set(matrix(c(2,3,4,4,3,2,0,1,0), nrow=3, ncol = 3))
> m$get()
     [,1] [,2] [,3]
[1,]    2    4    0
[2,]    3    3    1
[3,]    4    2    0
> cacheSolve(m)
           [,1] [,2]       [,3]
[1,] -0.1666667    0  0.3333333
[2,]  0.3333333    0 -0.1666667
[3,] -0.5000000    1 -0.5000000
> cacheSolve(m)
           [,1] [,2]       [,3]
[1,] -0.1666667    0  0.3333333
[2,]  0.3333333    0 -0.1666667
[3,] -0.5000000    1 -0.5000000
> 
```
Second call to cacheSolve shows it does not recalculate because it was previosuly inverted 


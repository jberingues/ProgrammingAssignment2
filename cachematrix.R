## John Hopkins at Coursera: R programming
## Assignment: Caching the Inverse of a Matrix

#*****************************************************************************
# This function creates a special "matrix" object that can cache its inverse.
# It has 4 functions:
#    set(matrix): It sets the matrix on the cache 
#    get(): It returns de matrix
#    inverse(): It calculates the inverse of the matrix stored
#    solved(): It returns TRUE if the matrix has been inversed or FALSE if not
#*****************************************************************************
makeCacheMatrix <- function(x = matrix()) {
    MatrixSolved <- FALSE
    set <- function(y){
        x <<- y
        MatrixSolved = FALSE
    }
    get <- function() x
    inv <- function(){
        x <<- solve(x)
        MatrixSolved <<- TRUE
    }
    sol <- function() MatrixSolved
    list(set = set, get = get, inverse = inv, solved = sol)
}

#*****************************************************************************
# This function computes the inverse of the special "matrix" created by 
# makeCacheMatrix above. If the inverse has already been calculated 
# (and the matrix has not changed), then cacheSolve retrieves the inverse 
# from the cache.
#*****************************************************************************
cacheSolve <- function(x, ...) {
    if (!x$solved()){
        x$inverse()
        return(x$get())
    }else return(x$get())
}

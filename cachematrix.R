## These two functions stores a matrix and cache its inverse. 

## the first functinon, makeCacheMatrix, creates a special "matrix" object 
## that can cache its inverse
##      (1) set the value of the matrix
##      (2) get the value of the matrix
##      (3) set the value of the inverse
##      (4) get the value of the inverse 

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        
        ## set is a sub-function that changes the matrix stored in makeCacheMatrix
        set <- function(y) {
                x <<- y
                s <<- NULL
        } 
        ## get is a sub-function that returns matrix x
        get <- function() x
        ## setInverse stores the value of an input inverse matrix, 'solve', into makeCacheMatrix
        setInverse <- function(solve) s <<- solve
        ## getInverse returns the inverse matrix, 'solve', stored in makeCacheMatrix
        getInverse <- function() s
        ## stores the four sub-functions in a list
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## The next function, cacheSolve, computes the inverse of the special "matrix" returned by
## makeCacheMatrix. If the inverse has already been calculated (and the matrix hasn't changed),
## then cacheSolve retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## assign Inverse value in makeCacheMatrix to s
        s <- x$getInverse()
        ## test to see if x is NULL. If it is not, return cached value and 
        ## bypass solve() calculation
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setInverse(s)
        s
}

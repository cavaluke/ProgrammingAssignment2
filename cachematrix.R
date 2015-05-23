## These two functions stores a matrix and cache its inverse. 

## the first functinon, makeCacheMatrix, creates a special "matrix" object 
## that can cache its inverse
##      (1) set the value of the matrix
##      (2) get the value of the matrix
##      (3) set the value of the inverse
##      (4) get the value of the inverse 

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(solve) s <<- solve
        getInverse <- function() s
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## The next function, cacheSolve, computes the inverse of the special "matrix" returned by
## makeCacheMatrix. If the inverse has already been calculated (and the matrix hasn't changed),
## then cacheSolve retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

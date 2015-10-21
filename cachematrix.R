## Put comments here that give an overall description of what your
## functions do
## The overall objective of this program is to cache the inverse matrix.
## so we can retrieve the value from cache without recalculating 
## If there is a change in the matrix value then the inverse will be performed again.


## Write a short comment describing this function
## This function provide list of functions to store and retrieve inverse matrix value
## Provide getter and setter method to cache the value

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInvmatrix <- function(Invmatrix) m <<- Invmatrix
        getInvmatrix <- function() m
        list(set = set, get = get,
             setInvmatrix = setInvmatrix,
             getInvmatrix = getInvmatrix) 
}


## Write a short comment describing this function
## Checks whether values is already there is cache
## If yes, then retrieve the value
## If no, calculate inverse matrix and store in cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInvmatrix()
        if(!is.null(m)) {
                message("getting cached matrix data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setInvmatrix(m)
        m
}

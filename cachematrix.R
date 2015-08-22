## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL 
        setmatrix <- function(y) {  ## sets the matrix and clears the inverse matrix if cached
                x <<- y
                m <<- NULL
        }
        getmatrix <- function() x  ##  returns matrix
        setmatrixInv <- function(imat) m <<- imat  ## sets the inverse matrix sent as argument
        getmatrixInv <- function() m ## returns the inverse matrix

        list(setmatrix = setmatrix , getmatrix = getmatrix ,
             setmatrixInv = setmatrixInv ,
             getmatrixInv = getmatrixInv )

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         im <- x$getmatrixInv()  ## if not cached returns null.
        if(!is.null(im )) {
                message("getting cached data")
                return(im)
        }
        data <- x$getmatrix()
        im <- solve(data, ...)
        x$setmatrixInv(im)  ## once calculated cache it.
        im 

}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Below Functon checks if the prior calculated value exists or not and the decide to return value from cache or calculate inverse

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
     set <- function(y) {
         x <<- y
         m <<- NULL
     }
     get <- function() x
     setinverse <- function(inverse) m <<- inverse
     getinverse <- function() m
     list(set = set, get = get,
          setinverse = setinverse,
          getinverse = getinverse)
}


## Write a short comment describing this function
## Below Functon actually calculate the inverse of SQUARE Matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		  m <- x$getinverse()
     if(!is.null(m)) {
         message("getting cached data")
         return(m)
     }
     data <- x$get()
     m <- solve(data, ...)
     x$setinverse(m)
     m
		
}

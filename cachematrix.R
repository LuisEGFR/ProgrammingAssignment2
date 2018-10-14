## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        ##This is to see the matrix
         set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
        ##To obtain the matrix
        get <- function() {
                m
  }             ##So we can see the inverse of the matrix
          setInverse <- function(inverse) {
    i <<- inverse
  }
        getInverse <- function() {
                i
  }     ##So it returns a list of the methods
        list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ##Returns the matrix that is the inverse of x
         m <- x$getInverse()
        ##If the matrix is already set, it returns it
          if( !is.null(m) ) {
      message("getting cached data")
      return(m)
    }
        ##It obtains the matrix of our object
     data <- x$get()
        ##Use matrix multiplication to obtain the inverse
         m <- solve(data) %*% data
        ##Just set the inverse to the object
         x$setInverse(m)
         m   
}

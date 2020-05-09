## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        
  a <- NULL
  
  set <- function( matrix ) {
    m <<- matrix
    a <<- NULL
  } 
  
  get <- function() {
    m
  }
  
  setInverse <- function(inverse) {
    a <<- inverse
  }
  
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

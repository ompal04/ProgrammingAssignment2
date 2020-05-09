## These functions cache the inverse of a matrix when it is calculated for the first time
## When the inverse needs to be calculated again, it is fetched from the memory eliminating the recalculations 

## makeCacheMatrix creates a matrix object that is used to cache the inverse of the matrix passed by the user

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
  
  getInverse <- function() {
    a
  }
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## It checks if the inverse of the matrix has been computed before. If yes, it just returns the previously computed matrix from cache
## Otherwise it calculates the inverse using the functions declared in makeCacheMatrix

cacheSolve <- function(x, ...) {
        
  m <- x$getInverse()
  
  if( !is.null(m) ) {
    message("Fetching data from cache")
    return(m)
  }
  
  data <- x$get()
  
  m <- solve(data) %*% data
  
  x$setInverse(m)
  
  m
        
}

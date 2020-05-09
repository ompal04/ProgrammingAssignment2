## 
##

## 

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


## 

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

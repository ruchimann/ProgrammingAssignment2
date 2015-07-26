## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##this function makes the special matric object which can cache the inverse of itself

makeCacheMatrix <- function(x = matrix()) {
    m=NULL
    set <- function(y) {
      x <<- y
      m = NULL

    }
    get <- function() x
    setinverse <- function(inv) m <<- inv
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  
}


## Write a short comment describing this function
##this function checks to see whether cached object exist , if exist return else
##create inverse and cache and return value

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
}

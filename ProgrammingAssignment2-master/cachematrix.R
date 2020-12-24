## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#a list containing a function to

#1.  set the value of the matrix
#2.  get the value of the matrix.
#3.  set the value of the inverted matrix
#4.  get the value of the inverted matrix

makeCacheMatrix <- function(x = matrix()) {
  x_inverse<-NULL
  set <- function(y) {
    x <<- y
    x_inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(i) x_inverse <<- i
  getinverse <- function() x_inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  x_inverse <- x$getinverse()
  if(!is.null(x_inverse)) {
    message("getting cached data")
    return(x_inverse)
  }
  data <- x$get()
  x_inverse <- solve(data, ...)
  x$setinverse(x_inverse)
  x_inverse
        ## Return a matrix that is the inverse of 'x'
}

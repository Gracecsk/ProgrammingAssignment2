## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  ## Initialize the inverse property
  i <- NULL
  
  ## Method to set the matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }

  get <- function(){
    x ##return matrix
    setinverse <- function(inverse)i <<- inverse
    getinverse <- function()i
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    
  }
}
  

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  
  ## Just return the inverse if its already set
  if( !is.null(i) ) {
    message("getting cached data")
    return(i)
  }
  mat <- x$get()
  i <- solve(mat, ...)
  x$setinverse(i)
  i
  
}

my_matrix <- makeCacheMatrix(matrix(1:4, 2, 2))
my_matrix$get()


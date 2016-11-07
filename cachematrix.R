##### Week 3 R Programming assignment #####
## Below two fucntions calculate the inverse of a function. In order to run efficiently,
## the first function creates a matrix that can cache its inverse, and the second
## function looks to the first to see if ther inverse has already been computed,
## and only runs its own computation if it wasn't cached. 

####create a special object that stores a numeric vector and caches its mean.

## This function creates a special "matrix" object that can cache its inverse.
  ##sets matrix
  ##gets matrix
  ##sets inverse
  ##gets inverse
makeCacheMatrix <- function(x = matrix()) {
    inver <- NULL
    set <- function(y) {
      x <<- y
      inver <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inver <<- inverse
    getinverse <- function() inver
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinvrse)
  }

###This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
###If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should
###retrieve the inverse from the cache.

##Returns a matrix that is the inverse of 'x'. First checks if inverse has already been calculated -- if so,
##pulls in from chache. If not, calculates inverse.

cacheSolve <- function(x, ...) {
  inver <- x$getinverse()
  if(!is.null(inver)) {
    message("getting cached data")
    return(inver)
  }
  data <- x$get()
  inver <- inverse(data, ...)
  x$setinverse(inver)
  inver
}
  
        


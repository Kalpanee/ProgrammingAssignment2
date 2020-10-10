## set the input matrix as x
#solved value "p" as NULL
#this function creates special matrix object
#that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  p<-NULLset<-function(y)
  {
    x<<-y
    p<<-NULL
  }

}


## cacheSolve is a function
#it computes the inverse of the special matrix
#if the inverse has been already calculted () and the matrix hasn`t changed)
#then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
p<-x$getinverse()
if(!is.null(p)){
  message("getting inversed matrix")
  return(p)
}
data <- x$grt()
p<-solve(data, ...)
x$setinverse(p)
p
}
}
}

## Put comments here that give an overall description of what your
## functions do

## Creates a special "Matrix"

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set <-function(y){
    x<<-y
    inv<<-NULL
  }
  get <-function() x
  setinverse<-function(inverse) inv <<-inverse
  getinverse <function() inv
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Returns a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  inv<-x$getinverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  inv<-solve(data,...)
  x$setinverse(inv)
  inv
  }
        

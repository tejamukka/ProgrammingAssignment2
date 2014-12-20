## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	n<-NULL
  set<-function(z){
  x<<- z
  n<<-NULL
}
get<-function() x
setmatrix<-function(solve) n<<- solve
getmatrix<-function() n
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
	n<-x$getmatrix()
    if(!is.null(n)){
      message("cached data is getting fetched")
      return(n)
    }
    matrix<-x$get()
    n<-solve(matrix, ...)
    x$setmatrix(n)
    n
}


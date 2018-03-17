## The functions given below are used to create a matrix and to find the inverse of the matrix. The first function 
## gives you a list and the second function gives you the inverse. If inverse exists, it returns that value.

## Use this function to create a matrix of your choice(square preferably if you want inverse!!)

makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
set<-function(y){
  x<<-y
  inv<<-NULL
}
get<-function() x
setinv<-function(inverse) inv<<-inverse
getinv<-function() inv
list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## This function can be used to calculate the inverse of required matrix with the list above as the input.

cacheSolve <- function(x, ...) {
       check<-x$getinv()
       if(!is.null(check))
       {
         message("getting cached data")
         return(check)
       }
       f<-x$get()
       inverse<-solve(f)
       x$setinv(inverse)
       inverse
}


## The code below creates a matrix and then caches the value.
## We then calculate the inverse and if the inverse is set then we use the cache value

## makeCachematrix will create a matric x, set, get matrix and then the inverse 

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL 		## Initialise Inverse

## set user derised value and if inverse present make it null

  set<-function(y){
  x<<-y
  m<<-NULL
}

get<-function() x

## set inverse variables 
 
setmatrix<-function(solve) {
m<<- solve
return(m)
}

getmatrix<-function() m
list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)

}
## Check to see if there's already a cached inverse otherwise solve its inverse and set/return it

## Create test 2x2 matrix or use special matric provided
 
cacheSolve <- function(x=makeCacheMatrix(1:4, nrow=2, ncol=2, ...) {

    m<-x$getmatrix() ## check the inverse value
    
    if(!is.null(m)) ## check if there is a value cached
		{ 
      message("getting cached data")
      return(m)
    }
    matrix<-x$get() ## return matrix
    m<-solve(matrix, ...) 
    x$setmatrix(m) ## returns the inverse
    m
}


 



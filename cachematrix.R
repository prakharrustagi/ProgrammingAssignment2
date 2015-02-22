## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL                            # a dummy null variable to store inverse
set<-function(a)                     # function to set the value in global workspace
{
x<<-a
}
findinverse<-function(){             #function to calculate the inverse and store it in m 
 m <<- solve(x)
}
getinverse<-function() m            # function to return m(inverse)      
list(set = set,findinverse = findinverse,getinverse = getinverse) #a special list containing all functions is returned

}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
inverse <- x$getinverse()  #gets the inverse from special list "x" created by makeCacheMatrix
if(!is.null(inverse))      #checks for an already calculated inverse
{                        
 return(inverse)           #returns stored inverse
}
inverse <- x$findinverse() #else calculates the required inverse
inverse                    #returns calculated inverse
}

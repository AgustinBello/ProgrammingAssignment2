## Week 3 Assignment: Lexical Scoping
## R Language
## Input A - matrix
## Input B - null

makeCacheMatrix <- function(A = matrix(sample(1:200,7),2,2)) {
  B <- NULL
  set <- function(y) {
    A <<- y
    B <<- NULL
  }
  get <- function() A
  setsolve <- function(solve) B <<- solve
  getsolve <- function() B
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## Change "mean" -> "solve"
cacheSolve <- function(A, ...) {
  B <- A$getsolve()
  if(!is.null(B)) {
    message("getting inversed matrix")
    return(B)
  }
  data <- A$get()
  B <- solve(data, ...)
  A$setsolve(B)
  B
}

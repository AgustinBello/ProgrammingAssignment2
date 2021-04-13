## Put comments here that give an overall description of what your
> ## functions do
> 
> ## Write a short comment describing this function
> 
> makeCacheMatrix <- function(x = matrix()) {
+ 
+ setwd('C:/Users/rubind1/Documents/Coursera-R')
+ ##
+ ## I simply set the input a as a matrix
+ ## and then set the solved value "b" as a null
+ ## then I changed every reference to "mean" to "solve"
+ makeCacheMatrix <- function(a = matrix(sample(1:100,7),6,6)) {
+   b <- NULL
+   set <- function(z) {
+     a <<- z
+     b <<- NULL
+   }
+   get <- function() a
+   setsolve <- function(solve) b <<- solve
+   getsolve <- function() b
+   list(set = set, get = get,
+        setsolve = setsolve,
+        getsolve = getsolve)
+ }
+ 
+ 
+ ## Write a short comment describing this function
+ 
+ ##
+ ## Same here, changed "mean" to "solve" and "m" to "b"
+ cacheSolve <- function(a, ...) {
+         ## Return a matrix that is the inverse of 'a'
+   b <- a$getsolve()
+   if(!is.null(b)) {
+     message("getting inversed matrix")
+     return(b)
+   }
+   data <- a$get()
+   b <- solve(data, ...)
+   a$setsolve(b)
+   a

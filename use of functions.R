simple<-function(x,y,op)
{
  if(op=="add")
  {
    return(x+y)
  }
  else if(op=="sub")
  {
    return(x-y)
  }
  else if(op=="mul")
  {
    return(x*y)
  }
  else if(op=="div")
  {
    if(y==0)
    {
      return("cant div by zero")
    }
    else
    {
      return(x/y)
    }
  }
  else
  {
    "invalid operation"
  }
}
result<-simple(10,5,"mul")
print(result)


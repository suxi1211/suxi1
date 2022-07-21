wedding <- list(venue = "chick-fil-a",
                guest = tribble(~name,     ~meal, ~age,
                                ##--------/------/-----
                                "Yoshi",   "V",   29L,
                                "Wario",   "C",   27L,
                                "Bowser",  "V",   34L,
                                "Luigi",   "C",   36L,
                                "Toad",    "B",   34L), 
                bride = "Peach",
                groom = "Mario",
                date  = parse_date("11/10/2020", "%d/%m/%Y"))
temp<-wedding$guest
temp<-temp[-2]
wedding$guest<-temp

wedding$guest%>%
  filter(name!="Wario")->wedding$guest

wedding$meal<-c(V="Vegetarian", C="Chicken", B="Beef")
wedding[c(1,5)]
wedding[c("venue",'date')]
x <- c(8, 1, 3, 1, 3)
sum(x)

sumval <- 0
for (i in seq_along(x)) {
  sumval <- sumval + x[i]
}
sumval

fibvec<-vector(mode='double',length=100)
fibvec[[1]]<-0
fibvec[[2]]<-1
for ( i in 3:100){
  fibvec[[i]]<-fibvec[[i-2]]+fibvec[[i-1]]
  }
fibvec
set.seed(1)
flip <- function() sample(c("T", "H"), 1)

flips <- 0
nheads <- 0

while (nheads < 3) {
  if (flip() == "H") {
    nheads <- nheads + 1
  } else {
    nheads <- 0 #start over
  } # end else
  flips <- flips + 1
} # end while loop
flips

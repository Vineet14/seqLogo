######################
##
## plot sequence logo
##
######################
## alt_A
alt_letterA <- function(x.pos,y.pos,ht,wt,id=NULL){
  
  x <- c(0,4,6,10,8,6.8,3.2,2,0,3.6,5,6.4,3.6)
  y <- c(0,10,10,0,0,3,3,0,0,4,7.5,4,4)
  x <- 0.1*x
  y <- 0.1*y
  
  x <- x.pos + wt*x
  y <- y.pos + ht*y
  
  if (is.null(id)){
    id <- c(rep(1,9),rep(2,4))
  }else{
    id <- c(rep(id,9),rep(id+1,4))
  }
  
  fill <- c("black","white")
  
  list(x=x,y=y,id=id,fill=fill)
}

## alt_T
alt_letterT <- function(x.pos,y.pos,ht,wt,id=NULL){
  
  x <- c(0,10,10,6,6,4,4,0)
  y <- c(10,10,9,9,0,0,9,9)
  x <- 0.1*x
  y <- 0.1*y
  
  x <- x.pos + wt*x
  y <- y.pos + ht*y
  
  if (is.null(id)){
    id <- rep(1,8)
  }else{
    id <- rep(id,8)
  }
  
  fill <- "black"
  
  list(x=x,y=y,id=id,fill=fill)
}

## alt_C
alt_letterC <- function(x.pos,y.pos,ht,wt,id=NULL){
  angle1 <- seq(0.3+pi/2,pi,length=100)
  angle2 <- seq(pi,1.5*pi,length=100)
  x.l1 <- 0.5 + 0.5*sin(angle1)
  y.l1 <- 0.5 + 0.5*cos(angle1)
  x.l2 <- 0.5 + 0.5*sin(angle2)
  y.l2 <- 0.5 + 0.5*cos(angle2)
  
  x.l <- c(x.l1,x.l2)
  y.l <- c(y.l1,y.l2)
  
  x <- c(x.l,rev(x.l))
  y <- c(y.l,1-rev(y.l))
  
  x.i1 <- 0.5 +0.35*sin(angle1)
  y.i1 <- 0.5 +0.35*cos(angle1)
  x.i1 <- x.i1[y.i1<=max(y.l1)]
  y.i1 <- y.i1[y.i1<=max(y.l1)]
  y.i1[1] <- max(y.l1)
  
  x.i2 <- 0.5 +0.35*sin(angle2)
  y.i2 <- 0.5 +0.35*cos(angle2)
  
  x.i <- c(x.i1,x.i2)
  y.i <- c(y.i1,y.i2)
  
  x1 <- c(x.i,rev(x.i))
  y1 <- c(y.i,1-rev(y.i))
  
  x <- c(x,rev(x1))
  y <- c(y,rev(y1))
  
  x <- x.pos + wt*x
  y <- y.pos + ht*y
  
  if (is.null(id)){
    id <- rep(1,length(x))
  }else{
    id <- rep(id,length(x))
  }
  
  fill <- "black"
  
  list(x=x,y=y,id=id,fill=fill)
}


## alt_G
alt_letterG <- function(x.pos,y.pos,ht,wt,id=NULL){
  angle1 <- seq(0.3+pi/2,pi,length=100)
  angle2 <- seq(pi,1.5*pi,length=100)
  x.l1 <- 0.5 + 0.5*sin(angle1)
  y.l1 <- 0.5 + 0.5*cos(angle1)
  x.l2 <- 0.5 + 0.5*sin(angle2)
  y.l2 <- 0.5 + 0.5*cos(angle2)
  
  x.l <- c(x.l1,x.l2)
  y.l <- c(y.l1,y.l2)
  
  x <- c(x.l,rev(x.l))
  y <- c(y.l,1-rev(y.l))
  
  x.i1 <- 0.5 +0.35*sin(angle1)
  y.i1 <- 0.5 +0.35*cos(angle1)
  x.i1 <- x.i1[y.i1<=max(y.l1)]
  y.i1 <- y.i1[y.i1<=max(y.l1)]
  y.i1[1] <- max(y.l1)
  
  x.i2 <- 0.5 +0.35*sin(angle2)
  y.i2 <- 0.5 +0.35*cos(angle2)
  
  x.i <- c(x.i1,x.i2)
  y.i <- c(y.i1,y.i2)
  
  x1 <- c(x.i,rev(x.i))
  y1 <- c(y.i,1-rev(y.i))
  
  x <- c(x,rev(x1))
  y <- c(y,rev(y1))
  
  h1 <- max(y.l1)
  r1 <- max(x.l1)
  
  h1 <- 0.4
  x.add <- c(r1,0.5,0.5,r1-0.2,r1-0.2,r1,r1)
  y.add <- c(h1,h1,h1-0.1,h1-0.1,0,0,h1)
  
  
  
  if (is.null(id)){
    id <- c(rep(1,length(x)),rep(2,length(x.add)))
  }else{
    id <- c(rep(id,length(x)),rep(id+1,length(x.add)))
  }
  
  x <- c(rev(x),x.add)
  y <- c(rev(y),y.add)
  
  x <- x.pos + wt*x
  y <- y.pos + ht*y
  
  
  fill <- c("black","black")
  
  list(x=x,y=y,id=id,fill=fill)
  
}


######################

letterA <- function(x.pos,y.pos,ht,wt,id=NULL){
  
  x <- c(0,4,6,10,8,6.8,3.2,2,0,3.6,5,6.4,3.6)
  y <- c(0,10,10,0,0,3,3,0,0,4,7.5,4,4)
  x <- 0.1*x
  y <- 0.1*y

  x <- x.pos + wt*x
  y <- y.pos + ht*y

  if (is.null(id)){
    id <- c(rep(1,9),rep(2,4))
  }else{
    id <- c(rep(id,9),rep(id+1,4))
  }
    
  fill <- c("green","white")
    
  list(x=x,y=y,id=id,fill=fill)
}

## T
letterT <- function(x.pos,y.pos,ht,wt,id=NULL){
  
  x <- c(0,10,10,6,6,4,4,0)
  y <- c(10,10,9,9,0,0,9,9)
  x <- 0.1*x
  y <- 0.1*y

  x <- x.pos + wt*x
  y <- y.pos + ht*y

  if (is.null(id)){
    id <- rep(1,8)
  }else{
    id <- rep(id,8)
  }
  
  fill <- "red"
    
  list(x=x,y=y,id=id,fill=fill)
}

## C
letterC <- function(x.pos,y.pos,ht,wt,id=NULL){
  angle1 <- seq(0.3+pi/2,pi,length=100)
  angle2 <- seq(pi,1.5*pi,length=100)
  x.l1 <- 0.5 + 0.5*sin(angle1)
  y.l1 <- 0.5 + 0.5*cos(angle1)
  x.l2 <- 0.5 + 0.5*sin(angle2)
  y.l2 <- 0.5 + 0.5*cos(angle2)
  
  x.l <- c(x.l1,x.l2)
  y.l <- c(y.l1,y.l2)
  
  x <- c(x.l,rev(x.l))
  y <- c(y.l,1-rev(y.l))
  
  x.i1 <- 0.5 +0.35*sin(angle1)
  y.i1 <- 0.5 +0.35*cos(angle1)
  x.i1 <- x.i1[y.i1<=max(y.l1)]
  y.i1 <- y.i1[y.i1<=max(y.l1)]
  y.i1[1] <- max(y.l1)
  
  x.i2 <- 0.5 +0.35*sin(angle2)
  y.i2 <- 0.5 +0.35*cos(angle2)
  
  x.i <- c(x.i1,x.i2)
  y.i <- c(y.i1,y.i2)
  
  x1 <- c(x.i,rev(x.i))
  y1 <- c(y.i,1-rev(y.i))
  
  x <- c(x,rev(x1))
  y <- c(y,rev(y1))
  
  x <- x.pos + wt*x
  y <- y.pos + ht*y

  if (is.null(id)){
    id <- rep(1,length(x))
  }else{
    id <- rep(id,length(x))
  }
  
  fill <- "blue"
    
  list(x=x,y=y,id=id,fill=fill)
}


## G
letterG <- function(x.pos,y.pos,ht,wt,id=NULL){
  angle1 <- seq(0.3+pi/2,pi,length=100)
  angle2 <- seq(pi,1.5*pi,length=100)
  x.l1 <- 0.5 + 0.5*sin(angle1)
  y.l1 <- 0.5 + 0.5*cos(angle1)
  x.l2 <- 0.5 + 0.5*sin(angle2)
  y.l2 <- 0.5 + 0.5*cos(angle2)
  
  x.l <- c(x.l1,x.l2)
  y.l <- c(y.l1,y.l2)
  
  x <- c(x.l,rev(x.l))
  y <- c(y.l,1-rev(y.l))
  
  x.i1 <- 0.5 +0.35*sin(angle1)
  y.i1 <- 0.5 +0.35*cos(angle1)
  x.i1 <- x.i1[y.i1<=max(y.l1)]
  y.i1 <- y.i1[y.i1<=max(y.l1)]
  y.i1[1] <- max(y.l1)
  
  x.i2 <- 0.5 +0.35*sin(angle2)
  y.i2 <- 0.5 +0.35*cos(angle2)
  
  x.i <- c(x.i1,x.i2)
  y.i <- c(y.i1,y.i2)
  
  x1 <- c(x.i,rev(x.i))
  y1 <- c(y.i,1-rev(y.i))
  
  x <- c(x,rev(x1))
  y <- c(y,rev(y1))
  
  h1 <- max(y.l1)
  r1 <- max(x.l1)
  
  h1 <- 0.4
  x.add <- c(r1,0.5,0.5,r1-0.2,r1-0.2,r1,r1)
  y.add <- c(h1,h1,h1-0.1,h1-0.1,0,0,h1)

  

  if (is.null(id)){
    id <- c(rep(1,length(x)),rep(2,length(x.add)))
  }else{
    id <- c(rep(id,length(x)),rep(id+1,length(x.add)))
  }

  x <- c(rev(x),x.add)
  y <- c(rev(y),y.add)
    
  x <- x.pos + wt*x
  y <- y.pos + ht*y
  
  
  fill <- c("orange","orange")
    
  list(x=x,y=y,id=id,fill=fill)

}



addLetter <- function(letters,which,x.pos,y.pos,ht,wt){
  #print(ht)
  
  if (which == "A"){
    #if (ht != 1.9){
    if (ht <= 1.6){
      letter <- letterA(x.pos,y.pos,ht,wt)
    } else {
      letter <- alt_letterA(x.pos, y.pos, 0.10, wt)
    }
  }else if (which == "C"){
    #if (ht != 1.9){
    if (ht <= 1.6){
      letter <- letterC(x.pos,y.pos,ht,wt)
    } else {
      letter <- alt_letterC(x.pos, y.pos, 0.10, wt)
    }
  }else if (which == "G"){
    #if (ht != 1.9){
    if (ht <= 1.6){
      letter <- letterG(x.pos,y.pos,ht,wt)
    } else {
      letter <- alt_letterG(x.pos, y.pos, 0.10, wt)
    }
  }else if (which == "T"){
    #if (ht != 1.9){
    if (ht <= 1.6){
      letter <- letterT(x.pos, y.pos, ht, wt)
    } else {
      letter <- alt_letterT(x.pos, y.pos, 0.10, wt)
    }
  }else{
    stop("which must be one of A,C,G,T")
  }

  letters$x <- c(letters$x,letter$x)
  letters$y <- c(letters$y,letter$y)

  lastID <- ifelse(is.null(letters$id),0,max(letters$id))
  letters$id <- c(letters$id,lastID+letter$id)
  letters$fill <- c(letters$fill,letter$fill)
  letters
}


## plot a sequence logo
seqLogo <- function(pwm, ic.scale=TRUE, xaxis=TRUE, yaxis=TRUE, xfontsize=15, yfontsize=15){

  if (is(pwm, "pwm")){
    pwm <- pwm@pwm    
  }else if (is.data.frame(pwm)){
    pwm <- as.matrix(pwm)
  }else if (!is.matrix(pwm)){
    stop("pwm must be of class matrix or data.frame")
  }

  if (any(abs(1 - apply(pwm,2,sum)) > 0.01))
    stop("Columns of PWM must add up to 1.0")

  
  chars <- c("A","C","G","T")
  letters <- list(x=NULL,y=NULL,id=NULL,fill=NULL)
  npos <- ncol(pwm)

  
  if (ic.scale){
    ylim <- 1
    ylab <- "Bits"
    facs <- pwm2ic(pwm)
  }else{
    ylim <- 1
    ylab <- "Probability"
    facs <- rep(1, npos)
  }
  
  wt <- 1  
  x.pos <- 0  
  for (j in 1:npos){
    
    column <- pwm[,j]
    hts <- 0.95*column*facs[j]
    if (max(hts) > 1.6){
      letterOrder <- order(-hts)
    } else {
      letterOrder <- order(hts)
    }
        
    y.pos <- 0    
    for (i in 1:4){
      letter <- chars[letterOrder[i]]
      ht <- hts[letterOrder[i]]
      if (ht>0) letters <- addLetter(letters,letter,x.pos,y.pos,ht,wt)
      y.pos <- y.pos + ht + 0.01
    }
    x.pos <- x.pos + wt
  }

  grid.newpage()
  bottomMargin = ifelse(xaxis, 2 + xfontsize/3.5, 2)
  leftMargin = ifelse(yaxis, 2 + yfontsize/3.5, 2)
  pushViewport(plotViewport(c(bottomMargin,leftMargin,2,2)))
  pushViewport(dataViewport(0:ncol(pwm),0:ylim,name="vp1"))
  grid.polygon(x=unit(letters$x,"native"), y=unit(letters$y,"native"),
               id=letters$id,
               gp=gpar(fill=letters$fill,col="transparent"))
  if (xaxis){
    grid.xaxis(at=seq(0.5,ncol(pwm)-0.5, 5),label=c("-10","-5","+1","+6"), gp=gpar(fontsize=xfontsize))
    grid.xaxis(at=c(7.5, 9.5), label=(c("-3", "-1")), gp = gpar(fontsize=12, fontface = "bold"))
    #grid.xaxis(at=seq(0.5,ncol(pwm)-0.5),label=1:ncol(pwm), gp=gpar(fontsize=xfontsize))
    grid.text("Relative Position",y=unit(-3,"lines"), gp=gpar(fontsize=xfontsize))
  }
  if (yaxis){
    grid.yaxis(at=seq(0,1,0.5), gp=gpar(fontsize=yfontsize))
    grid.text(ylab,x=unit(-3,"lines"),rot=90, gp=gpar(fontsize=yfontsize))
  }
  popViewport()
  popViewport()
  par(ask=FALSE)
}

# R Manual

## 常用的命令

help.start()

?fun_name()

??fun_name()

example(fun_name)

source("example.R")

sink("record.lis")    sink()

objects()

rm()

## Object

mode() *intrinsic attributes*

attributes() *non-intrinsic attributes*

attr(object,name)

attr(z,"dim") <- c(10,10)

length()

### change the length of an object:

1. e[index] = number
2. alpha <- alpha[2*1:5]
3. length(alpha) = len

as.somthing()

## Vector—"atomic" structure

*"atomic" structures:their componets are all of the same type or mode*: namely *numeric, complex*, *logical*, *character* and *raw*.(Vector的元素必须是以上几种基本类型。)

c(x1,x2,x3)

vector1+vector2  长的向量一定要是短的向量长度的整数倍

sum(),mean(),length(),sort(),var(),seq()

paste()

2*1:3 = 2,4,6    因为:的优先级最高。

Selecting and modifying subsets of a date set:

正数下标：x<-x[1:5]

负数下标：x<-x[-(1:5)]

逻辑向量：x<-x[x>2]

### Factors

A factor is a *vector* used to a discrete classification(grouping) of the components of other vectors of the same length.

我的理解：因子就是一个分类。

levels()—find the levels of a factor.

我的理解：一共有几个分类。

## Array and matrices

Array: 多维的vector。任何一个元素有一样的属性。

Matrices:二维的Array。但是有一些函数只能作用于Matrices，比如转置。

## Lists and Data Frames

A List is an object consistingof an *ordered* collection of objects known as its components.(是最灵活的一种对象，每个component可以是任意类型。) 

`Lst <- list(name="Fred", wife="Mary", no.children=3,              child.ages=c(4,7,9))`

如何引用component

`Lst[[1]]`

or

`Lst$name`

A data frame is list with class "data.frame". A data frame may be regarded as a matrix with columns(components) possibly of differring modes and attributes. It may be displayed in matrix form.

## Reading data from file

read.table()

To read an entire data frame.

what is data frame? 

```
   Price Floor Area Rooms
01 52.00 111.0 830    5
02 54.75 128.0 710    4
03 57.50 101.0 1000   6
```

01 02 03 叫做 label; Price Floor Area Rooms 叫做 name(或者叫header)。

如果没有label

```
Price Floor Area Rooms
52.00 111.0 830    5
54.75 128.0 710    4
57.50 101.0 1000   6
```

读取的函数为：read.data(\<file_name>,header = TRUE)


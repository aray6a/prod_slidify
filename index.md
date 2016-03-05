---
title       : International Address Check
subtitle    :
author      : Alim Ray
job         : DePaul University
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      #
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Motivation

* Given inconsistent address data at my university, it is difficult to determine if an address is outside the US
* Using just the city, state, and postal code, the shiny app assigns a percentage which gives the likelihood of an address
being outside the US

--- .class #slide-1

## Training and Methodology Part I

* Previously cleaned addresses are used to train Bayesian filter

* Three data sets created -- counts by city, counts by state, counts by postal

* Filter created by calculating likelihood of domestic city, likelihood of domestic state, likelihood of domestic postal
using three data sets

--- .class #slide-2

## Counts by City Example

* Cities with domestic address rows > 120 displayed

* Column name ORIGCITY = city names

* Column name D = domestic

* Column name F = foreign


```
##         ORIGCITY    D       F
## 97        Aurora  128    0.01
## 400      Chicago 4457    3.00
## 555  Des Plaines  126    0.01
## 804     Glenview  173    0.01
## 1422  Naperville  258    1.00
## 1573 Orland Park  129    0.01
## 1620  Park Ridge  144    0.01
## 1957      Skokie  173    0.01
## 2137         UNK  745 9319.00
```

--- .class #slide-3

## Training and Methodology Part II

* Prior of .8 was chosen for domestic

* Missing values (i.e., a city was only domestic) were assigned 0.01

### Final formula

likelihood of domestic = ( 0.8 * likelihood of domestic city * likelihood of domestic state * likelihood of domestic zip )

--- .class #slide-4

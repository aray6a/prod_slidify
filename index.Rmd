---
title       : International Address Check
subtitle    : 
author      : Alim Ray 
job         : 
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

## Methodology

* Bayesian filter created by using city, state, postal
* Previously cleaned addresses are used to create percentages in Bayesian filter formula

domestic = ( 0.8 * domestic_city * domestic_state * domestic_zipp * domestic_uszip * domestic_country ) 
--- .class #slide-2





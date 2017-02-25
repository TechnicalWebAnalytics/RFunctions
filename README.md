# RFunctions

Repository of useful functions.

## Table of Contents

[GA Refferals](#user-content-ga-referrals)

AMPRestAPI

----

## GA Referrals

### Description

A simple function that extracts Referrals by a list of URLs you provide. 

### Dependencies

Load the dependent Library
`library("RGA")`

### Authorizations

Authorize your GA account
`authorize()` 

### Parameters

 - **view**: the GA view id you are extracting the data from 
 - **startDate /  endDate**: your preferred date range 
 - **urls**: this needs to be passed as a list 
	 - example: `urls <- c( "l.facebook.com", "lm.facebook.com" )`

### Function

see GAReferrals.R

### Example

    view <- "1234567"
    
    startDate <- "2017-01-01"
    endDate <- "2017-01-31"
    
    urls <- c(
    "l.facebook.com",
    "lm.facebook.com"
    )
    
    x <- getReferrals(view,startDate,endDate,urls)

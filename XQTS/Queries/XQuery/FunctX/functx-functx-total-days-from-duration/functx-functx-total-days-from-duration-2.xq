(:**************************************************************:)
(: Test: functx-functx-total-days-from-duration-2                                  :)
(: Written by: Priscilla Walmsley (Frans Englich is maintainer) :)
(: Date: 2008-05-16+02:00                                       :)
(:**************************************************************:)

declare namespace functx = "http://www.example.com/";
(:~
 : The total number of days in a dayTimeDuration 
 :
 : @author  Priscilla Walmsley, Datypic 
 : @version 1.0 
 : @see     http://www.xqueryfunctions.com/xq/functx_total-days-from-duration.html 
 : @param   $duration the duration 
 :) 
declare function functx:total-days-from-duration 
  ( $duration as xs:dayTimeDuration? )  as xs:decimal? {
       
   $duration div xs:dayTimeDuration('P1D')
 } ;
(functx:total-days-from-duration(
     xs:dayTimeDuration('P1D')))
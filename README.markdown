Venezuela Analysis
==================

At times, I simply want to look at facts and draw my own conclusions when it comes to my country's economics, politics and general situation.

Ideally, I'd like to find data dating as far back as 1950. During the 50's, we had a very right wing dictator in Venezuela who was ousted in 1958. After his fall, we had 40 years of democracy before our current president stepped into power. The rest is history and facts. The idea is to find reliable sources of data, clean it up, and merge it up to build a dataset suitable for analysis and studies. Any data that is cleaned up will be made available through this repo.

Data Sources
------------

* The IMF has some interesting data: http://www.imf.org/external/pubs/ft/weo/2009/02/weodata/weorept.aspx?sy=1980&ey=2014&ssd=1&sort=country&ds=.&br=1&pr1.x=90&pr1.y=7&c=299&s=NGDP_R%2CNGDPD%2CPCPIE%2CLP%2CBCA%2CBCA_NGDPD&grp=0&a=

* The [venezuelan Institute of National Statistics](http://www.ine.gov.ve/) also has some data, although it does not go back far enough to be as useful as I'd wish. Most of the indicators go back only about a decade or so.

Tools
-----

My tools of choice are [R](http://www.r-project.org) for data analytics, statistics visualization (ggplot2) and some management/transformation, and Ruby for other data cleanup, network/API calls, and wherever it may make sense.

Example plot
------------

This plot is very preliminary, and only uses the IMF datasource.

It shows an enormous growth in GDP, along with record high average inflation rate affecting a growing population.

![GDP, inflation and population](http://img.skitch.com/20100110-uyygsubtwtfngjmrruquttpmd.png "GDP, inflation and population")

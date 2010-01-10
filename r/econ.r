# Data source: 
# http://www.imf.org/external/pubs/ft/weo/2009/02/weodata/weorept.aspx?sy=1980&ey=2014&ssd=1&sort=country&ds=.&br=1&pr1.x=90&pr1.y=7&c=299&s=NGDP_R%2CNGDPD%2CPCPIE%2CLP%2CBCA%2CBCA_NGDPD&grp=0&a=
library('reshape')
library('ggplot2')

setwd('code/play/vz')
vz <- read.csv(file="data/data-fmi.csv")
names(vz) <- c("subject_descriptor", "units","scale",
              "1980", "1981", "1982", "1983", "1984",
              "1985", "1986", "1987", "1988", "1989",
              "1990", "1991", "1992", "1993", "1994",
              "1995", "1996", "1997", "1998", "1999",
              "2000", "2001", "2002", "2003", "2004",
              "2005", "2006", "2007", "2008", "2009",
              "2010", "2011", "2012", "2013", "2014")

molten_vz <- melt(vz, id=c("Subject_Descriptor", "Units", "Scale"))
vz_econ   <- cast(molten_vz, variable ~ Subject_Descriptor)
names(vz_econ) <- c("year", "account_balance", "gdp_capita", "gdp_constant", "gdp", "avg_inflation", "population")
vz_econ$year <- as.numeric(as.character(vz_econ$year))

plot <- ggplot(vz_econ)
plot + geom_line(aes(x=year, y=gdp, size=population, colour=avg_inflation))



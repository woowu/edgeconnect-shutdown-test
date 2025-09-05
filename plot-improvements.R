#!/usr/bin/Rscript --vanilla
library(dplyr)
library(ggplot2)
library(RColorBrewer)
library(reshape2)
library(gridExtra)

#------------------------------------------------------------------------------

name = 'Shutdown improvements'
analy_levels <- c('Filesystem', 'WiFi', 'eMMC', 'Total', 'Batt')

setup_name <- c(
                'Baseline',
                'Cache 256 KB',
                'WiFi: exec(rmmod cc33xx',
                'WiFi: rfkill',
                'Killall',
                'NonPCO no power down',
                'NonPCO',
                'PCO'
)

#------------------------------------------------------------------------------

printf <- function(...) invisible(print(sprintf(...)))

extractSetup <- function(setup, useBatt=TRUE, battOnly=FALSE) {
    x <- d %>% filter(Setup == setup)

    # Some data does not have valid battery time data
    #
    if (! useBatt || setup %in% setup_name[1:4]) {
        x$Batt <- NULL
    }
    return(x)
}

createStatForSetup <- function(setup) {
    analysis <- colnames(setup)[3:length(colnames(setup))]
    peak <- rep(0, length(analysis))
    mean <- rep(0, length(analysis))
    for (i in 1:length(analysis)) {
        if (analysis[i] == 'Batt') {
            peak[i] <- min(setup[[analysis[i]]])
        } else {
            peak[i] <- max(setup[[analysis[i]]])
        }
    }
    for (i in 1:length(analysis)) {
        mean[i] <- mean(setup[[analysis[i]]])
    }
    d <- data.frame(
               Stat=rep(c('Peak', 'Mean'), each=length(analysis)),
               Analysis=rep(analysis, 2),
               Time=c(peak, mean)
    )
    d$Analysis <- factor(d$Analysis, levels = c('Filesystem', 'WiFi', 'eMMC', 'Total', 'Batt'))
    return(d)
}

plotScatter <- function(setup, title) {
    palette <- brewer.pal(length(analy_levels), 'Set2')
    names(palette) <- analy_levels

    l <- melt(setup, id.vars = c('Setup', 'Idx'),
                variable.name = 'Name',
                value.name = 'Time')
    l <- l %>% filter(Time > 0)

    s <- ggplot(l, aes(x=Idx, y=Time, color=Name)) +
        scale_color_manual(values=palette) +
        ylim(0, time_max) +
        geom_line() +
        geom_point() +
        xlab('Tests') +
        ylab('Milliseconds') +
        theme_bw() + 
        theme(legend.title=element_blank()) +
        ggtitle(title)

    b <- ggplot(createStatForSetup(setup),
                aes(x=Analysis, y=Time, fill=Stat)) +
        geom_bar(stat='identity', position=position_dodge()) +
        ylim(0, time_max) +
        ylab('Milliseconds') +
        scale_fill_brewer(palette='Paired', name=NULL) +
        #scale_fill_manual(values=c('gray78', 'gray68')) +
        geom_text(aes(label=sprintf('%.0f', Time)), vjust=1.6, color='black',
                      position=position_dodge(.9), size=3) +
        theme_bw()

    return(grid.arrange(s, b, nrow=2))
}

#------------------------------------------------------------------------------

d <- read.csv(paste(name, '.csv', sep=''))
time_max = max(1000)

svg(paste(name, '.svg', sep=''), width=20, height=14)
p1 <- plotScatter(extractSetup('Baseline'), 'Baseline')
p2 <- plotScatter(extractSetup('NonPCO'), 'NonPCO')
p3 <- plotScatter(extractSetup('PCO'), 'PCO')
grid.arrange(p1, p2, p3, top=name, nrow=1)
dev.off()
save.image(file=paste(name, '.RData', sep=''))

#!/usr/bin/Rscript --vanilla
library(dplyr)
library(ggplot2)
library(RColorBrewer)
library(reshape2)
library(gridExtra)

#------------------------------------------------------------------------------

printf <- function(...) invisible(print(sprintf(...)))

extractSetup <- function(setup, useBatt=FALSE, battOnly=FALSE) {
    x <- d %>% filter(Setup == setup)

    # Some data does not have valid battery time data
    #
    if (! useBatt || setup %in%
        c('baseline', '256 KB cache', 'exec(rmmod cc33xx)', 'rfkill')) {
        x$Batt <- NULL
    }
    return(x)
}

createStatForSetup <- function(setup) {
    analysis <- colnames(setup)[3:length(colnames(setup))]
    peak <- rep(0, length(analysis))
    median <- rep(0, length(analysis))
    for (i in 1:length(analysis)) {
        if (analysis[i] == 'Batt') {
            peak[i] <- min(setup[[analysis[i]]])
        } else {
            peak[i] <- max(setup[[analysis[i]]])
        }
    }
    for (i in 1:length(analysis)) {
        median[i] <- median(setup[[analysis[i]]])
    }
    d <- data.frame(
               Stat=rep(c('Peak', 'Meadian'), each=length(analysis)),
               Analysis=rep(analysis, 2),
               Time=c(peak, median)
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
        scale_fill_brewer(palette='Paired') +
        theme(axis.title.x = element_blank(), axis.text = element_blank()) +
        geom_text(aes(label=sprintf('%.1f', Time)), vjust=1.6, color='black',
                      position=position_dodge(.9), size=3) +
        theme(legend.title=element_blank()) +
        theme_bw()

    return(grid.arrange(s, b, nrow=2))
}

#------------------------------------------------------------------------------

name = 'Shutdown improvements'
analy_levels <- c('Filesystem', 'WiFi', 'eMMC', 'Total', 'Batt')

d <- read.csv(paste(name, '.csv', sep=''))
time_max = max(d$Batt)

setup_name <- c('baseline', '256 KB cache', 'exec(rmmod cc33xx)',
    'rfkill', 'batt-est-killall', 'non-pco')

#------------------------------------------------------------------------------

svg(paste(name, '.svg', sep=''), width=7, height=7)
plotScatter(extractSetup('non-pco'), 'non-pco')
#grid.arrange(p1, p2, p3, p4, p6, top=name, nrow=1)
dev.off()
save.image(file=paste(name, '.RData', sep=''))

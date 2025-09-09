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

extractSetup <- function(setup, useBatt=FALSE) {
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
    sigma <- rep(0, length(analysis))
    for (i in 1:length(analysis)) {
        s <- setup[[analysis[i]]]
        s <- s[s != 0]
        if (analysis[i] == 'Batt') {
            peak[i] <- min(s)
        } else {
            peak[i] <- max(s)
        }
    }
    for (i in 1:length(analysis)) {
        s <- setup[[analysis[i]]]
        s <- s[s != 0]
        mean[i] <- mean(s)
        sigma[i] <- sqrt(mean((s - mean[i])^2))
    }
    d <- data.frame(
               Stat=rep(c('Peak', 'Mean', 'SD'), each=length(analysis)),
               Analysis=rep(analysis, 3),
               Time=c(peak, mean, sigma)
    )
    d$Analysis <- factor(d$Analysis, levels = c('Filesystem', 'WiFi', 'eMMC', 'Total', 'Batt'))
    return(d)
}

plotBattTime <- function(pco, npco) {
    pco <- pco[pco > 0]
    npco <- npco[npco > 0]
    d1 <- data.frame(Idx=1:length(pco), Time=pco, Type=rep('PCO', length(pco)))
    d2 <- data.frame(Idx=1:length(npco), Time=npco, Type=rep('NonPCO', length(npco)))
    d <- rbind(d1, d2)

    s <- ggplot(d, aes(x=Idx, y=Time, color=Type)) +
        ylim(0, time_max) +
        geom_point() +
        geom_line() +
        xlab('Tests') +
        ylab('Milliseconds') +
        theme_bw() + 
        ggtitle('Battery time')

    min <- c(min(pco), min(npco))
    mean <- c(mean(pco), mean(npco))
    sigma <- c(sqrt(mean((pco - mean(pco))^2)),
               sqrt(mean((npco - mean(npco))^2)))
    d <- data.frame(
               Stat=rep(c('Min', 'Mean', 'SD'), each=2),
               Type=rep(c('PCO', 'NonPCO'), 3),
               Time=c(min, mean, sigma)
    )

    b <- ggplot(d, aes(x=Type, y=Time, fill=Stat)) +
        geom_bar(stat='identity', position=position_dodge()) +
        ylim(0, time_max) +
        ylab('Meter type') +
        ylab('Milliseconds') +
        scale_fill_grey(start=.5, end=.9, name=NULL) +
        geom_text(aes(label=sprintf('%.0f', Time)), vjust=0, color='black',
                      position=position_dodge(.9), size=3) +
        theme_bw()

    return(grid.arrange(s, b, nrow=2))
}

plotOprs <- function(setup, title) {
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
        scale_fill_grey(start=.5, end=.9, name=NULL) +
        geom_text(aes(label=sprintf('%.0f', Time)), vjust=0, color='black',
                      position=position_dodge(.9), size=3) +
        theme_bw()

    return(grid.arrange(s, b, nrow=2))
}

#------------------------------------------------------------------------------

d <- read.csv(paste(name, '.csv', sep=''))
time_max = max(1000)

baseline <- extractSetup('Baseline')
pco <- extractSetup('PCO')
npco <- extractSetup('NonPCO')

png(filename=paste(name, '.png', sep=''), width=960, height=480)
p1 <- plotOprs(baseline, 'Baseline')
p2 <- plotOprs(rbind(pco, npco), 'Optimized')
grid.arrange(p1, p2, top=name, nrow=1)
dev.off()

png(filename=paste('Battery time', '.png', sep=''))
pcoBatt <- extractSetup('PCO', TRUE)$Batt
npcoBatt <- extractSetup('NonPCO', TRUE)$Batt
plotBattTime(pcoBatt, npcoBatt)
dev.off()

save.image(file=paste(name, '.RData', sep=''))

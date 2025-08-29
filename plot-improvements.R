#!/usr/bin/Rscript --vanilla
library(dplyr)
library(ggplot2)
library(RColorBrewer)
library(reshape2)
library(gridExtra)

printf <- function(...) invisible(print(sprintf(...)))

palette <- brewer.pal(4, 'Set2')
subtype <- c('Filesystem', 'WiFi', 'eMMC', 'Total')
names(palette) <- subtype

name = 'Shutdown improvements'
d <- read.csv(paste('rpt/', name, '.csv', sep=''))
total_max = max(d$Total)

setup_names <- c('baseline', '256 KB cache', 'exec(rmmod cc33xx)',
    'rfkill')
setup1 <- d %>% filter(Setup == setup_names[1]);
setup2 <- d %>% filter(Setup == setup_names[2]);
setup3 <- d %>% filter(Setup == setup_names[3]);
setup4 <- d %>% filter(Setup == setup_names[4]);

setup1_l <- melt(setup1, id.vars = c('Setup', 'Idx'),
            variable.name = 'Name',
            value.name = 'Time')
setup2_l <- melt(setup2, id.vars = c('Setup', 'Idx'),
            variable.name = 'Name',
            value.name = 'Time')
setup3_l <- melt(setup3, id.vars = c('Setup', 'Idx'),
            variable.name = 'Name',
            value.name = 'Time')
setup4_l <- melt(setup4, id.vars = c('Setup', 'Idx'),
            variable.name = 'Name',
            value.name = 'Time')

svg(paste(name, '.svg', sep=''), width=14, height=7)
p1 = ggplot(setup1_l, aes(x=Idx, y=Time, color=Name)) +
    scale_color_manual(values=palette) +
    ylim(0, total_max) +
    geom_line() +
    geom_point() +
    xlab('Tests') +
    ylab('Time (ms)') +
    theme_bw() + 
    theme(legend.title=element_blank()) +
    ggtitle(paste('(1) ', setup_names[1], sep=''))
p2 = ggplot(setup2_l, aes(x=Idx, y=Time, color=Name)) +
    scale_color_manual(values=palette) +
    ylim(0, total_max) +
    geom_line() +
    geom_point() +
    xlab('Tests') +
    ylab('Time (ms)') +
    theme_bw() +
    theme(legend.title=element_blank()) +
    ggtitle(paste('(2) ', setup_names[2], sep=''))
p3 = ggplot(setup3_l, aes(x=Idx, y=Time, color=Name)) +
    scale_color_manual(values=palette) +
    ylim(0, total_max) +
    geom_line() +
    geom_point() +
    xlab('Tests') +
    ylab('Time (ms)') +
    theme_bw() +
    theme(legend.title=element_blank()) +
    ggtitle(paste('(3a) ', setup_names[3], sep=''))
p4 = ggplot(setup4_l, aes(x=Idx, y=Time, color=Name)) +
    scale_color_manual(values=palette) +
    ylim(0, total_max) +
    geom_line() +
    geom_point() +
    xlab('Tests') +
    ylab('Time (ms)') +
    theme_bw() +
    theme(legend.title=element_blank()) +
    ggtitle(paste('(3b) ', setup_names[4], sep=''))

grid.arrange(p1, p2, p3, p4, top=name, nrow=1)
dev.off()
save.image(file=paste(name, '.RData', sep=''))

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

name = 'Compare test methods: dd vs flash-sync'
d <- read.csv(paste(name, '.csv', sep=''))
total_max = max(d$Total)

setup_names <- c('rmmod,no-cache/flash_sync', 'rmmod,no-cache/dd')
setup1 <- d %>% filter(Setup == setup_names[1]);
setup2 <- d %>% filter(Setup == setup_names[2]);

setup1_l <- melt(setup1, id.vars = c('Setup', 'Idx'),
            variable.name = 'Name',
            value.name = 'Time')
setup2_l <- melt(setup2, id.vars = c('Setup', 'Idx'),
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
    ggtitle(paste('(a) ', setup_names[1], sep=''))
p2 = ggplot(setup2_l, aes(x=Idx, y=Time, color=Name)) +
    scale_color_manual(values=palette) +
    ylim(0, total_max) +
    geom_line() +
    geom_point() +
    xlab('Tests') +
    ylab('Time (ms)') +
    theme_bw() +
    theme(legend.title=element_blank()) +
    ggtitle(paste('(b) ', setup_names[2], sep=''))

grid.arrange(p1, p2, top=name, nrow=1)
dev.off()
save.image(file=paste(name, '.RData', sep=''))

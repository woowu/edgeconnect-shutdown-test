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

name = 'Compare test method: dd vs flash-sync'
d <- read.csv(paste('rpt/', name, '.csv', sep=''))
total_max = max(d$Total)

'000'
setup1 <- d %>% filter(Setup == 'rmmod,no-cache/flash_sync');
setup2 <- d %>% filter(Setup == 'rmmod,no-cache/dd');

'001'
setup1_l <- melt(setup1, id.vars = c('Setup', 'Idx'),
            variable.name = 'Name',
            value.name = 'Time')
setup2_l <- melt(setup2, id.vars = c('Setup', 'Idx'),
            variable.name = 'Name',
            value.name = 'Time')
'002'

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
    ggtitle('(a) old firmware, using flash_sync')
p2 = ggplot(setup2_l, aes(x=Idx, y=Time, color=Name)) +
    scale_color_manual(values=palette) +
    ylim(0, total_max) +
    geom_line() +
    geom_point() +
    xlab('Tests') +
    ylab('Time (ms)') +
    theme_bw() +
    theme(legend.title=element_blank()) +
    ggtitle('(b) old firmware, using dd')

grid.arrange(p1, p2, nrow=1)
dev.off()
save.image(file=paste(name, '.RData', sep=''))

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

d1a <- read.csv('./pf-only/modprobe-syncfs_cpu-90,ping-i1-s600,dd-1x10M.csv')
d1a$idx <- as.numeric(row.names(d1a))
d1b <- read.csv('pf-only/modprobe-syncfs_cpu-2,ping-i1-s600,dd-1x10M.csv')
d1b$idx <- as.numeric(row.names(d1b))
d2a <- read.csv('pf-only/rfkill-syncfs_cpu-90,ping-i1-s600,dd-1x10M,cache-256K.csv')
d2a$idx <- as.numeric(row.names(d2a))
d2b <- read.csv('pf-only/rfkill-syncfs_cpu-2,ping-i1-s600,dd-1x10M,cache-256K.csv')
d2b$idx <- as.numeric(row.names(d2b))
d3 <- read.csv('./pf-only/modprobe-syncfs_cpu-8,ping-i1-s600,sync-iprf-1M,cache-256K.csv')
d3$idx <- as.numeric(row.names(d3))
d4 <- read.csv('./pf-only/rfkill-syncfs_cpu-8,ping-i1-s600,sync-iprf-1M,cache-256K.csv')
d4$idx <- as.numeric(row.names(d4))

d1a_l <- melt(d1a, id.vars = c('idx'),
            variable.name = 'name',
            value.name = 'time')
d1b_l <- melt(d1b, id.vars = c('idx'),
            variable.name = 'name',
            value.name = 'time')
d2a_l <- melt(d2a, id.vars = c('idx'),
            variable.name = 'name',
            value.name = 'time')
d2b_l <- melt(d2b, id.vars = c('idx'),
            variable.name = 'name',
            value.name = 'time')
d3_l <- melt(d3, id.vars = c('idx'),
            variable.name = 'name',
            value.name = 'time')
d4_l <- melt(d4, id.vars = c('idx'),
            variable.name = 'name',
            value.name = 'time')

svg('edge-shutdown-time.svg', width=12, height=12)
p1a = ggplot(d1a_l, aes(x=idx, y=time, color=name)) +
    scale_color_manual(values=palette) +
    ylim(0, 900) +
    geom_line() +
    geom_point() +
    xlab('Tests') +
    ylab('Time (ms)') +
    theme_bw() + 
    theme(legend.title=element_blank()) +
    ggtitle('(1a) modprobe-syncfs_cpu-90,ping-i1-s600,dd-1x10M')
p1b = ggplot(d1b_l, aes(x=idx, y=time, color=name)) +
    scale_color_manual(values=palette) +
    ylim(0, 900) +
    geom_line() +
    geom_point() +
    xlab('Tests') +
    ylab('Time (ms)') +
    theme_bw() +
    theme(legend.title=element_blank()) +
    ggtitle('(1b) modprobe-syncfs_cpu-2,ping-i1-s600,dd-1x10M')
p2a = ggplot(d2a_l, aes(x=idx, y=time, color=name)) +
    scale_color_manual(values=palette) +
    ylim(0, 900) +
    geom_line() +
    geom_point() +
    xlab('Tests') +
    ylab('Time (ms)') +
    theme_bw() +
    theme(legend.title=element_blank()) +
    ggtitle('(2a) rfkill-syncfs_cpu-90,ping-i1-s600,dd-1x10M,cache-256K')
p2b = ggplot(d2b_l, aes(x=idx, y=time, color=name)) +
    scale_color_manual(values=palette) +
    ylim(0, 900) +
    geom_line() +
    geom_point() +
    xlab('Tests') +
    ylab('Time (ms)') +
    theme_bw() +
    theme(legend.title=element_blank()) +
    ggtitle('(2b) rfkill-syncfs_cpu-2,ping-i1-s600,dd-1x10M,cache-256K')
p3 = ggplot(d3_l, aes(x=idx, y=time, color=name)) +
    scale_color_manual(values=palette) +
    ylim(0, 900) +
    geom_line() +
    geom_point() +
    xlab('Tests') +
    ylab('Time (ms)') +
    theme_bw() + 
    theme(legend.title=element_blank()) +
    ggtitle('(3) modprobe-syncfs_cpu-8,ping-i1-s600,sync-iprf-1M,cache-256K')
p4 = ggplot(d4_l, aes(x=idx, y=time, color=name)) +
    scale_color_manual(values=palette) +
    ylim(0, 900) +
    geom_line() +
    geom_point() +
    xlab('Tests') +
    ylab('Time (ms)') +
    theme_bw() + 
    theme(legend.title=element_blank()) +
    ggtitle('(4) rfkill-syncfs_cpu-8,ping-i1-s600,sync-iprf-1M,cache-256K')

grid.arrange(p1a, p1b, p2a, p2b, p3, p4, nrow=3)
dev.off()

save.image(file='data.RData')

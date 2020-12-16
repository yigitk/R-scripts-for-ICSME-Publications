setwd('C:/Users/Yigit/Desktop/Reports/')
file.data <-
  sapply(list.files(pattern = 'csv$'), simplify = FALSE, function(x) {
    return(read.csv(x))
  })
file.data <- Reduce(rbind, file.data)
file.data$Bug <- paste('Bug', file.data$Bug, sep = '-')
rf1.data <- subset(file.data, file.data$Formula == 'RAinF1')
cbPalette <-
  c(
    "#999999",
    "#E69F00",
    "#56B4E9",
    "#009E73",
    "#F0E442",
    "#0072B2",
    "#D55E00",
    "#CC79A7"
  )
library(ggplot2)

#Rank scores for CBSFL
a <- subset(rf1.data, rf1.data$ScoringScheme == 'first')
d <- aggregate(a, list(a$Project), mean)
d <- d[order(d$Score), ]
plot <-
  ggplot(data = d, aes(
    x = reorder(Group.1, Score),
    y = Score,
    fill = Group.1
  )) +
  #geom_boxplot(outlier.alpha = 0.4, outlier.size = 0.8, notch = TRUE) +
  geom_col() +
  #scale_y_continuous(breaks=c(1, 10, 100,900))+
  # geom_bar() +
  #scale_fill_brewer(palette = 'Pastel2')+
  scale_fill_manual(values = cbPalette) +
  #scale_y_log10(limits=c(1,1000), breaks=c(1,10,100,1000)) +
  theme_bw() +
  theme(legend.position = "top", legend.box = "horizontal") +
  guides(
    fill = guide_legend(
      title = "Using Relative F1 as Suspiciousness Score",
      title.position = "top",
      title.hjust = 0.5,
      title.vjust = 3.0,
      title.theme = element_text(size = 9, color = "grey")
    )
  ) +
  labs(title = 'Average score for All Projects', x = 'Project', y = 'Rank ') +
  theme(
    axis.text.x = element_text(
      angle = 45,
      vjust = 0.5,
      size = 10
    ),
    plot.title = element_text(hjust = 0.5, face = 'bold', size = 12),
    axis.title = element_text(size = 10, face = 'bold')
  )

ggsave("RF1_AllProjects.pdf", plot, device = "pdf")


#All Scores Best Case RankScore
mean.data <- subset(file.data, file.data$ScoringScheme == 'first')
mean.data <-
  subset(
    mean.data,
    mean.data$Formula == 'RR' |
      mean.data$Formula == 'LKlosgen' |
      mean.data$Formula == 'RRprec' |
      mean.data$Formula == 'RAinF1' | mean.data$Formula == 'RAinOchiai'
  )
agr.mean.data <-
  aggregate(
    mean.data,
    list(
      Subject = mean.data$Project,
      Form = mean.data$Formula,
      Scheme = mean.data$ScoringScheme
    ),
    mean
  )
plot <-
  ggplot(data = agr.mean.data, aes(
    x = reorder(Form, Score) ,
    y = Score,
    fill = reorder(Subject, Score)
  )) +
  #geom_boxplot(outlier.alpha = 0.4, outlier.size = 0.8, notch = TRUE) +
  geom_col(position = 'dodge2') +
  facet_wrap( ~ Scheme) +
  #scale_y_continuous(breaks=c(1, 10, 100,900))+
  #scale_fill_brewer(palette = 'Pastel2')+
  scale_fill_manual(values = cbPalette) +
  #scale_y_log10(limits=c(1,3500), breaks=c(1,10,100,1000)) +
  theme_bw() +
  theme(legend.position = "top", legend.box = "horizontal") +
  guides(fill = guide_legend(title = " ")) +
  labs(title = 'Comparing Suspiciousness Scores for Best Case ', x = 'Metric', y = 'Score') +
  theme(
    axis.text.x = element_text(
      angle = 70,
      vjust = 0.5,
      hjust = 0.5,
      size = 10
    ),
    plot.title = element_text(hjust = 0.5, face = 'bold', size = 11.5),
    axis.title = element_text(size = 10, face = 'bold')
  )
ggsave("all-scores_RP.png", plot, device = "png")

#2 Score RankScore
mean.data <- subset(file.data, file.data$ScoringScheme == 'first')
mean.data <-
  subset(mean.data,
         mean.data$Formula == 'RR'  | mean.data$Formula == 'recall')
agr.mean.data <-
  aggregate(
    mean.data,
    list(
      Subject = mean.data$Project,
      Form = mean.data$Formula,
      Scheme = mean.data$ScoringScheme
    ),
    mean
  )
plot <-
  ggplot(data = agr.mean.data, aes(
    x = reorder(Form, Score) ,
    y = Score,
    fill = reorder(Subject, Score)
  )) +
  #geom_boxplot(outlier.alpha = 0.4, outlier.size = 0.8, notch = TRUE) +
  geom_col(position = 'dodge2') +
  facet_wrap( ~ Scheme) +
  #scale_y_continuous(breaks=c(1, 10, 100,900))+
  #scale_fill_brewer(palette = 'Pastel2')+
  scale_fill_manual(values = cbPalette) +
  #scale_y_log10(limits=c(1,3500), breaks=c(1,10,100,1000)) +
  theme_bw() +
  theme(legend.position = "top", legend.box = "horizontal") +
  guides(fill = guide_legend(title = " ")) +
  labs(title = 'Comparing Suspiciousness Scores for Best Case ', x = 'Metric', y = 'Score') +
  theme(
    axis.text.x = element_text(
      angle = 70,
      vjust = 0.5,
      hjust = 0.5,
      size = 10
    ),
    plot.title = element_text(hjust = 0.5, face = 'bold', size = 11.5),
    axis.title = element_text(size = 10, face = 'bold')
  )
ggsave("all-scores_RR-recall.png", plot, device = "png")
## Comparison of any 2 eval methods ##
var1 <- 'F1'
var2 <- 'RAinF1'

file.data.temp <-
  subset(file.data, file.data$Formula == var1 |
           file.data$Formula == var2)
file.data.temp <-
  subset (file.data.temp, file.data.temp$Project == 'Chart')
file.data.temp <-
  subset (file.data.temp, file.data.temp$ScoringScheme == 'first')

plot <- ggplot(file.data.temp) +
  geom_density(aes(x = Score, alpha = 0.6, fill = Formula)) +
  #facet_wrap(~Project) +
  guides(alpha = FALSE) +
  scale_fill_manual(values = cbPalette) +
  #scale_x_log10(limits=c(1,3500), breaks=c(1,10,100,1000)) +
  guides(
    fill = guide_legend(
      title = "Subject: Otto  Method: Relative F1 ",
      title.position = "top",
      title.hjust = 0.5,
      title.theme = element_text(size = 10, color = 'grey'),
      label.theme = element_text(size = 9)
    )
  ) +
  labs(title = "Comparing Standard Rank Score and HTRank (Probablity Density)", x = 'Score ', y = 'Density') +
  theme_bw() +
  theme(
    plot.title = element_text(face = 'bold', hjust = 0.5, size = 12),
    legend.position = 'top',
    strip.text = element_text(face = 'bold')
  )
ggsave("cbsfl-vs-sbbfl-otto.pdf", plot, device = "pdf")

#OLD
ggplot(data = file.data, aes(
  x = Formula,
  y = -log10(Score),
  fill = ScoringScheme
)) +
  geom_boxplot(outlier.alpha = 0.4,
               outlier.size = 0.8,
               notch = TRUE) +
  theme_bw() +
  guides(fill = guide_legend(title = "Scoring Scheme")) +
  labs(title = 'Cumulative Scores', x = 'Formula', y = 'Score (log scale)') +
  theme(
    axis.text.x = element_text(
      angle = 45,
      vjust = 0.5,
      size = 10
    ),
    plot.title = element_text(hjust = 0.5, face = 'bold', size = 16),
    axis.title = element_text(size = 12, face = 'bold')
  )
#####
# define 3 data sets
otto.mean <-
  aggregate(otto.data,
            list(Version = otto.data$version, Eval = otto.data$eval),
            mean)
otto.rank <- subset(otto.mean, otto.mean$Eval == 'RankList')
otto.B <-
  subset(otto.mean, otto.mean$Eval == 'Markov + Behavioral-Jumps(0.5)')
otto.BS <-
  subset(otto.mean,
         otto.mean$Eval == 'Markov + Behavioral+Spacial-Jumps(0.5)')
otto.S <-
  subset(otto.mean, otto.mean$Eval == 'Markov + Spacial-Jumps(0.5)')

# plot the first curve by calling plot() function
# First curve is plotted
plot(
  seq_along(otto.rank$Version),
  otto.rank$rank,
  type = "o",
  col = "#34FC7B",
  pch = 16,
  lty = 1,
  xlim = c(0, 20),
  ylim = c(0, 500),
  ylab = "Rank",
  xlab = "Version",
  lwd = 3,
  cex = 2
)

# Add second curve to the same plot by calling points() and lines()
# Use symbol '*' for points.
points(
  seq_along(otto.B$Version),
  otto.B$rank,
  col = "pink",
  pch = "*",
  lwd = 3,
  cex = 2
)
lines(
  seq_along(otto.B$Version),
  otto.B$rank,
  col = "pink",
  lty = 1,
  lwd = 3,
  cex = 2
)

# Add Third curve to the same plot by calling points() and lines()
# Use symbol '+' for points.
points(
  seq_along(otto.S$Version),
  otto.S$rank,
  col = "lavender",
  pch = "+",
  lwd = 3,
  cex = 2
)
lines(
  seq_along(otto.S$Version),
  otto.S$rank,
  col = "lavender",
  lty = 1,
  lwd = 3,
  cex = 2
)

points(
  seq_along(otto.BS$Version),
  otto.BS$rank,
  col = "yellow",
  pch = "+",
  lwd = 3,
  cex = 2
)
lines(
  seq_along(otto.BS$Version),
  otto.BS$rank,
  col = "yellow",
  lty = 1,
  lwd = 3,
  cex = 2
)

# Adding a legend inside box at the location (2,40) in graph coordinates.
# Note that the order of plots are maintained in the vectors of attributes.
legend(
  1,
  100,
  legend = c("rank", "behavioral", "spacial", "b + s"),
  col = c("#34FC7B", "pink", "lavender", "yellow"),
  pch = c("0", "*", "+", "+"),
  lty = c(1, 2, 3),
  ncol = 1
)


## Comparison ##
var1 <- 'RRprec'
var2 <- 'recallPrec'

file.data.temp <-
  subset(file.data, file.data$Formula == var1 |
           file.data$Formula == var2)

ggplot(file.data.temp) +
  geom_density(aes(
    x = -log10(Score),
    alpha = 0.6,
    fill = Formula
  )) +
  facet_wrap( ~ ScoringScheme) +
  guides(alpha = FALSE) +
  labs(title = paste(var1, var2, sep = ' vs '),
       x = 'Score (log scale)',
       y = 'Density') +
  theme_bw() +
  theme(
    plot.title = element_text(face = 'bold', hjust = 0.5),
    legend.title = element_blank(),
    legend.position = 'top',
    strip.text = element_text(face = 'bold')
  )

ggplot(file.data.temp) +
  geom_histogram(aes(
    x = -log10(Score),
    alpha = 0.6,
    fill = Formula
  ), position = 'dodge2') +
  facet_wrap( ~ ScoringScheme) +
  guides(alpha = FALSE) +
  labs(title = 'Tarantula vs Ochiai', x = 'Score (log scale)', y = 'Density') +
  theme_bw() +
  theme(
    plot.title = element_text(face = 'bold', hjust = 0.5),
    legend.title = element_blank(),
    legend.position = 'top',
    strip.text = element_text(face = 'bold')
  )

#######################################
## Compare to Baseline ##
baseline <- 'RA'
metric <- 'ochiai'

baseline.data <- subset(file.data, file.data$Formula == baseline)
metric.data <- subset(file.data, file.data$Formula == metric)

baseline.data <-
  baseline.data[order(baseline.data$Project,
                      baseline.data$Bug,
                      baseline.data$ScoringScheme), ]
metric.data <-
  metric.data[order(metric.data$Project,
                    metric.data$Bug,
                    metric.data$ScoringScheme), ]

diff.scores <-
  sapply(unique(baseline.data$Project), simplify = TRUE, function(prj) {
    baseline.data.local <-
      subset(baseline.data, baseline.data$Project == prj)
    metric.data.local <-
      subset(metric.data, metric.data$Project == prj)
    baseline.m <-
      sapply(c('first', 'mean', 'last'), simplify = TRUE, function(s.scheme) {
        return(median(baseline.data.local$Score[which(baseline.data.local$ScoringScheme == s.scheme)]))
      })
    metric.m <-
      sapply(c('first', 'mean', 'last'), simplify = TRUE, function(s.scheme) {
        return(median(metric.data.local$Score[which(metric.data.local$ScoringScheme == s.scheme)]))
      })
    return((baseline.m - metric.m) / baseline.m)
  })
colnames(diff.scores) <- unique(baseline.data$Project)
diff.scores <- diff.scores * 100
require(reshape2)
data.ft <- reshape2::melt(diff.scores, value.name = 'DiffScore')
colnames(data.ft) <- c('ScoringScheme', 'Formula', 'DiffScore')

ggplot(data.ft, aes(x = Formula,
                    y = DiffScore,
                    fill = ScoringScheme)) +
  geom_col(position = 'dodge') +
  scale_fill_brewer(palette = 'Paired') +
  theme_bw() +
  labs(title = paste(baseline, metric, sep = ' vs '),
       x = 'Project',
       y = 'Reduction') +
  theme(plot.title = element_text(hjust = 0.5, face = 'bold', size = 16))


diff.scores <-
  ((baseline.data$Score - metric.data$Score) / baseline.data$Score) * 100
diff.data <- data.frame(
  'Project' = metric.data$Project,
  'Bug' = metric.data$Bug,
  'ScoringScheme' = metric.data$ScoringScheme,
  'BaselineScores' = baseline.data$Score,
  'MetricScores' = metric.data$Score,
  'DiffScores' = diff.scores
)


####################################
diff.data <- metric.data
diff.data$diff_score <-
  (baseline.data$Score - metric.data$Score) / baseline.data$Score

ggplot(data = diff.data, aes(x = diff_score, fill = 'steelblue', alpha = 0.8)) +
  geom_density() +
  facet_wrap( ~ ScoringScheme) +
  scale_fill_brewer(palette = "Paired") +
  theme_bw() +
  guides(alpha = FALSE, fill = FALSE) +
  labs(title = 'Baseline Comparison', x = 'Cost Reduction', y = 'Density') +
  theme(
    plot.title = element_text(hjust = 0.5, face = 'bold', size = 16),
    axis.title = element_text(size = 12, face = 'bold')
  )

ggplot(diff.data, aes(x = Project,
                      y = diff_score,
                      fill = ScoringScheme)) +
  geom_col(position = 'dodge') +
  scale_fill_brewer(palette = 'Paired') +
  theme_bw() +
  labs(title = paste(baseline, metric, sep = ' vs '),
       x = 'Project',
       y = 'Reduction') +
  theme(plot.title = element_text(hjust = 0.5, face = 'bold', size = 16))


## Process Ranks vs RA Baseline ##
file.data.wra <- subset(file.data, file.data$Formula == 'RA')
file.data.wra.sorted <-
  file.data.wra[order(file.data.wra$Project,
                      file.data.wra$Bug,
                      file.data.wra$ScoringScheme), ]
file.data.wora <- subset(file.data, file.data$Formula != 'RA')

## Log Scale Scores ##
processed <-
  sapply(as.character(unique(file.data.wora$Formula)), simplify = TRUE, function(x) {
    local <- subset(file.data.wora, file.data.wora$Formula == x)
    local <-
      local[order(local$Project, local$Bug, local$ScoringScheme), ]
    return(local$Score)
  })

diff.scores <-
  (-log10(file.data.wra.sorted$Score) - (-log10(processed))) / -log10(file.data.wra.sorted$Score)
diff.scores <- diff.scores * 100
diff.scores.ft <-
  sapply(1:ncol(diff.scores), simplify = FALSE, function(x) {
    return(cbind(diff.scores[, x], file.data.wra.sorted[, c(1, 2, 4)], rep(
      colnames(diff.scores)[x], nrow(diff.scores)
    )))
  })
diff.scores.ft <-
  do.call(rbind, lapply(diff.scores.ft, function(x) {
    return(x)
  }))
colnames(diff.scores.ft) <-
  c('DiffScore', 'Project', 'Bug', 'ScoringScheme', 'Formula')

ggplot(diff.scores.ft,
       aes(x = Formula,
           y = DiffScore,
           fill = ScoringScheme)) +
  geom_col(position = 'dodge2') +
  scale_fill_brewer(palette = 'Paired') +
  theme_bw() +
  labs(title = paste(baseline, metric, sep = ' vs '),
       x = 'Project',
       y = 'Reduction') +
  theme(plot.title = element_text(hjust = 0.5, face = 'bold', size = 16))




## Mean Scores ##
processed <-
  sapply(as.character(unique(file.data.wora$Formula)), simplify = TRUE, function(x) {
    local <- subset(file.data.wora, file.data.wora$Formula == x)
    local.scores <-
      sapply(c('first', 'mean', 'last'), simplify = TRUE, function(s.scheme) {
        local.local <- subset(local, local$ScoringScheme == s.scheme)
        file.data.wra.local <-
          subset(file.data.wra, file.data.wra$ScoringScheme == s.scheme)
        baseline.m <- median(file.data.wra.local$Score)
        metric.m <- median(local.local$Score)
        return((baseline.m - metric.m) / baseline.m)
      })
    return(local.scores * 100)
  })

require(reshape2)
data.ft <- reshape2::melt(processed, value.name = 'DiffScore')
colnames(data.ft) <- c('ScoringScheme', 'Formula', 'DiffScore')

ggplot(data.ft, aes(x = Formula,
                    y = DiffScore,
                    fill = ScoringScheme)) +
  geom_col(position = 'dodge') +
  scale_fill_brewer(palette = 'Paired') +
  theme_bw() +
  labs(title = paste(baseline, metric, sep = ' vs '),
       x = 'Project',
       y = 'Reduction') +
  theme(plot.title = element_text(hjust = 0.5, face = 'bold', size = 16))



## Rank Separately ##
ranks.sep <-
  sapply(unique(file.data$Project), simplify = FALSE, function(prj) {
    file.data.local <- subset(file.data, file.data$Project == prj)
    temp.data <- data.frame(
      'grp' = paste(file.data.local$Bug,
                    file.data.local$ScoringScheme,
                    sep = '_'),
      'formula' = file.data.local$Formula,
      'score' = file.data.local$Score,
      stringsAsFactors = FALSE
    )
    ranks.sep <-
      sapply(unique(temp.data$grp), simplify = FALSE, function(x) {
        local.dat <- subset(temp.data, temp.data$grp == x)
        local.dat <- setNames(local.dat$score, local.dat$formula)
        local.dat <- rank(local.dat, ties.method = 'average')
        return(local.dat[order(names(local.dat))])
      })
    ranks.sep.ft <- Reduce(rbind, ranks.sep)
    rownames(ranks.sep.ft) <- names(ranks.sep)
    
    last.means <-
      colMeans(ranks.sep.ft[grep(pattern = 'last', rownames(ranks.sep.ft)), ])
    mean.means <-
      colMeans(ranks.sep.ft[grep(pattern = 'mean', rownames(ranks.sep.ft)), ])
    first.means <-
      colMeans(ranks.sep.ft[grep(pattern = 'first', rownames(ranks.sep.ft)), ])
    local.res <-
      data.frame(
        'Project' = rep(prj, length(c(
          first.means, mean.means, last.means
        ))),
        'Mean Ranks' = c(first.means, mean.means, last.means),
        'Scoring Scheme' = c(
          rep('First', length(first.means)),
          rep('Mean', length(mean.means)),
          rep('Last', length(last.means))
        ),
        'Formula' = names(c(first.means, mean.means, last.means))
      )
    return(local.res)
  })
ranks.sep <- Reduce(rbind, ranks.sep)

## Fix ##
ggplot(ranks.sep,
       aes(
         x = Project,
         y = Mean.Ranks,
         fill = Formula,
         label = Scoring.Scheme
       )) +
  geom_col(position = 'dodge2') +
  scale_fill_brewer(palette = 'Paired') +
  geom_text(
    size = 2.5,
    position = position_dodge2(width = 0.9, padding = 0.8),
    aes(
      angle = 90,
      vjust = 0.35,
      hjust = -0.5
    )
  ) +
  theme_bw() +
  labs(title = 'Mean FLT Rank', x = 'Project', y = 'Rank (Mean)') +
  theme(plot.title = element_text(hjust = 0.5, face = 'bold', size = 16))

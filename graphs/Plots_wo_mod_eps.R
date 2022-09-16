# load packages
library(ggplot2)
library(gridExtra)

# load data
oil_gdp <- read.csv("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\oil_gdp_wo_mod.csv", header = TRUE, sep = ",")


# Plot Symmetric
symmetric_AUS <- ggplot(subset(oil_gdp, loc %in% c("AUS")), aes(x = period)) + 
  geom_line(aes(y = symmetric), size = 0.5) + 
  geom_line(aes(y = symmetric_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = symmetric_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
symmetric_BEL <- ggplot(subset(oil_gdp, loc %in% c("BEL")), aes(x = period)) + 
  geom_line(aes(y = symmetric), size = 0.5) + 
  geom_line(aes(y = symmetric_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = symmetric_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
symmetric_CAN <- ggplot(subset(oil_gdp, loc %in% c("CAN")), aes(x = period)) + 
  geom_line(aes(y = symmetric), size = 0.5) + 
  geom_line(aes(y = symmetric_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = symmetric_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
symmetric_FIN <- ggplot(subset(oil_gdp, loc %in% c("FIN")), aes(x = period)) + 
  geom_line(aes(y = symmetric), size = 0.5) + 
  geom_line(aes(y = symmetric_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = symmetric_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
symmetric_FRA <- ggplot(subset(oil_gdp, loc %in% c("FRA")), aes(x = period)) + 
  geom_line(aes(y = symmetric), size = 0.5) + 
  geom_line(aes(y = symmetric_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = symmetric_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
symmetric_GBR <- ggplot(subset(oil_gdp, loc %in% c("GBR")), aes(x = period)) + 
  geom_line(aes(y = symmetric), size = 0.5) + 
  geom_line(aes(y = symmetric_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = symmetric_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
symmetric_GER <- ggplot(subset(oil_gdp, loc %in% c("GER")), aes(x = period)) + 
  geom_line(aes(y = symmetric), size = 0.5) + 
  geom_line(aes(y = symmetric_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = symmetric_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
symmetric_JPN <- ggplot(subset(oil_gdp, loc %in% c("JPN")), aes(x = period)) + 
  geom_line(aes(y = symmetric), size = 0.5) + 
  geom_line(aes(y = symmetric_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = symmetric_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
symmetric_NLD <- ggplot(subset(oil_gdp, loc %in% c("NLD")), aes(x = period)) + 
  geom_line(aes(y = symmetric), size = 0.5) + 
  geom_line(aes(y = symmetric_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = symmetric_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
symmetric_NOR <- ggplot(subset(oil_gdp, loc %in% c("NOR")), aes(x = period)) + 
  geom_line(aes(y = symmetric), size = 0.5) + 
  geom_line(aes(y = symmetric_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = symmetric_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
symmetric_SWE <- ggplot(subset(oil_gdp, loc %in% c("SWE")), aes(x = period)) + 
  geom_line(aes(y = symmetric), size = 0.5) + 
  geom_line(aes(y = symmetric_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = symmetric_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
symmetric_USA <- ggplot(subset(oil_gdp, loc %in% c("USA")), aes(x = period)) + 
  geom_line(aes(y = symmetric), size = 0.5) + 
  geom_line(aes(y = symmetric_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = symmetric_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)


# Plot Asymmetric Positive
asymmetric_pos_AUS <- ggplot(subset(oil_gdp, loc %in% c("AUS")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_pos), size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_pos_BEL <- ggplot(subset(oil_gdp, loc %in% c("BEL")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_pos), size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_pos_CAN <- ggplot(subset(oil_gdp, loc %in% c("CAN")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_pos), size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_pos_FIN <- ggplot(subset(oil_gdp, loc %in% c("FIN")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_pos), size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_pos_FRA <- ggplot(subset(oil_gdp, loc %in% c("FRA")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_pos), size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_pos_GBR <- ggplot(subset(oil_gdp, loc %in% c("GBR")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_pos), size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_pos_GER <- ggplot(subset(oil_gdp, loc %in% c("GER")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_pos), size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_pos_JPN <- ggplot(subset(oil_gdp, loc %in% c("JPN")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_pos), size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_pos_NLD <- ggplot(subset(oil_gdp, loc %in% c("NLD")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_pos), size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_pos_NOR <- ggplot(subset(oil_gdp, loc %in% c("NOR")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_pos), size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_pos_SWE <- ggplot(subset(oil_gdp, loc %in% c("SWE")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_pos), size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_pos_USA <- ggplot(subset(oil_gdp, loc %in% c("USA")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_pos), size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_pos_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)


# Plot Asymmetric Negative
asymmetric_neg_AUS <- ggplot(subset(oil_gdp, loc %in% c("AUS")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_neg), size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_neg_BEL <- ggplot(subset(oil_gdp, loc %in% c("BEL")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_neg), size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_neg_CAN <- ggplot(subset(oil_gdp, loc %in% c("CAN")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_neg), size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_neg_FIN <- ggplot(subset(oil_gdp, loc %in% c("FIN")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_neg), size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_neg_FRA <- ggplot(subset(oil_gdp, loc %in% c("FRA")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_neg), size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_neg_GBR <- ggplot(subset(oil_gdp, loc %in% c("GBR")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_neg), size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_neg_GER <- ggplot(subset(oil_gdp, loc %in% c("GER")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_neg), size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_neg_JPN <- ggplot(subset(oil_gdp, loc %in% c("JPN")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_neg), size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_neg_NLD <- ggplot(subset(oil_gdp, loc %in% c("NLD")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_neg), size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_neg_NOR <- ggplot(subset(oil_gdp, loc %in% c("NOR")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_neg), size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_neg_SWE <- ggplot(subset(oil_gdp, loc %in% c("SWE")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_neg), size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
asymmetric_neg_USA <- ggplot(subset(oil_gdp, loc %in% c("USA")), aes(x = period)) + 
  geom_line(aes(y = asymmetric_neg), size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = asymmetric_neg_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)


# Plot SOPI
sopi_AUS <- ggplot(subset(oil_gdp, loc %in% c("AUS")), aes(x = period)) + 
  geom_line(aes(y = sopi), size = 0.5) + 
  geom_line(aes(y = sopi_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopi_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopi_BEL <- ggplot(subset(oil_gdp, loc %in% c("BEL")), aes(x = period)) + 
  geom_line(aes(y = sopi), size = 0.5) + 
  geom_line(aes(y = sopi_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopi_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopi_CAN <- ggplot(subset(oil_gdp, loc %in% c("CAN")), aes(x = period)) + 
  geom_line(aes(y = sopi), size = 0.5) + 
  geom_line(aes(y = sopi_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopi_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopi_FIN <- ggplot(subset(oil_gdp, loc %in% c("FIN")), aes(x = period)) + 
  geom_line(aes(y = sopi), size = 0.5) + 
  geom_line(aes(y = sopi_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopi_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopi_FRA <- ggplot(subset(oil_gdp, loc %in% c("FRA")), aes(x = period)) + 
  geom_line(aes(y = sopi), size = 0.5) + 
  geom_line(aes(y = sopi_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopi_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopi_GBR <- ggplot(subset(oil_gdp, loc %in% c("GBR")), aes(x = period)) + 
  geom_line(aes(y = sopi), size = 0.5) + 
  geom_line(aes(y = sopi_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopi_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopi_GER <- ggplot(subset(oil_gdp, loc %in% c("GER")), aes(x = period)) + 
  geom_line(aes(y = sopi), size = 0.5) + 
  geom_line(aes(y = sopi_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopi_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopi_JPN <- ggplot(subset(oil_gdp, loc %in% c("JPN")), aes(x = period)) + 
  geom_line(aes(y = sopi), size = 0.5) + 
  geom_line(aes(y = sopi_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopi_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopi_NLD <- ggplot(subset(oil_gdp, loc %in% c("NLD")), aes(x = period)) + 
  geom_line(aes(y = sopi), size = 0.5) + 
  geom_line(aes(y = sopi_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopi_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopi_NOR <- ggplot(subset(oil_gdp, loc %in% c("NOR")), aes(x = period)) + 
  geom_line(aes(y = sopi), size = 0.5) + 
  geom_line(aes(y = sopi_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopi_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopi_SWE <- ggplot(subset(oil_gdp, loc %in% c("SWE")), aes(x = period)) + 
  geom_line(aes(y = sopi), size = 0.5) + 
  geom_line(aes(y = sopi_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopi_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopi_USA <- ggplot(subset(oil_gdp, loc %in% c("USA")), aes(x = period)) + 
  geom_line(aes(y = sopi), size = 0.5) + 
  geom_line(aes(y = sopi_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopi_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)


# Plot SOPD
sopd_AUS <- ggplot(subset(oil_gdp, loc %in% c("AUS")), aes(x = period)) + 
  geom_line(aes(y = sopd), size = 0.5) + 
  geom_line(aes(y = sopd_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopd_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopd_BEL <- ggplot(subset(oil_gdp, loc %in% c("BEL")), aes(x = period)) + 
  geom_line(aes(y = sopd), size = 0.5) + 
  geom_line(aes(y = sopd_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopd_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopd_CAN <- ggplot(subset(oil_gdp, loc %in% c("CAN")), aes(x = period)) + 
  geom_line(aes(y = sopd), size = 0.5) + 
  geom_line(aes(y = sopd_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopd_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopd_FIN <- ggplot(subset(oil_gdp, loc %in% c("FIN")), aes(x = period)) + 
  geom_line(aes(y = sopd), size = 0.5) + 
  geom_line(aes(y = sopd_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopd_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopd_FRA <- ggplot(subset(oil_gdp, loc %in% c("FRA")), aes(x = period)) + 
  geom_line(aes(y = sopd), size = 0.5) + 
  geom_line(aes(y = sopd_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopd_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopd_GBR <- ggplot(subset(oil_gdp, loc %in% c("GBR")), aes(x = period)) + 
  geom_line(aes(y = sopd), size = 0.5) + 
  geom_line(aes(y = sopd_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopd_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopd_GER <- ggplot(subset(oil_gdp, loc %in% c("GER")), aes(x = period)) + 
  geom_line(aes(y = sopd), size = 0.5) + 
  geom_line(aes(y = sopd_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopd_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopd_JPN <- ggplot(subset(oil_gdp, loc %in% c("JPN")), aes(x = period)) + 
  geom_line(aes(y = sopd), size = 0.5) + 
  geom_line(aes(y = sopd_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopd_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopd_NLD <- ggplot(subset(oil_gdp, loc %in% c("NLD")), aes(x = period)) + 
  geom_line(aes(y = sopd), size = 0.5) + 
  geom_line(aes(y = sopd_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopd_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopd_NOR <- ggplot(subset(oil_gdp, loc %in% c("NOR")), aes(x = period)) + 
  geom_line(aes(y = sopd), size = 0.5) + 
  geom_line(aes(y = sopd_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopd_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopd_SWE <- ggplot(subset(oil_gdp, loc %in% c("SWE")), aes(x = period)) + 
  geom_line(aes(y = sopd), size = 0.5) + 
  geom_line(aes(y = sopd_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopd_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
sopd_USA <- ggplot(subset(oil_gdp, loc %in% c("USA")), aes(x = period)) + 
  geom_line(aes(y = sopd), size = 0.5) + 
  geom_line(aes(y = sopd_low), linetype = "longdash", color = "blue", size = 0.5) + 
  geom_line(aes(y = sopd_high), linetype = "longdash", color = "blue", size = 1) + 
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) + 
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)


# Plot NOPI
nopi_AUS <- ggplot(subset(oil_gdp, loc %in% c("AUS")), aes(x = period)) +
  geom_line(aes(y = nopi), size = 0.5) +
  geom_line(aes(y = nopi_low), linetype = "longdash", color = "blue", size = 0.5) +
  geom_line(aes(y = nopi_high), linetype = "longdash", color = "blue", size = 1) +
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) +
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
nopi_BEL <- ggplot(subset(oil_gdp, loc %in% c("BEL")), aes(x = period)) +
  geom_line(aes(y = nopi), size = 0.5) +
  geom_line(aes(y = nopi_low), linetype = "longdash", color = "blue", size = 0.5) +
  geom_line(aes(y = nopi_high), linetype = "longdash", color = "blue", size = 1) +
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) +
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
nopi_CAN <- ggplot(subset(oil_gdp, loc %in% c("CAN")), aes(x = period)) +
  geom_line(aes(y = nopi), size = 0.5) +
  geom_line(aes(y = nopi_low), linetype = "longdash", color = "blue", size = 0.5) +
  geom_line(aes(y = nopi_high), linetype = "longdash", color = "blue", size = 1) +
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) +
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
nopi_FIN <- ggplot(subset(oil_gdp, loc %in% c("FIN")), aes(x = period)) +
  geom_line(aes(y = nopi), size = 0.5) +
  geom_line(aes(y = nopi_low), linetype = "longdash", color = "blue", size = 0.5) +
  geom_line(aes(y = nopi_high), linetype = "longdash", color = "blue", size = 1) +
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) +
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
nopi_FRA <- ggplot(subset(oil_gdp, loc %in% c("FRA")), aes(x = period)) +
  geom_line(aes(y = nopi), size = 0.5) +
  geom_line(aes(y = nopi_low), linetype = "longdash", color = "blue", size = 0.5) +
  geom_line(aes(y = nopi_high), linetype = "longdash", color = "blue", size = 1) +
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) +
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
nopi_GBR <- ggplot(subset(oil_gdp, loc %in% c("GBR")), aes(x = period)) +
  geom_line(aes(y = nopi), size = 0.5) +
  geom_line(aes(y = nopi_low), linetype = "longdash", color = "blue", size = 0.5) +
  geom_line(aes(y = nopi_high), linetype = "longdash", color = "blue", size = 1) +
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) +
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
nopi_GER <- ggplot(subset(oil_gdp, loc %in% c("GER")), aes(x = period)) +
  geom_line(aes(y = nopi), size = 0.5) +
  geom_line(aes(y = nopi_low), linetype = "longdash", color = "blue", size = 0.5) +
  geom_line(aes(y = nopi_high), linetype = "longdash", color = "blue", size = 1) +
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) +
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
nopi_JPN <- ggplot(subset(oil_gdp, loc %in% c("JPN")), aes(x = period)) +
  geom_line(aes(y = nopi), size = 0.5) +
  geom_line(aes(y = nopi_low), linetype = "longdash", color = "blue", size = 0.5) +
  geom_line(aes(y = nopi_high), linetype = "longdash", color = "blue", size = 1) +
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) +
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
nopi_NLD <- ggplot(subset(oil_gdp, loc %in% c("NLD")), aes(x = period)) +
  geom_line(aes(y = nopi), size = 0.5) +
  geom_line(aes(y = nopi_low), linetype = "longdash", color = "blue", size = 0.5) +
  geom_line(aes(y = nopi_high), linetype = "longdash", color = "blue", size = 1) +
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) +
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
nopi_NOR <- ggplot(subset(oil_gdp, loc %in% c("NOR")), aes(x = period)) +
  geom_line(aes(y = nopi), size = 0.5) +
  geom_line(aes(y = nopi_low), linetype = "longdash", color = "blue", size = 0.5) +
  geom_line(aes(y = nopi_high), linetype = "longdash", color = "blue", size = 1) +
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) +
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
nopi_SWE <- ggplot(subset(oil_gdp, loc %in% c("SWE")), aes(x = period)) +
  geom_line(aes(y = nopi), size = 0.5) +
  geom_line(aes(y = nopi_low), linetype = "longdash", color = "blue", size = 0.5) +
  geom_line(aes(y = nopi_high), linetype = "longdash", color = "blue", size = 1) +
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) +
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)
nopi_USA <- ggplot(subset(oil_gdp, loc %in% c("USA")), aes(x = period)) +
  geom_line(aes(y = nopi), size = 0.5) +
  geom_line(aes(y = nopi_low), linetype = "longdash", color = "blue", size = 0.5) +
  geom_line(aes(y = nopi_high), linetype = "longdash", color = "blue", size = 1) +
  theme(legend.position="none") + scale_x_continuous(breaks=seq(0, 20, 2)) +
  ylab("") + xlab("") + theme(plot.title = element_text(hjust = 0.5)) + theme_bw() + geom_hline(yintercept = 0)

#asymmetric_pos_all <- grid.arrange(asymmetric_pos_AUS, asymmetric_pos_BEL, asymmetric_pos_CAN,
#                                   asymmetric_pos_FIN, asymmetric_pos_FRA, asymmetric_pos_GBR,
#                                   asymmetric_pos_GER, asymmetric_pos_JPN, asymmetric_pos_NLD,
#                                   asymmetric_pos_NOR, asymmetric_pos_SWE, asymmetric_pos_USA, ncol=3)


# save Symmetric
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\symmetric_AUS.eps", plot = symmetric_AUS)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\symmetric_BEL.eps", plot = symmetric_BEL)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\symmetric_CAN.eps", plot = symmetric_CAN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\symmetric_FIN.eps", plot = symmetric_FIN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\symmetric_FRA.eps", plot = symmetric_FRA)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\symmetric_GBR.eps", plot = symmetric_GBR)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\symmetric_GER.eps", plot = symmetric_GER)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\symmetric_JPN.eps", plot = symmetric_JPN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\symmetric_NLD.eps", plot = symmetric_NLD)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\symmetric_NOR.eps", plot = symmetric_NOR)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\symmetric_SWE.eps", plot = symmetric_SWE)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\symmetric_USA.eps", plot = symmetric_USA)

# save Asymmetric Positive
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_pos_AUS.eps", plot = asymmetric_pos_AUS)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_pos_BEL.eps", plot = asymmetric_pos_BEL)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_pos_CAN.eps", plot = asymmetric_pos_CAN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_pos_FIN.eps", plot = asymmetric_pos_FIN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_pos_FRA.eps", plot = asymmetric_pos_FRA)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_pos_GBR.eps", plot = asymmetric_pos_GBR)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_pos_GER.eps", plot = asymmetric_pos_GER)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_pos_JPN.eps", plot = asymmetric_pos_JPN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_pos_NLD.eps", plot = asymmetric_pos_NLD)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_pos_NOR.eps", plot = asymmetric_pos_NOR)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_pos_SWE.eps", plot = asymmetric_pos_SWE)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_pos_USA.eps", plot = asymmetric_pos_USA)

# save Asymmetric Negative
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_neg_AUS.eps", plot = asymmetric_neg_AUS)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_neg_BEL.eps", plot = asymmetric_neg_BEL)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_neg_CAN.eps", plot = asymmetric_neg_CAN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_neg_FIN.eps", plot = asymmetric_neg_FIN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_neg_FRA.eps", plot = asymmetric_neg_FRA)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_neg_GBR.eps", plot = asymmetric_neg_GBR)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_neg_GER.eps", plot = asymmetric_neg_GER)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_neg_JPN.eps", plot = asymmetric_neg_JPN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_neg_NLD.eps", plot = asymmetric_neg_NLD)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_neg_NOR.eps", plot = asymmetric_neg_NOR)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_neg_SWE.eps", plot = asymmetric_neg_SWE)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\asymmetric_neg_USA.eps", plot = asymmetric_neg_USA)

# save SOPI
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopi_AUS.eps", plot = sopi_AUS)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopi_BEL.eps", plot = sopi_BEL)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopi_CAN.eps", plot = sopi_CAN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopi_FIN.eps", plot = sopi_FIN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopi_FRA.eps", plot = sopi_FRA)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopi_GBR.eps", plot = sopi_GBR)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopi_GER.eps", plot = sopi_GER)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopi_JPN.eps", plot = sopi_JPN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopi_NLD.eps", plot = sopi_NLD)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopi_NOR.eps", plot = sopi_NOR)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopi_SWE.eps", plot = sopi_SWE)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopi_USA.eps", plot = sopi_USA)

# save SOPD
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopd_AUS.eps", plot = sopd_AUS)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopd_BEL.eps", plot = sopd_BEL)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopd_CAN.eps", plot = sopd_CAN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopd_FIN.eps", plot = sopd_FIN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopd_FRA.eps", plot = sopd_FRA)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopd_GBR.eps", plot = sopd_GBR)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopd_GER.eps", plot = sopd_GER)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopd_JPN.eps", plot = sopd_JPN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopd_NLD.eps", plot = sopd_NLD)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopd_NOR.eps", plot = sopd_NOR)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopd_SWE.eps", plot = sopd_SWE)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\sopd_USA.eps", plot = sopd_USA)

# save NOPI
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\nopi_AUS.eps", plot = nopi_AUS)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\nopi_BEL.eps", plot = nopi_BEL)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\nopi_CAN.eps", plot = nopi_CAN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\nopi_FIN.eps", plot = nopi_FIN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\nopi_FRA.eps", plot = nopi_FRA)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\nopi_GBR.eps", plot = nopi_GBR)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\nopi_GER.eps", plot = nopi_GER)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\nopi_JPN.eps", plot = nopi_JPN)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\nopi_NLD.eps", plot = nopi_NLD)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\nopi_NOR.eps", plot = nopi_NOR)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\nopi_SWE.eps", plot = nopi_SWE)
ggsave("C:\\Users\\Philip\\sciebo\\Research\\Dissertation\\paper_1\\Files\\Figure 2-7\\eps\\nopi_USA.eps", plot = nopi_USA)

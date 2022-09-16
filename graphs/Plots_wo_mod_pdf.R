# load packages
library(ggplot2)
library(gridExtra)

# load data
oil_gdp <- read.csv("C:\\Users\\Philip\\Desktop\\Figure3\\oil_gdp_wo_mod.csv", header = TRUE, sep = ",")


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
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\symmetric_AUS.pdf", plot = symmetric_AUS)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\symmetric_BEL.pdf", plot = symmetric_BEL)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\symmetric_CAN.pdf", plot = symmetric_CAN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\symmetric_FIN.pdf", plot = symmetric_FIN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\symmetric_FRA.pdf", plot = symmetric_FRA)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\symmetric_GBR.pdf", plot = symmetric_GBR)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\symmetric_GER.pdf", plot = symmetric_GER)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\symmetric_JPN.pdf", plot = symmetric_JPN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\symmetric_NLD.pdf", plot = symmetric_NLD)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\symmetric_NOR.pdf", plot = symmetric_NOR)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\symmetric_SWE.pdf", plot = symmetric_SWE)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\symmetric_USA.pdf", plot = symmetric_USA)

# save Asymmetric Positive
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_pos_AUS.pdf", plot = asymmetric_pos_AUS)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_pos_BEL.pdf", plot = asymmetric_pos_BEL)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_pos_CAN.pdf", plot = asymmetric_pos_CAN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_pos_FIN.pdf", plot = asymmetric_pos_FIN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_pos_FRA.pdf", plot = asymmetric_pos_FRA)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_pos_GBR.pdf", plot = asymmetric_pos_GBR)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_pos_GER.pdf", plot = asymmetric_pos_GER)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_pos_JPN.pdf", plot = asymmetric_pos_JPN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_pos_NLD.pdf", plot = asymmetric_pos_NLD)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_pos_NOR.pdf", plot = asymmetric_pos_NOR)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_pos_SWE.pdf", plot = asymmetric_pos_SWE)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_pos_USA.pdf", plot = asymmetric_pos_USA)

# save Asymmetric Negative
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_neg_AUS.pdf", plot = asymmetric_neg_AUS)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_neg_BEL.pdf", plot = asymmetric_neg_BEL)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_neg_CAN.pdf", plot = asymmetric_neg_CAN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_neg_FIN.pdf", plot = asymmetric_neg_FIN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_neg_FRA.pdf", plot = asymmetric_neg_FRA)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_neg_GBR.pdf", plot = asymmetric_neg_GBR)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_neg_GER.pdf", plot = asymmetric_neg_GER)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_neg_JPN.pdf", plot = asymmetric_neg_JPN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_neg_NLD.pdf", plot = asymmetric_neg_NLD)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_neg_NOR.pdf", plot = asymmetric_neg_NOR)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_neg_SWE.pdf", plot = asymmetric_neg_SWE)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\asymmetric_neg_USA.pdf", plot = asymmetric_neg_USA)

# save SOPI
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopi_AUS.pdf", plot = sopi_AUS)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopi_BEL.pdf", plot = sopi_BEL)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopi_CAN.pdf", plot = sopi_CAN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopi_FIN.pdf", plot = sopi_FIN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopi_FRA.pdf", plot = sopi_FRA)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopi_GBR.pdf", plot = sopi_GBR)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopi_GER.pdf", plot = sopi_GER)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopi_JPN.pdf", plot = sopi_JPN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopi_NLD.pdf", plot = sopi_NLD)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopi_NOR.pdf", plot = sopi_NOR)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopi_SWE.pdf", plot = sopi_SWE)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopi_USA.pdf", plot = sopi_USA)

# save SOPD
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopd_AUS.pdf", plot = sopd_AUS)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopd_BEL.pdf", plot = sopd_BEL)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopd_CAN.pdf", plot = sopd_CAN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopd_FIN.pdf", plot = sopd_FIN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopd_FRA.pdf", plot = sopd_FRA)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopd_GBR.pdf", plot = sopd_GBR)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopd_GER.pdf", plot = sopd_GER)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopd_JPN.pdf", plot = sopd_JPN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopd_NLD.pdf", plot = sopd_NLD)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopd_NOR.pdf", plot = sopd_NOR)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopd_SWE.pdf", plot = sopd_SWE)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\sopd_USA.pdf", plot = sopd_USA)

# save NOPI
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\nopi_AUS.pdf", plot = nopi_AUS)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\nopi_BEL.pdf", plot = nopi_BEL)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\nopi_CAN.pdf", plot = nopi_CAN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\nopi_FIN.pdf", plot = nopi_FIN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\nopi_FRA.pdf", plot = nopi_FRA)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\nopi_GBR.pdf", plot = nopi_GBR)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\nopi_GER.pdf", plot = nopi_GER)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\nopi_JPN.pdf", plot = nopi_JPN)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\nopi_NLD.pdf", plot = nopi_NLD)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\nopi_NOR.pdf", plot = nopi_NOR)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\nopi_SWE.pdf", plot = nopi_SWE)
ggsave("C:\\Users\\Philip\\Desktop\\Figure3\\nopi_USA.pdf", plot = nopi_USA)

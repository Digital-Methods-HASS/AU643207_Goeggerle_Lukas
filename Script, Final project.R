library(plyr)
library(dplyr)
library(ggplot2)

# Manchester United and Liverpool point-comparison
        nld <- EPL_historical_table %>% filter(Team %in% c("Liverpool", "Manchester United"))
        
        ggplot(data = nld, aes(x = as.numeric(Year), y = Pts)) + 
          geom_line(size = 2.0, alpha = 0.7, aes(color = Team)) +
          geom_point(data = subset(nld, Pos == 1), size = 2.0, alpha = 0.7) +
          scale_color_manual(values = c("firebrick","midnightblue")) +
          xlab("Year") +
          ylab("Goals Scored") +
          ggtitle("Liverpool vs. Manchester United EPL Comparison")        
        
# Manchester United and Liverpool goals per season comparison 
        nld <- EPL_historical_table %>% filter(Team %in% c("Manchester United", "Liverpool"))
        
        ggplot(data = nld, aes(x = as.numeric(Year), y = GF)) + 
                geom_line(size = 2.0, alpha = 0.7, aes(color = Team)) +
                geom_point(data = subset(nld, Pos == 1), size = 2.0, alpha = 0.7) +
                scale_color_manual(values = c("firebrick","midnightblue")) +
                xlab("Year") +
                ylab("Golas Scored") +
                ggtitle("Liverpool vs. Manchester United Goals Per Season Comparison")

# Manchester United and Liverpool top 4 finishes 
        topfour <- EPL_historical_table %>% filter(Pos < 5 & Year > 1992)
        
        ggplot(data = topfour, aes((Team))) +
                geom_bar(width = 0.75, fill = "midnightblue") +
                xlab("") +
                ylab("Top 4 Finishes") +
                theme(axis.text.x = element_text(angle=90))
          
        
          
library(shiny)
library(rvest)
library(ggplot2)
library(dplyr)
library(scales)

nba <- read.csv("nba_team_records.csv")

shinyServer(
  function(input, output){
    team <- reactive({team <- input$team})
    season <- reactive({season <- input$season})
    
    output$team <- renderTable({
      nba %>%
        filter(Team == team())
    }, include.rownames = FALSE)
    
    output$winning <- renderPlot({
      team_selected <- nba %>%
        filter(Team == team())
      
      print(
        ggplot(team_selected, aes(x = as.factor(Season), y = Percentage, group = 1)) +
          geom_line(color = "grey", size = 2) + geom_point(size = 5) + 
          xlab("Season") + ylab("Winning Percentage") +
          ggtitle(paste0(team_selected$Team, " Winning % By Season")) +
          theme_bw() +
          theme(axis.text.x = element_text(angle = 45, hjust = 1)))
      })
    
    output$ratings <- renderPlot({
      team_selected <- nba %>%
        filter(Team == team())
    
    print(
      ggplot(team_selected, aes(x = as.factor(Season))) +
        geom_line(aes(y = ORtg, group = 1, color = "Offensive"), size = 2) +
        geom_point(aes(y = ORtg), size = 5, color = "black") +
        geom_line(aes(y = DRtg, group = 1, color = "Defensive"), size = 2) +
        geom_point(aes(y = DRtg), size = 5, color = "black") +
        scale_color_manual(name = "Rating Type", values = c(Offensive = "blue", Defensive = "red")) +
        labs(x = "Season", y = "Rating", title = paste0(team_selected$Team, " Ratings")) +
        theme_bw() +
        theme(axis.text.x = element_text(angle = 45, hjust = 1),
              legend.position = "bottom"))
    })
  }
)

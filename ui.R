library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("NBA Winning Percentages vs Ratings, 2004 - 2016"),
  sidebarPanel(
    p("See your favorite NBA team and how their offensive and defensive ratings have affected their winning percentages."),
    
    selectInput(inputId = "team", label = "Choose Your Team:",
                choices = c("ATL", "BOS", "NJN", "CHA", "CHI", "CLE", "DAL", "DEN", "DET", "GSW",
                            "HOU", "IND", "LAC", "LAL", "MEM", "MIA", "MIL", "MIN", "NOH", "NYK",
                            "OKC", "ORL", "PHI", "PHO", "POR", "SAC", "SAS", "TOR", "UTA", "WAS")),
    tableOutput("team"),
    
    h3("Glossary"),
    p("Offensive Rating: An estimate of points scored per 100 possessions"),
    p("Defensive Rating: An estimate of points allowed per 100 possessions"),
    h3("Summary"),
    p("Successful teams generally have high numbers for offensive rating and low numbers for defensive rating. See where your team needs to improve!")
  ),
  mainPanel(
    plotOutput("winning"),
    plotOutput("ratings")
  )
))

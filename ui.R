pageWithSidebar(
  headerPanel('Application de V. Couallier - Les Iris de Fisher - Master MSS'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(iris),
                selected=names(iris)[[1]]),
    selectInput('ycol', 'Y Variable', names(iris),
                selected=names(iris)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    h3("Bienvenue sur l'application des Iris de Fisher, créée dans le cadre du master MAS parcours MSS.")
    ,hr()
    ,h4("Voici un aperçu des données")
    ,tableOutput('table1')
    ,hr()
    ,h4("Et le graphique de la classification par kmeans")
    ,plotOutput("plot1")
    ,hr()
    ,h4("La table des deux colonnes sélectionnées")
    ,DT::dataTableOutput('data')
  )
)


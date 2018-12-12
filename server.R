library(shiny)
library(ggplot2)

load('res.rda')

function(input, output) {

  output$plot <- renderPlot({

		codon=input[['tRNA']]
		
    p <- ggplot(df[df[,1]==codon,2:4], aes(Var1, f, fill = Freq)) + geom_tile(colour = "white") + 
  scale_x_continuous() + scale_fill_gradient2(low="white", high="red") +
  theme(axis.text.x = element_text(angle = 30, hjust = 1))+labs(x="Position",y="",title=codon)

    print(p)

  }, height=500)
	
  output$plot2 <- renderPlot({

		p <- ggplot(tf, aes(Var1, f, fill = Freq)) + geom_tile(colour = "white") + 
		  scale_fill_gradient2(low="white", high="red") +
		  theme(axis.text.x = element_text(angle = 30, hjust = 1))+labs(x="",y="",title="tRNA frequencies")
			
    print(p)

  }, height=500)

}

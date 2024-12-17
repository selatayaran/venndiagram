# Carregando as bibliotecas necessárias
library(VennDiagram)
library(readxl)

# Carregar os dados do arquivo Excel como um dataframe
tb_df <- read_xlsx("diagramaVenn.xlsx", sheet = "Planilha1")

sets_list <- list(
  "GeneXpert" = which(tb_df$GeneXpert == 1),
  "Culture" = which(tb_df$Culture == 1),
  "Q3" = which(tb_df$Q3 == 1),
  "CaseTB" = which(tb_df$CaseTB == 1)
)

# Criar o diagrama de Venn
venn.plot <- venn.diagram(
  x = sets_list,
  filename = NULL,
  imagetype = "png",
  category.cex = 2,
  category.fontface = "bold",
  category.names.fontsize = 20,  # Altere o tamanho da fonte dos grupos
  lwd = 1,
  col = "transparent",
  cat.col = "black",
  cat.cex = 2,  # Tamanho da fonte das categorias
  #cat.fontfamily = "sans",  # Fonte padrao ("sans")
  cat.fontface = "plain",  # Sem negrito
  fill = c("#77DD77", "#ADD8E6", "#FFFF99", "#9370DB"), #cores do grupos
  cex = 2
)

# Salva o arquivo no diretório especificado
png("venn_plot.png", width = 1800, height = 950)
grid.draw(venn.plot)
dev.off()  # Fecha o dispositivo gráfico e salva o plot como um arquivo PNG
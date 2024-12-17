# **Diagrama de Venn**

Este script em **R** gera um **Diagrama de Venn** com base em dados fornecidos em uma planilha Excel. Ele utiliza as bibliotecas **VennDiagram** e **readxl** para leitura dos dados e geração do gráfico.

---

## **Requisitos**

Antes de executar o script, certifique-se de que os seguintes pacotes estão instalados no R:

- **VennDiagram**: Para criar o diagrama de Venn.  
- **readxl**: Para ler dados de arquivos Excel.

Instale os pacotes com os seguintes comandos no R:

```r
install.packages("VennDiagram", dependencies = TRUE)
install.packages("readxl", dependencies = TRUE)
```

---

## **Entrada**

O script espera um arquivo Excel nomeado `diagramaVenn.xlsx`, contendo uma planilha chamada **"Planilha1"**. A planilha deve ter as seguintes colunas:

- **Amostra**: Número ou id da amostra.
- **GeneXpert**: Valores binários (1 ou 0).
- **Culture**: Valores binários (1 ou 0).
- **Q3**: Valores binários (1 ou 0).
- **CaseTB**: Valores binários (1 ou 0).

### Exemplo da Planilha:

| Amostra  | GeneXpert | Culture | Q3 | CaseTB |
|----------|-----------|---------|----|--------|
| Amostra1 | 1         | 0       | 1  | 1      |
| Amostra2 | 1         | 1       | 0  | 0      |
| Amostra3 | 0         | 1       | 1  | 1      |

---

## **Saída**

O script gera um **Diagrama de Venn** com as categorias especificadas e salva o gráfico como um arquivo **PNG** no diretório de execução.

- **Nome do arquivo gerado:** `venn_plot.png`  
- **Resolução:** 1800 x 950 pixels

---

## **Execução**

1. Coloque o arquivo `diagramaVenn.xlsx` no mesmo diretório do script.  
2. Execute o script no terminal usando o `Rscript`:

```bash
Rscript diagramaVenn.R
```

3. O arquivo **venn_plot.png** será salvo no diretório de execução.

---

## **Personalização**

O script pode ser ajustado para personalizar cores, tamanho das fontes e estilo do diagrama:

- **Cores dos conjuntos:** Editando a linha `fill = c("#77DD77", "#ADD8E6", "#FFFF99", "#9370DB")`.  
- **Tamanho das fontes:** Modificando os parâmetros `category.cex`, `cat.cex` e `cex`.  
- **Tamanho do arquivo de saída:** Ajustando os valores de `width` e `height` em `png()`.

---

## **Dependências do Sistema**

Certifique-se de ter:

- **R instalado** no sistema.  
- **Ferramentas de leitura de Excel** compatíveis com o pacote `readxl`.

---

## **Autor**

**Tainá Selayaran**

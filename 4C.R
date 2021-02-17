#Load libraries
library(tidyverse)
library(tidytext)
library(stm)
library(ggplot2)
library(RColorBrewer)library(tidyverse)
library(tidytext)
library(stm)

#Load dataset
data <- read.csv("https://raw.githubusercontent.com/textmining-utl/chapter4/master/4c_dataset.csv?token=ARBWLQ3RCKTIK7PFAPDEUD3ACZJYA")

#Set seed
set.seed(123)

#Text pre-processing
processed <- textProcessor(data$Title,removepunctuation = TRUE,metadata = data)

out <- prepDocuments(processed$documents,processed$vocab,processed$meta)
docs <- out$documents
vocab <- out$vocab
meta <- out$meta

#Running Structural Topic Modeling (STM)
STM <- stm(documents = out$documents,
           vocab = out$vocab,
           K = 5,
           prevalence =~ Year,
           max.em.its = 75,
           data = out$meta,
           init.type = "Spectral",
           verbose = FALSE)

#Different ways to plot topics with document-topic proportion
#Method 1: Plotting top words using stm package
plot(STM)

#Method 2: Plotting MAP histogram using stm package
plot(STM, type="hist")

#Method 3: Visualizing topic model using ggplot2
topics <- tidy(STM, matrix = "beta")

top_terms <- topics %>%
  group_by(topic) %>%
  top_n(10, beta) %>%
  ungroup() %>%
  arrange(topic, -beta)

top_terms %>%
  mutate(term = reorder(term, beta)) %>%
  ggplot(aes(term, beta, fill = factor(topic))) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~ topic, scales = "free") +
  theme_minimal()+
  theme(plot.title = element_text(hjust = 0.5, size = 18))+
  labs(title="STM for Indian ETDs", caption="Top Terms")+
  ylab("")+
  xlab("")+
  coord_flip()

#Method 4: Interactive Visualization
ldavis <- toLDAvis(STM, docs, R = 5,
                   plot.opts = list(xlab = "PC1", ylab ="PC2"),
                   lambda.step = 0.1,
                   out.dir = "LDAvis",
                   open.browser = interactive(),
                   as.gist = FALSE,
                   reorder.topics = TRUE)

#Understanding topics through top 5 representative documents
findThoughts(STM, texts = data$Title, n = 5, topics = 1)
findThoughts(STM, texts = data$Title, n = 5, topics = 2)
findThoughts(STM, texts = data$Title, n = 5, topics = 3)
findThoughts(STM, texts = data$Title, n = 5, topics = 4)
findThoughts(STM, texts = data$Title, n = 5, topics = 5)

#Topic correlation
topicor <- topicCorr(STM)
plot(topicor)



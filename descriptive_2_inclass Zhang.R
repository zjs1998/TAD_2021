# Descriptive practice


#1. Write two sentences. Save each as a seperate object in R. 

require(quanteda)
txt <- c(sent1 = "Today, the Nets announced that Durant will not play the Lakers due to injury, Kyrie Irving may return in the game tomorrow.",
         sent2 = "In this way, Durant and Davis will definitely miss tomorrow's game between the Nets and the Lakers.")

#2. Combine them into a corpus
corpus_txt<-corpus(txt)

#3. Make this corpus into a dfm with all pre-processing options at their defaults.
dfm_txt<-dfm(corpus_txt)

#4. Now save a second dfm, this time with stopwords removed.
?dfm
dfm_txt1 <- dfm(corpus_txt, remove = stopwords("english"))

#5. Calculate the TTR for each of these dfms (use textstat_lexdiv). Which is higher?
textstat_lexdiv(dfm(dfm_txt1, verbose = FALSE))
textstat_lexdiv(dfm(dfm_txt, verbose = FALSE))
#6. Calculate the Manhattan distance between the two sentences you've constructed (by hand!)

#The Manhattan distance between the two sentences is 0.2085562.

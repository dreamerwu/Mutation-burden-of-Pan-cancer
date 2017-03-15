#Usage: to plot mutation burden & CNV burden of pan-cancer using ggplot2
#Author: Binghao Wu (Harvard Medical School & Massachusetts General Hospital Cancer Center)

library(ggplot2)
library(ggthemes)

data=read.delim("D:/demo/mutation_burden/mutation_burden_cBioportal.txt",head=T,sep="\t")
p=ggplot(data,aes(x=No,y=MUTATION_NUMBER,color=CANCER_TYPE))
pp=p+geom_point()+facet_grid(. ~ CANCER_TYPE,scales="free_x")  # to plot multi panels in a figure, scales="free_x":x axis has different scale, but y axis has fixed scale
ppp=pp+theme_classic()
pppp=ppp+theme(axis.text.x=element_blank(),axis.text.y=element_text(size=14), # cancel x text
               axis.title.x=element_blank(),axis.title.y=element_text(size=14), # cancel x title
               legend.position="none",axis.line=element_line(colour="black"), # cancel legend, change x & y axis lines to black
               axis.line.x=element_line(size=2),axis.line.y=element_line(size=1),line=element_line(size=1.5)) #line size of x is 2, line size of y is 1, scale line size is 1.5
pppp+scale_color_manual(values=c("gold","darkturquoise","darkviolet","deepskyblue","dimgray","firebrick","royalblue","gray","green",
                                 "greenyellow","hotpink","indianred","midnightblue","maroon","mediumorchid","mediumpurple","mediumseagreen",
                                 "peachpuff","brown","darkorange","darkred","darksalmon","darkslateblue","chocolate","cyan","aquamarine","red",
                                 "green","blue","purple","cadetblue4"))         # define different colours to 31 types of cancer                                                                                  


#to plot CNV burden
data=read.delim("D:/demo/mutation_burden/CNV_burden_cBioportal.txt",head=T,sep="\t")
p=ggplot(data,aes(x=No,y=Fraction_of_copy_number_altered_genome,color=CANCER_TYPE))
pp=p+geom_point()+facet_grid(. ~ CANCER_TYPE,scales="free_x")  # to plot multi panels in a figure, scales="free_x":x axis has different scale, but y axis has fixed scale
ppp=pp+theme_classic()
pppp=ppp+theme(axis.text.x=element_blank(),axis.text.y=element_text(size=14), # cancel x text
               axis.title.x=element_blank(),axis.title.y=element_text(size=14), # cancel x title
               legend.position="none",
               axis.line=element_line(colour="black"), # cancel legend, change x & y axis lines to black
               axis.line.x=element_line(size=2),axis.line.y=element_line(size=1),line=element_line(size=1.5)) #line size of x is 2, line size of y is 1, scale line size is 1.5
pppp+scale_color_manual(values=c("gold","darkturquoise","darkviolet","deepskyblue","dimgray","firebrick","royalblue","gray","green",
                                 "greenyellow","hotpink","indianred","midnightblue","maroon","mediumorchid","mediumpurple","mediumseagreen",
                                 "peachpuff","brown","darkorange","darkred","darksalmon","darkslateblue","chocolate","cyan","aquamarine","red",
                                 "green","blue","purple","cadetblue4","yellow"))         # define different colours to 31 types of cancer                                                                                  

































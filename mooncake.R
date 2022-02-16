library(biobabble)
data("mooncake")
bplot(mooncake)

library(tidyverse)

mooncake <- mooncake%>%
  mutate(color=c(rep("a",426),rep("c",216),rep("d",69),
                 rep("b",218),
                 rep("e",212),rep("f",135),rep("g",130),rep("h",54),rep("i",40)),
         fill=c(rep("a3",109),rep("a4",88),rep("a2",87),rep("a5",71),rep("a1",71),
                rep("c",216),                  
                rep("d1",9),rep("d2",9),rep("d3",8),rep("d4",9),rep("d5",8),rep("d6",9),rep("d7",9),rep("d8",8),
                rep("b",218),rep("e",212),rep("f",135),rep("g",130),rep("h",54),rep("i",40))
          )

ggplot(mooncake,aes(x=-x,y=-y))+
  geom_polygon(aes(group=fill),fill="wheat1")+
  geom_point(aes(color=color),size=2)+
  coord_fixed(ratio = 0.7)+
  labs(title = "Happy Mid-Autumn Day",
       subtitle="中秋节快乐")+
  theme_void()+
  theme(plot.title = element_text(family="sans",color = "chocolate2",hjust = 0.5,size = 30),
        plot.subtitle = element_text(family="sans",face = "bold",color = "chocolate2",hjust = 0.5,size = 30),
        legend.position = "none")
  
  write.csv(mooncake,"mooncake.csv")

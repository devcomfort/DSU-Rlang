# 수업 내용: https://multiking.tistory.com/36

data <- read.csv("train.csv", stringsAsFactors = F)
# stringsASFactors = F
# => 문자 형태의 데이터를 그대로 가져오겠다는 의미

class(data) # `data`의 종류 확인

str(data)

# 일부 데이터 칼럼을 계수화함
data$survived <- as.factor(data$survived)
data$Pclass <- as.factor(data$Pclass)
data$Sex <- as.factor(data$Sex)
data$Embarked <- as.factor(data$Embarked)

str(data)

anyNA(data) # 결측치 존재 확인
table(is.na(data)) # 인자값을 바탕으로 테이블 형성
colSums(is.na(data)) # 인자값을 바탕으로 각 열의 값을 더해 테이블 형성

data1 <- data[!is.na(data$Age)]
data1

data2 <- na.omit(data)
data2 <- data2[-11]


install.packages("ggplot2")
library("ggplot2")
ggplot(data2, aes(Suervived, fill = Sex) + geom_bar(position = "fill") + labs(title = "Titanic Survived By Sex", y = "Population"))

# Working Directory 설정
# 1. Ctrl + Shift + H 사용
# 2. setwd(경로) 사용

# 기존 data 전체 삭제
# ls() = 선언된 변수 목록
rm(list = ls())

# 실습 1) 데이터 프레임 생성 후 `.csv`로 저장하기
# write.csv(데이터프레임, 저장이름)
df <- data.frame(
    class = 1:4,
    korean = sample(70:90, 4),
    english = c(82, 86, 83, 87),
    math = c(78, 79, 81, 80)
)

df
write.csv(df, "class_mean.csv")

# 실습 2) `.csv` 파일 읽어오기
data <- read.csv("class_mean.csv")

# R언어 함수 내용

# str(데이터프레임): 데이터프레임이 담은 정보 간략히 보기
str(data)

# dim(데이터프레임): 데이터프레임의 세로, 가로 크기 보기
dim(data)

# nrow(데이터프레임): 행 개수보기
nrow(data)

# ncol(데이터프레임): 열 개수보기
ncol(data)

# names(데이터프레임): 데이터프레임 레이블 정보 보기
names(data)

# View(데이터프레임): 데이터프레임을 표로 시각화해서 보기
View(data)

# head(데이터프레임): 데이터프레임의 값 중 상위 5개 요소만 보기
head(data)

# tail(데이터프레임): 데이터프레임의 값 중 하위 5개 요소만 보기
tail(data)

# summary(데이터프레임): 데이터프레임의 값에 대해서 산술적 참고자료 모아보기 (최소, 평균, 중앙, 최대, 1st Qu, 3rd Qu)
summary(data)

# mean(벡터): 벡터 값에 대한 평균 구하기
mean(data$korean)

# 데이터프레임[-?]: ?번 인덱스 제외한 값
# 데이터프레임[-c(4:10),]의 형태로 여러 열을 제거하는 것도 가능
data <- data[-1]

summary(data)

# 객체 자료형 확인하기
class(data)

# 변수 자료형 확인하기
mode(data)

# 실습 3) `iris 데이터셋` 불러오기
# R언어 서버에 저장된 데이터셋 리스트 보기
data()

# R언어 서버에 저장된 데이터셋 중 `iris 데이터셋` 가져오기
data(iris)

# `iris 데이터셋`의 행 이름 가져오기
colnames(iris)

# `iris 데이터셋`의 크기 가져오기
dim(iris)

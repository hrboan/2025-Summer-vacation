# 사용자에게 이름과 나이를 입력받아 출력하는 예제

# 이름 입력 받기
name = input("이름을 입력하세요: ")

# 나이 입력 받기 (문자열로 들어오므로 정수로 변환 필요)
age = int(input("나이를 입력하세요: "))

# 출력하기
print("Hello, World!")
print("이름:", name)
print(f"{name}의 나이는 {age}살입니다.")
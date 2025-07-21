# 사용자로부터 나이 입력 받기
age = int(input("당신의 나이는 몇 살인가요? "))

# 조건문을 이용한 나이대 분류
if age < 0:
    print("나이는 0보다 작을 수 없습니다.")
elif age < 13:
    print("당신은 어린이입니다.")
elif age < 20:
    print("당신은 청소년입니다.")
elif age < 65:
    print("당신은 성인입니다.")
else:
    print("당신은 노년층입니다.")
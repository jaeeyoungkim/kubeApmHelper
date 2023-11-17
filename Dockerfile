# 기본 이미지로 OpenJDK 17을 사용합니다.
FROM openjdk:17-jdk-headless

# 애플리케이션을 실행할 디렉토리를 생성합니다.
WORKDIR /usr/src/app

# JAR 파일을 컨테이너로 복사합니다.
COPY target/kube-apm-helper-1.0.0.jar /usr/src/app

# 컨테이너가 시작될 때 실행할 명령어를 설정합니다.
ENTRYPOINT ["java", "-jar", "/usr/src/app/kube-apm-helper-1.0.0.jar"]
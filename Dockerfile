#./Dockerfile
FROM python:3 
#기반이 될 이미지

# 작업디렉토리(default)설정
# 위에서 불러온 python3 안에서의 디렉토리
WORKDIR /usr/src/app 

## Install packages
#현재 패키지 설치 정보를 (위의 WORKDIR에) 도커 이미지에 복사
COPY requirements.txt ./ 
#설치정보를 읽어 들여서 패키지를 설치
RUN pip install -r requirements.txt

## Copy all src files
#현재경로에 존재하는 모든 소스파일을 (위의 WORKDIR에) 이미지에 복사
COPY . . 


## Run the application on the port 8080
#8000번 포트를 외부에 개방하도록 설정
EXPOSE 8000   


#CMD ["python", "./setup.py", "runserver", "--host=0.0.0.0", "-p 8080"]
#gunicorn을 사용해서 웹서버를 실행
# docker_train.wsgi부분의 docker_train은 settings.py가 들어있는 프로젝트 디렉토리
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "config.wsgi:application"]  


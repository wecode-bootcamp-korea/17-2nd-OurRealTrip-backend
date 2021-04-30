![our-real-trip](https://user-images.githubusercontent.com/75108432/111068776-848f8780-850d-11eb-8f2c-6f7c5949f210.png)

## 마이리얼트립 기업 소개

마이리얼트립은 여행을 떠나기 위해 필요한 모든 것을 쉽고, 빠르게 검색하고 예약할 수 있는 국내 최고의 자유여행 플랫폼입니다. 항공권, 숙박, 에어텔 상품을 비롯하여 전세계 680여개 도시 20,000여개의 현지 투어&티켓 상품을 제공하고 있으며. 2012년 설립 이래 여행자 개개인의 취향에 맞는 다양한 상품 제공을 통해 누적 여행자 수 490만명을 달성하며 가장 많은 리뷰 수를 보유하고 있는 신뢰 받는 브랜드로 자리 잡았습니다. 또한 'No.1 Travel Tech Leader' 라는 비전을 가지고 데이터, IT기술을 바탕으로 한국의 여행 시장을 혁신 해가고 있으며 매년 3배씩 성장하고 있습니다. (2018년 거래액 1,300억 달성/ 2019년 4,500억, 2020년 1조원 목표) ~~-회사 홈페이지 발췌-~~

<br>
<br>
<br>

### 🛫나만의 여행이 아닌 우리들의 진짜 여행🛫

# OurRealTrip

### 마이리얼트립 클론코딩 팀

**2021.03.02 ~ 2021.03.12(11일)**

## 팀원 소개

![ourrealtripPhoto](https://user-images.githubusercontent.com/65124480/111019033-fed1e600-83ff-11eb-9ed3-1a77a682027b.jpg)

### 😎front-end

-이정민(PM) 곽진석 박경토

### 😍back-end

-강승연 안재이 정희영 허민지

## 📚Stack

-front-end : HTML / CSS / JavaScript / React / CRA / React DOM / React Router DOM / Styled-Components / Slick / SNS Login API / React-date API / RESTfulAPI

-back-end : PYTHON / Django / bcrypt / pyjwt / RESTfulAPI / Aquery Tool / MySQL / cors / AWS / Kakao Login API

-communication tool : Notion / Slack / Trello / Git / GitHub / Zoom

## 구현 목록

로그인페이지 / 항공 메인페이지 / 항공 리스트페이지
숙박 메인페이지 / 숙박 리스트페이지 / 숙박 디테일페이지

## 개인 별 구현 목록

### 😎FRONT

<br>

이정민

- URL에 따른 Navbar Change 및 로그인 token으로 바뀌는 Navbar 레이아웃 <br>
- 카카오 소셜 로그인 구현 <br>
- 숙박 메인페이지 / 캘린더API 활용 및 레이아웃 구현 <br>
- 숙박 메인페이지 / 기본 성인 1명, 객실 1개 기준 최대 9명 인원 수 DropMenu 구현 <br>
- 숙박 리스트페이지 / 레이아웃 구현 및 백엔드 데이터를 이용한 숙박 리스트 구현 <br>
- 숙박 리스트페이지 / Query String을 사용한 통신 (카테고리, Sorting, Range, Multi check box) <br>
- 숙박 리스트페이지 / 상품의 개수에 따른 페이지네이션 구현 <br>
- 숙박 디테일페이지 / 레이아웃 구현 및 백엔드 데이터를 이용한 객실 구현 <br>

<br>

곽진석

- 항공메인페이지 / 전체 레이아웃 구현 및 슬릭을 활용한 메인페이지 슬라이드 구현
- 항공메인페이지 / 캘린더API를 활용한 메인페이지 캘린더 구현
- 항공메인페이지 / 여행지역 및 인원수를 Drop Menu를 통해 구현 및 리스트 페이지로 API 통신 전달
- 항공리스트페이지 / 레이아웃 구현 및 백엔드로 부터 받은 데이터 두개 이상 선택 시 예약정보 레이아웃 구현
- 항공리스트페이지 / 비디오태그와 애니메이션을 통한 로딩페이지 레이아웃 구현
- 항공리스트페이지 / Query String을 사용한 통신 (SelectBox, Multi check box)

<br>

박경토

- Navbar / styled components를 활용한 레이아웃 구현
- Navbar / window.location을 이용한 항공 및 숙박 메인페이지 이동 구현
- Footer / styled components를 활용한 레이아웃 구현
- Login / styled componenets를 활용한 레이아웃 구현

<br>

### 😍BACK

<br>

### 모델링

- ERD(관계형 모델링 설계) 및 model 생성 / Aquery Tool을 활용한 항공, 숙박 모델링 구현 및 models.py 생성
- DB CSV 파일 작성
- db_uploader.py 작성

<br>

### 회원가입 및 로그인 (SignUp & SignIn)

- bcrypt를 사용한 암호화
- 자체 로그인 기능 구현 및 unit test 
- jwt access token 전송 및 유효성 검사 기능 구현
- 카카오 소셜 로그인 구현 및 unit test
- 비회원, 회원 decorator 기능 구현 

<br>

### 숙소

- 숙소 리스트 기능 구현 / Django ORM(Q객체, chianing, annotate, aggregate 등)을 활용한 다양한 filtering 구현 및 unit test
- 숙소 상세 페이지 / user의 입력값과 맞는 데이터를 바탕으로 예약 가능한 숙소 room 불러오기 구현 및 unit test
- 숙소 예약 기능 구현 / POST 요청정보 DB에 Create 구현 및 unit test 
- Django ORM-DB QUERY / select_related, prefetch_related를 통한 Caching 활용

<br>

### 항공


- 항공 리스트 기능 구현 / Django ORM(Q객체, chianing 등)을 활용한 다양한 filtering 구현 및 unit test
- 항공 예약 기능 구현 / POST 요청정보 DB에 Create 구현 및 unit test 
- Django ORM-DB QUERY / select_related를 통한 Caching 활용

<br>

### 배포 

- 데이스베이스 구축 및 배포 / AWS(EC2, RDS) 데이터베이스 구축 및 배포

<br>

### Document

- [API Document](https://www.notion.so/API-Document-e1c56cbbc3a3418b8f1d211aaf4fcd71, "API Document")

<br>

## 프로젝트 결과 시연 영상

[떠나요 OurRealTrip으로 🛫](https://www.youtube.com/watch?v=bpsRyUtgs-8)

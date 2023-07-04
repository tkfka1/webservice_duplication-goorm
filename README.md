# webservice_duplication-goorm-
웹서비스 이중화 프로젝트 (구름 쿠버네티스 세미프로젝트  1차)


## 개요

구름 EDU 의 쿠버네티스 양성과정 스터디 기록을 더욱 안전한 서비스로 제공하기 위한 팀프로젝트

쿠버네티스를 배우기 전에 컨테이너 방식이 아닌 VM방식만으로 웹 서비스를 이중화하고 로드밸런서를 적용시켜 고가용성 서비스 인프라를 구축

## 설명

### **사용 기술**

<img width="1459" alt="스크린샷 2023-07-04 오후 2 34 45" src="https://github.com/tkfka1/webservice_duplication-goorm/assets/36651040/36ec75c6-7c68-4d52-98aa-6a1f6e0f5f68">


### 인프라

<img width="900" alt="스크린샷 2023-07-04 오후 2 35 44" src="https://github.com/tkfka1/webservice_duplication-goorm/assets/36651040/e57c7ff9-76b4-4161-836a-7dff3d1f1781">


### **구현 목록**

- DB 이중화
- Web 이중화
- DNS 이중화
- 로드밸런서 이중화

**맡은 역할 및 구현 목록**
정한교 (팀장)
- 로드밸런서 이중화 (HAProxy 를 통한 로드밸런싱 이중화)
- 전체적인 문서 정리 및 일정 조율
- Proxmox 서버에 VM들을 생성및 네트워크 설정으로 각자 작업을 할 수 있는 환경을 만들어
협업을 할 수 있도록함
- NFS 스토리지 및 FTP 서버 구현
- 방화벽 구현 (OPNSence)

김지원
- 웹 서버 구축(Nginx)
- 웹 어플리케이션 배포 (Wordpress)
- 웹 서버 이중화

배수빈
- DNS 서버 구축
- 프론트엔드 정리
- DNS 이중화

이승수
- DB 서버 구축
- 프론트엔드 정리
- DB 서버 이중화

## 어려웠던점, 반성할점, 후기

**HAProxy**를 이중화 하는 과정에서 ****Keepalived**** 와 ****VIP 를**** 설정하는 과정에서 애를 많이 먹었다.
구현을 하였는데 설정이 제대로 되지 않는 등 많은 시행착오를 겪으면서 여러 기술블로그와 많은 사이트들을 돌아다니면서 맞는 설정을 찾아서 해멨고 결국 구현을 하였는데
로드밸런싱의 여러 알고리즘도 공부가 되었고 **L4 모듈을 소프트웨어적**으로 구현한 **HAProxy**라는 오픈소스가 엄청 대단하다는 생각이 들었다.

**인프라 서버**를 관리하면서 **방화벽 구현**및 **네트워크 설정**을 하면서 어떻게 하면 보안이 높으면서 개발자들과의 협업도 자유롭게 할 수 있을까를 계속 생각하면서 진행했었고 **OPNSence** 와 **OPENVPN** 기능을 사용하여 협업을 하였는데 **더 좋은 방법**이 있을것 같지만 별다른 생각이 나지 않았고, 다른 기업들은 보안과 반대가 되는 말이 될 수 있는 **자유롭고 쉽게 접근 가능한 개발환경**을 어떤 방식으로 구현하여 협업을 하는지 많이 궁금했다.

**팀장**으로써 진행하면서 팀원들의 역량이 다 다른데 각자의 능력에 맞게 작업을 배분하며 각자의 불만이 나오지 않도록 하는것이 가장 어려웠다. 비대면 으로 진행하느라 커뮤니케이션에 많은 지장이 있어 적극적으로 커뮤니케이션을 잘 이끌어 나가지 못한것이 아쉽다.

**기술문서**를 따로 정리를 하지 않고 PPT 안에 전부 집어넣었는데 따로 문서를 만들어서 정리를 했으면 더욱 보기 좋은 프로젝트가 되었을 것이다.

### 시연영상
0. 기본web
https://www.youtube.com/watch?v=f3eAc4fInak&list=PLqqWF8gP3uQb_DOCeLQ0jcJ_yKu1rVpfg&index=1

2. DNS 이중화
https://www.youtube.com/watch?v=PLl3N2b5Js4&list=PLqqWF8gP3uQb_DOCeLQ0jcJ_yKu1rVpfg&index=2

3. WEB 이중화
https://www.youtube.com/watch?v=UJ5dtqcm-3s&list=PLqqWF8gP3uQb_DOCeLQ0jcJ_yKu1rVpfg&index=3

4. Load ballancer 이중화(Haproxy)
https://www.youtube.com/watch?v=mtB3YM5YS-8&list=PLqqWF8gP3uQb_DOCeLQ0jcJ_yKu1rVpfg&index=4

### 프레젠테이션, 기술문서

[구름 세미프로젝트 뭉게구름조(5조)(프레젠테이션용).pdf](https://github.com/tkfka1/webservice_duplication-goorm/files/11944796/5.pdf)

[구름 세미프로젝트 뭉게구름조(5조)(기술포함).pdf](https://github.com/tkfka1/webservice_duplication-goorm/files/11944797/5.pdf)






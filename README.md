# Deep Learning Based RobotArm System
- Initial project released on May.2020
- Go to [Upgrede version](https://github.com/MinTpie30/RobotIntheKitchen) repository 
- Proceeding [Link](https://www.koreascience.or.kr/article/CFKO202025036028266.page)

## 1. Description
본 시스템은 세 단계의 모델을 복합적으로 구성하여 이루어진다. 첫 단계로 사람의 음성언어를 텍스트로 전환한 후 사용자의 발화 의도를 분류해내는 BoW방식을 이용해 인간의 명령을 이해할 수
있는 자연어 처리 알고리즘을 구성한다. 이후 YOLOv3-tiny를 이용한 실시간 영상처리모델과 OctoMapping모델을 활용하여 주변환경에 대한 3차원 지도생성 후 지도데이터를 기반으로하여 동작
하는 기구제어 알고리즘 등을 ROS actionlib을 이용한 관리자시스템을 구성하여 ROS와 딥러닝을 활용한 편리한 인간-로봇 상호작용 시스템을 제안한다.

<p align="center"><img src="https://user-images.githubusercontent.com/40736396/101441535-ab617f00-395c-11eb-98a2-9cbe78fcf078.png" width="70%" alt="Rendering"></p>

#### Watching Full video about this project : https://youtu.be/_JTMdI2pfQs

## 2. Configuration

### (1) Prototype

#### System architecture
<p align="center"><img src="./readmeData/systemoverview.png" width="70%" alt="system"></p>

### (2) Intent Classifier
#### Bags of Words
desc

### (3) Image Processing

#### Object detection : yolo-tiny 
<p align="center"><img src="./readmeData/yolo-tiny test.png" width="70%" alt="yolo"></p>

### (4) Trajectory Planning

## 3. Result
<p align="center"><img src="./readmeData/Trajectory_test.png" width="70%" alt="result0"></p>
<p align="center"><img src="./readmeData/octomapping.png" width="40%" height="20%" alt="result1"><img src="./readmeData/mapping data.png" width="30%" height="35%" alt="result2"></p>
<p width="70%"> - Depth image의 Point Cloud를 활용하여 로봇암의 주변 지도 정보를 얻어 장애물 및 주변 상황을 실시간으로 파악할 수 있다. 또한 물체와의 거리값을 파악하여 로봇암이 움직일수 있는 거리를 파악하였다.</span></p>
<p width="70%"> - 시뮬레이션의 주방지도와 냄비의 위치정보를 로봇암이 구동시 물체인식과 Mapping 하여 저장한 지도정보이다.<br>RealSense-D435i를 이용하여 주변의 지도정보와 물체위치를 갖는 정보 서비스 알고리즘을 검증하였다</p>

### Contributors
- Contributors : Junho Shin, Kyusuk Shim





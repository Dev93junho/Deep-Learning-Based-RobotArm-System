# Kitchen Master
- Initial project released on May.2020
- Go to [Upgrede version](https://github.com/MinTpie30/RobotIntheKitchen) repository 
## Kitchen Master

## 1. Description
This project is implement for Home-Kitchen Automation.

<p align="center"><img src="https://user-images.githubusercontent.com/40736396/101441535-ab617f00-395c-11eb-98a2-9cbe78fcf078.png" width="70%" height="45%" alt="Rendering"></p>

#### Watching Full video about this project : https://youtu.be/_JTMdI2pfQs

## 2. Configuration

### (1) Prototype

#### Robot body

#### System architecture
<p align="center"><img src="./readmeData/systemoverview.png" width="70%" height="45%" alt="system"></p>

### (2) Intent Classifier
#### Bags of Words
desc

### (3) Image Processing

#### Object detection : yolo-tiny 
<p align="center"><img src="./readmeData/yolo-tiny test.png" width="70%" height="45%" alt="yolo"></p>

### (4) Trajectory Planning
<p align="center"><img src="./readmeData/Trajectory_test.png" width="70%" height="45%" alt="planning"></p>

### Result

<p align="center"><img src="./readmeData/octomapping.png" width="50%" height="30%" alt="result1"></p>
<p align="center"> Depth image의 Point Cloud를 활용하여 로봇암의 주변 지도 정보를 얻어 장애물 및 주변 상황을 실시간으로 파악할 수 있다. 또한 물체와의 거리값을 파악하여 로봇암이 움직일수 있는 거리를 파악하였다.</p>

<p align="center"><img src="./readmeData/mapping data.png" width="40%" height="15%" alt="result2">시뮬레이션의 주방지도와 냄비의 위치정보를 로봇암이 구동시 물체인식과 Mapping 하여 저장한 지도정보이다. RealSense-D435i를 이용하여 주변의 지도정보와 물체위치를 갖는 정보 서비스 알고리즘을 검증하였다</p>


A Study on Deep Learning Based RobotArm System [Link](https://manuscriptlink-society-file.s3-ap-northeast-1.amazonaws.com/kips/conference/2020fall/presentation/KIPS_C2020B0162.pdf) 


## Contributors
- Contributors : Junho Shin, Kyusuk Shim





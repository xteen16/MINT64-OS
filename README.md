# MINT64-OS
Multi-core INTeligent OS


`64 비트 멀티코어 os 원리와 구조` 책을 보고 예제를 따라 실제 `OS`를 만들어보는 프로젝트


### 개발 환경

책에서는 윈도우 환경에서 `eclips` , `cygwin`를 사용하지만, 개인적으로 윈도우에서 개발은 무리라고 생각하여 `Ubuntu`를 사용합니다.
- VMware Ubuntu 20.04 LTS
- VSCode SSH

### 개발 환경 설정
필수적으로 설치하여야 하는 패키지는 다음과 같습니다.
```
GNU binutils
GNU bison
GNU flex
gcc-multilib
g++-multilib
libc6-dev
libtool
make
patchutils
libgmp-dev
libmpfr-dev
libmpc-dev
```
---
Input Shell
```
sudo apt update
sudo apt-get upgrade
sudo apt-get install gcc-multilib g++-multilib binutils bison flex libc6-dev libtool make patchutils libgmp-dev libmpfr-dev libmpc-dev
```

위와 같이 패키지 설치 후 간단한 `C, C++` 프로그램을 작성한 뒤 다음과 같이 크로스 컴파일 테스트를 진행합니다.

```
gcc++ -m32 -o test32 test.cpp
gcc++ -m64 -o test64 test.cpp
```

다음으로 어셈블리 빌드를 위한 `NASM`과 OS를 emulation하기 위한 `QEMU`를 설치합니다.

```
sudo apt install nasm
sudo apt install qemu-kvm
```


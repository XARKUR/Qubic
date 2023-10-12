# Qubic-Node
Simple run Qubic node.

## Prerequisites

To run a Qubic node, you need the following parts:

1. Bare Metal Server/Computer with at least 8 Cores (high CPU frequency with AVX2 support)
2. At least 128GB RAM
3. 1Gb/s synchronous internet connection
4. An USB Stick or SSD/HD attached to the Computer via USB
5. An UEFI Bios

### 1.Install VS Studio and configure the environment

> [visualstudio.microsoft.com](https://visualstudio.microsoft.com/)

![1.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/1.png?raw=true)

### 2.Download the file and modify the configuration

![2.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/2.png?raw=true)

1.Unzip the downloaded file and use VS Studio to open the `Qubic.vcxproj` file in the folder.

![3.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/3.png?raw=true)

2.Select the qubic.cpp file and modify the Private Settings. 

> For the IPs of knownPublicPeers, you can go to https://app.qubic.li/network/live to select IPs with good health conditions.

### 3.(Optional) If your CPU does not meet the operating conditions or is stuck on the `At least 4 healthy enabled processors are required!`, then you can make the following modifications.

![4.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/4.png?raw=true)

You can skip the CPU health check by deleting selected parts of the code, but this is not recommended.

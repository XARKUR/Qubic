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

***

### 2.Download the file and modify the configuration

> [https://github.com/qubic-li/qubic](https://github.com/qubic-li/qubic)

![2.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/2.png?raw=true)

1.Unzip the downloaded file and use VS Studio to open the `Qubic.vcxproj` file in the folder.

***

![3.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/3.png?raw=true)

2.Select the qubic.cpp file and modify the Private Settings. 

> For the IPs of knownPublicPeers, you can go to https://app.qubic.li/network/live to select IPs with good health conditions.

***

### 3.(Optional) Skip CPU health check

![4.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/4.png?raw=true)

If your CPU performance is insufficient or the core cannot be correctly identified and is stuck at `At least 4 healthy enabled processors are required!`, then you can delete the code selected in the picture.

***

### 4.Compile Qubic.EFI

![5.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/5.png?raw=true)

After completing the modification, select Release and press `Shift + Ctrl + B` to compile.

***

### 5.Create USB disk EFI file

![6.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/6.png?raw=true)

1.Create a new folder and extract `qubic-initial-disk.zip` from the file you downloaded earlier.

***

![7.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/7.png?raw=true)

![8.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/8.png?raw=true)

2.Place the generated Qubic.efi file in the boot directory.

***

![9.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/9.png?raw=true)

3.Go to the Qubic Discord [#network](https://discord.com/channels/768887649540243497/768890555564163092) channel to get the current epoch file

***

![10.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/10.png?raw=true)

The complete file directory should look like the picture.

```
/contract.000.XXX
/contract.001.XXX
/contract.002.XXX
/spectrum.XXX
/system
/universe.XXX
/efi/boot
/efi/boot/Bootx64.efi
/efi/boot/startup.nsh
/efi/boot/Qubic.efi
```

***

![11.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/11.png?raw=true)

![12.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/12.png?raw=true)

4.Format the Qubic Boot USB disk as FAT32 with label QUBIC and copy the files of the EFI folder to the USB disk.

***

### 6.Go to BIOS and enable `Network Stack`

![13.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/13.png?raw=true)

After turning on Network Stack, restart the computer and select USB boot.

***

![14.png](https://github.com/XARKUR/Qubic-Node/blob/main/img/14.png?raw=true)

When you see this screen, congratulations, you successfully ran Qubic Node!

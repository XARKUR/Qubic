# Qubic-Node

Simple run Qubic node.

## Prerequisites

To run a Qubic node, you need the following parts:

1. Bare Metal Server/Computer with at least 8 Cores (high CPU frequency with AVX2 support)
2. At least 128GB RAM
3. 1Gb/s synchronous internet connection
4. An USB Stick or SSD/HD attached to the Computer via USB
5. An UEFI Bios

## BM

### 1.Install VS Studio and configure the environment

> Official link: [visualstudio.microsoft.com](https://visualstudio.microsoft.com/)

![1.png](https://github.com/XARKUR/Qubic/blob/main/img/1.png?raw=true)

***

### 2.Download the file and modify the configuration

> Qubic official library: [https://github.com/qubic-li/qubic](https://github.com/qubic-li/qubic)

1.Unzip the downloaded file and use VS Studio to open the `Qubic.vcxproj` file in the folder.

![2.png](https://github.com/XARKUR/Qubic/blob/main/img/2.png?raw=true)



2.Select the qubic.cpp file and modify the Private Settings. 

> For the IPs of knownPublicPeers, you can go to https://app.qubic.li/network/live to select IPs with good health conditions.

![3.png](https://github.com/XARKUR/Qubic/blob/main/img/3.png?raw=true)

***

### 3.(Optional) Skip CPU health check

If your CPU performance is insufficient or the core cannot be correctly identified and is stuck at `At least 4 healthy enabled processors are required!`, then you can delete the code selected in the picture.

![4.png](https://github.com/XARKUR/Qubic/blob/main/img/4.png?raw=true)

***

### 4.Compile Qubic.EFI

After completing the modification, select Release and press `Shift + Ctrl + B` to compile.

![5.png](https://github.com/XARKUR/Qubic/blob/main/img/5.png?raw=true)

***

### 5.Create USB disk EFI file

1.Create a new folder and extract `qubic-initial-disk.zip` from the file you downloaded earlier.

![6.png](https://github.com/XARKUR/Qubic/blob/main/img/6.png?raw=true)



2.Place the generated Qubic.efi file in the boot directory.

![7.png](https://github.com/XARKUR/Qubic/blob/main/img/7.png?raw=true)

![8.png](https://github.com/XARKUR/Qubic/blob/main/img/8.png?raw=true)



3.Go to the Qubic Discord [#network](https://discord.com/channels/768887649540243497/768890555564163092) channel to get the current epoch file

![9.png](https://github.com/XARKUR/Qubic/blob/main/img/9.png?raw=true)



The complete file directory should look like the picture.

![10.png](https://github.com/XARKUR/Qubic/blob/main/img/10.png?raw=true)



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



4.Format the Qubic Boot USB disk as FAT32 with label QUBIC and copy the files of the EFI folder to the USB disk.

![11.png](https://github.com/XARKUR/Qubic/blob/main/img/11.png?raw=true)

![12.png](https://github.com/XARKUR/Qubic/blob/main/img/12.png?raw=true)

***

### 6.Go to BIOS and enable `Network Stack`

![13.png](https://github.com/XARKUR/Qubic/blob/main/img/13.png?raw=true)

After turning on Network Stack, restart the computer and select USB boot.

***

![14.png](https://github.com/XARKUR/Qubic/blob/main/img/14.png?raw=true)

When you see this screen, congratulations, you successfully ran Qubic Node!

## VirtualBox VM

### 1.Installing Virtual Box

![25.png](https://github.com/XARKUR/Qubic/blob/main/img/25.png?raw=true)

> [Download_Old_Builds_6_1 – Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Download_Old_Builds_6_1)

Personally, I prefer version 6.1

There is nothing extra to note about the installation process, other than which folder you want to install it in.



### 2.Preparing the boot disk

1.`Win + S` Search and open Computer Management

![36.png](https://github.com/XARKUR/Qubic/blob/main/img/36.png?raw=true)



2.Create VHD and Disk

You need to click on a disk to create a VHD.

![37.png](https://github.com/XARKUR/Qubic/blob/main/img/37.png?raw=true)

The complete file directory should look like the picture.

![39.png](https://github.com/XARKUR/Qubic/blob/main/img/39.png?raw=true)

![40.png](https://github.com/XARKUR/Qubic/blob/main/img/40.png?raw=true)

![41.png](https://github.com/XARKUR/Qubic/blob/main/img/41.png?raw=true)

![42.png](https://github.com/XARKUR/Qubic/blob/main/img/42.png?raw=true)

![43.png](https://github.com/XARKUR/Qubic/blob/main/img/43.png?raw=true)



3.Copy the EFI files to the new disk and Eject it

> **If you don't know how to create an EFI file, please check here: [https://github.com/XARKUR/Qubic/blob/main/Qubic-Node.md#prerequisites](https://github.com/XARKUR/Qubic/blob/main/Qubic-Node.md#prerequisites)**

![44.png](https://github.com/XARKUR/Qubic/blob/main/img/44.png?raw=true)



### 3.Virtual Box configuration

1.Create or Add new Virtual Machine

![26.png](https://github.com/XARKUR/Qubic/blob/main/img/26.png?raw=true)

![27.png](https://github.com/XARKUR/Qubic/blob/main/img/27.png?raw=true)

![28.png](https://github.com/XARKUR/Qubic/blob/main/img/28.png?raw=true)

![29.png](https://github.com/XARKUR/Qubic/blob/main/img/29.png?raw=true)

![30.png](https://github.com/XARKUR/Qubic/blob/main/img/30.png?raw=true)



2.Virtual Machine Setting

Least 128 RAM and 8 Cores CPU

![31.png](https://github.com/XARKUR/Qubic/blob/main/img/31.png?raw=true)

![32.png](https://github.com/XARKUR/Qubic/blob/main/img/32.png?raw=true)

![33.png](https://github.com/XARKUR/Qubic/blob/main/img/33.png?raw=true)

![34.png](https://github.com/XARKUR/Qubic/blob/main/img/34.png?raw=true)

![35.png](https://github.com/XARKUR/Qubic/blob/main/img/35.png?raw=true)

![45.png](https://github.com/XARKUR/Qubic/blob/main/img/45.png?raw=true)

![46.png](https://github.com/XARKUR/Qubic/blob/main/img/46.png?raw=true)



GO! You successfully ran Qubic Node!

![47.png](https://github.com/XARKUR/Qubic/blob/main/img/47.png?raw=true)

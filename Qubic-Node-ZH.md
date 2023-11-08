# Qubic 节点

简单运行 Qubic 节点。

## 先决条件

要运行 Qubic 节点，您需要以下部分：

1. 至少具有 8 个核心的裸机服务器/计算机（支持 AVX2 的高 CPU 频率）
2. 至少 128GB 内存
3. 1Gb/s 同步互联网连接
4. 通过 USB 连接到计算机的 USB 盘或 SSD/HD 硬盘
5. Qubic UEFI Bios

## BM

### 1.安装 VS Studio 并配置环境

> 官方连接：[visualstudio.microsoft.com](https://visualstudio.microsoft.com/)

![1.png](https://github.com/XARKUR/Qubic/blob/main/img/1.png?raw=true)

***

### 2.下载文件并修改配置

> Qubic 官方库：[https://github.com/qubic-network/core](https://github.com/qubic-network/core)

1.解压下载的文件并使用 VS Studio 打开文件夹中的 `Qubic.vcxproj` 文件。

![2.png](https://github.com/XARKUR/Qubic/blob/main/img/2.png?raw=true)



2.选择 `qubic.cpp` 文件并修改 `Private Settings` 中的内容。

> 获取 `knownPublicPeers` 的 IP 地址，可以前往 https://app.qubic.li/network/live 选择运行状况良好的 IP 地址。

![3.png](https://github.com/XARKUR/Qubic/blob/main/img/3.png?raw=true)

***

### 3.(可选项) 跳过 CPU 健康检查

如果您的CPU性能不足或者无法正确识别核心并卡在 `At least 4 healthy enabled processors are required!` ，那么可以尝试删除图中选定的代码，不过不建议这么做。

![4.png](https://github.com/XARKUR/Qubic/blob/main/img/4.png?raw=true)

***

### 4.生成 Qubic.EFI 文件

修改完成后，选择 `Release` 并按 `Shift + Ctrl + B` 进行编译。

![5.png](https://github.com/XARKUR/Qubic/blob/main/img/5.png?raw=true)

***

### 5.创建 U 盘 EFI 文件

1.创建一个新文件夹保存文件，并从之前下载的文件中解压 `qubic-initial-disk.zip` 到文件夹。

![6.png](https://github.com/XARKUR/Qubic/blob/main/img/6.png?raw=true)

2.将生成的 `Qubic.efi` 文件放在 `boot` 目录中。

![7.png](https://github.com/XARKUR/Qubic/blob/main/img/7.png?raw=true)

![8.png](https://github.com/XARKUR/Qubic/blob/main/img/8.png?raw=true)



3.前往 Qubic Discord [#network](https://discord.com/channels/768887649540243497/768890555564163092) 频道获取当前纪元文件。

![9.png](https://github.com/XARKUR/Qubic/blob/main/img/9.png?raw=true)



完整的文件目录应该如图所示。

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



4.将 U 盘以 `FAT32` 类型格式化，并添加 `QUBIC` 标签，然后将 EFI 文件夹的文件复制到 U 盘。

![11.png](https://github.com/XARKUR/Qubic/blob/main/img/11.png?raw=true)

![12.png](https://github.com/XARKUR/Qubic/blob/main/img/12.png?raw=true)

***

### 6.进入 BIOS 并启用 `Network Stack`

打开 `Network Stack` 后，重新启动计算机并选择USB启动。

![13.png](https://github.com/XARKUR/Qubic/blob/main/img/13.png?raw=true)

***

![14.png](https://github.com/XARKUR/Qubic/blob/main/img/14.png?raw=true)

当你看到这个屏幕时，恭喜你，你成功运行了 Qubic 节点！

## VirtualBox 虚拟机

### 1.安装 Virtual Box

![25.png](https://github.com/XARKUR/Qubic/blob/main/img/25.png?raw=true)

> [下载 Oracle VM VirtualBox 6.1](https://www.virtualbox.org/wiki/Download_Old_Builds_6_1)

就我个人而言，我更喜欢6.1版本

除了要安装到哪个文件夹之外，安装过程没有什么需要注意的，直接 next 。



### 2.准备 boot 启动盘

1.`Win + S` 搜索并打开计算机管理

![36.png](https://github.com/XARKUR/Qubic/blob/main/img/36.png?raw=true)



2.创建 VHD 和磁盘

需要单击一个空闲的盘来创建 VHD。

![37.png](https://github.com/XARKUR/Qubic/blob/main/img/37.png?raw=true)



没有图示的部分默认点击下一步。

![39.png](https://github.com/XARKUR/Qubic/blob/main/img/39.png?raw=true)

![40.png](https://github.com/XARKUR/Qubic/blob/main/img/40.png?raw=true)

![41.png](https://github.com/XARKUR/Qubic/blob/main/img/41.png?raw=true)

![42.png](https://github.com/XARKUR/Qubic/blob/main/img/42.png?raw=true)

![43.png](https://github.com/XARKUR/Qubic/blob/main/img/43.png?raw=true)



3.将 EFI 文件复制到新磁盘并将其弹出

> **如果不知道如何创建 EFI 文件，请查看此链接: [https://github.com/XARKUR/Qubic/blob/main/Qubic-Node.md#prerequisites](https://github.com/XARKUR/Qubic/blob/main/Qubic-Node.md#prerequisites)**

![44.png](https://github.com/XARKUR/Qubic/blob/main/img/44.png?raw=true)



### 3.Virtual Box 配置

按照下面的步骤图进行操作。

1.创建或添加新的虚拟机

![26.png](https://github.com/XARKUR/Qubic/blob/main/img/26.png?raw=true)

![27.png](https://github.com/XARKUR/Qubic/blob/main/img/27.png?raw=true)

![28.png](https://github.com/XARKUR/Qubic/blob/main/img/28.png?raw=true)

![29.png](https://github.com/XARKUR/Qubic/blob/main/img/29.png?raw=true)

![30.png](https://github.com/XARKUR/Qubic/blob/main/img/30.png?raw=true)



2.虚拟机设置

至少 128 GB 内存 和 8 核心 CPU。

![31.png](https://github.com/XARKUR/Qubic/blob/main/img/31.png?raw=true)

![32.png](https://github.com/XARKUR/Qubic/blob/main/img/32.png?raw=true)

![33.png](https://github.com/XARKUR/Qubic/blob/main/img/33.png?raw=true)

![34.png](https://github.com/XARKUR/Qubic/blob/main/img/34.png?raw=true)

![35.png](https://github.com/XARKUR/Qubic/blob/main/img/35.png?raw=true)

![45.png](https://github.com/XARKUR/Qubic/blob/main/img/45.png?raw=true)

![46.png](https://github.com/XARKUR/Qubic/blob/main/img/46.png?raw=true)



3.点击 Start 开始运行节点。

![47.png](https://github.com/XARKUR/Qubic/blob/main/img/47.png?raw=true)

# Qubic 挖矿

### Qubic-Cli Miner

> 官方库：[qubic-Cli/client (github.com)](https://github.com/qubic-li/client)

#### 前期准备

1.前往 Qubic Portal 注册账户。

> Qubic APP网站：[QUBIC Portal](https://app.qubic.li/sign-up)

2.点击侧边栏进入 Pool Mining 页面，在页面下方订阅 `qubic.li Fixed Reward` 矿池。

![15.png](https://github.com/XARKUR/Qubic/blob/main/img/15.png?raw=true)

![16.png](https://github.com/XARKUR/Qubic/blob/main/img/16.png?raw=true)



3.在 Pool Mining 页面获取 `Access Token` 。

![17.png](https://github.com/XARKUR/Qubic/blob/main/img/17.png?raw=true)



4.前往 Qubic Wallet 创建账户。

> Qubic 钱包：[Qubic.li - Wallet](https://wallet.qubic.li/)



5.注意妥善保管好这三样东西，密码、`qubic.li-wallet.privatekey` 文件和地址种子。

![18.png](https://github.com/XARKUR/Qubic/blob/main/img/18.png?raw=true)

![19.png](https://github.com/XARKUR/Qubic/blob/main/img/19.png?raw=true)



6.复制钱包地址并返回 Pool Mining 页面，在设置中输入您的地址即可接收每个纪元（一周）的奖励。

![20.png](https://github.com/XARKUR/Qubic/blob/main/img/20.png?raw=true)



***

#### Windows

1.前往官方库下载最新版 `Qubic-Cli`

> Qubic-Cli 官方库：[qubic-li/client](https://github.com/qubic-li/client#download)



2.修改 `appsettings.json` 文件参数

- amountOfThreads（使用的线程数）
- payoutId（接收奖励的地址）
- accessToken（从 Pool Mining 页面获取）
- alias（矿工名）

> 请注意 **payoutId 和 accessToken 不能同时填写**。 您只能选择填写其中一项。 建议填写 accessToken ，因为我们之前在 Pool Mining 页面设置过钱包地址，两者都可以接收奖励。

![21.png](https://github.com/XARKUR/Qubic/blob/main/img/21.png?raw=true)



3.运行 `qli-Client.exe` 文件开始挖矿。

![22.png](https://github.com/XARKUR/Qubic/blob/main/img/22.png?raw=true)

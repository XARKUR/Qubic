# Qubic Mining

### Qubic-li Miner

[qubic-li/client (github.com)](https://github.com/qubic-li/client)

#### Prerequisites

1.You need to go to Qubic Portal to register an account.

> [QUBIC Portal](https://app.qubic.li/sign-up)



![15.png](https://github.com/XARKUR/Qubic/blob/main/img/15.png?raw=true)

![16.png](https://github.com/XARKUR/Qubic/blob/main/img/16.png?raw=true)

2.Click on the sidebar to enter the Pool Mining page, and subscribe to `qubic.li Fixed Reward` at the bottom of the page.



![17.png](https://github.com/XARKUR/Qubic/blob/main/img/17.png?raw=true)

3.Get Access Token on the Pool Mining page



4.Go to Qubic Wallet to create an account

> [Qubic.li - Wallet](https://wallet.qubic.li/)



![18.png](https://github.com/XARKUR/Qubic/blob/main/img/18.png?raw=true)

![19.png](https://github.com/XARKUR/Qubic/blob/main/img/19.png?raw=true)

5.Pay attention to keeping these three things properly, password, `qubic.li-wallet.privatekey` file and address seed.



![20.png](https://github.com/XARKUR/Qubic/blob/main/img/20.png?raw=true)

6.Copy the address and return to the Pool Mining page, enter your address in the settings to receive rewards.

***

#### Windows

1.You need to download the latest version of [Windows Cli]([qubic-li/client (github.com)](https://github.com/qubic-li/client#download))



![21.png](https://github.com/XARKUR/Qubic/blob/main/img/21.png?raw=true)

2.Modify `appsettings.json` file parameters

- amountOfThreads (number of threads used)
- payoutId (address to receive reward)
- accessToken (obtained from Pool Mining page)
- alias (miner’s name)

> Please note that **payoutId and accessToken cannot be filled in at the same time**. You only choose to fill in one of them. It is recommended to fill in accessToken, because we have set the address on the Pool Mining page before, and both can receive rewards.



![22.png](https://github.com/XARKUR/Qubic/blob/main/img/22.png?raw=true)

3.Run `qli-Client.exe` and enjoy your mining.


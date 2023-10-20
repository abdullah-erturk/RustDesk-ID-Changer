# RustDesk-ID-Changer
RustDesk ID Changer

RustDesk Github: https://github.com/rustdesk/rustdesk

	RustDesk_ID_Host.ps1 Description:
With the powershell script file here, the ID information of the RustDesk remote connection program will automatically turn into the name of the host computer.

There is no need to reboot.

RustDesk ID information sometimes does not change after image deployment in computer laboratory environments, the problem will be solved with this script file.

It is run as administrator with the following command:

PowerShell.exe -ExecutionPolicy Bypass -File RustDesk_ID_Host.ps1



	RustDesk_ID_Random.ps1 Description:
With the powershell script file here, the ID information of the RustDesk remote connection program will be converted into a value created from 9-digit random numbers.

There is no need to reboot.

It is run as administrator with the following command:

PowerShell.exe -ExecutionPolicy Bypass -File RustDesk_ID_Random.ps1



	RustDesk_ID_UserDefined.ps1 Description:

With the powershell script file here, the ID information of the RustDesk remote connection program will be converted to the value specified by the user.

There is no need to reboot.

It is run as administrator with the following command:

PowerShell.exe -ExecutionPolicy Bypass -File RustDesk_ID_UserDefined.ps1



All powershell scripts tested on Windows 7 - 8.1 - 10 and 11.

Sample preview:

![sample](https://github.com/abdullah-erturk/RustDesk-ID-Changer/blob/main/RustDeskID.png)



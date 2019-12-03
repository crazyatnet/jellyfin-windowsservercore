# jellyfin-windowsservercore
build jellyfinjellyfin_10.4.2.portable_windows-x64.zip docker image base mcr.microsoft.com/windows/servercore:10.0.17763.864

# docker run
```shell
docker run -itd --name jellyfin -p 8096:8096 -p 8920:8920 -p 1900:1900 -v "C:\Users\Administrator\AppData\Local\jellyfin:C:\Users\ContainerAdministrator\AppData\Local\jellyfin" -v "E:\电影:C:/media" crazyatnet/jellyfin-windowsservercore:1.0 
```

# firewall
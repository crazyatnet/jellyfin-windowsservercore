# jellyfin-windowsservercore
build jellyfinjellyfin_10.4.2.portable_windows-x64.zip docker image base mcr.microsoft.com/windows/servercore:10.0.17763.864

# docker run
`docker run -itd --name jellyfin -p 8096:8096 -p 8920:8920 -p 1900:1900 -v "C:/jellyfin/programdata:C:/jellyfin/programdata" -v "E:/电影:C:/media" crazyatnet/jellyfin-windowsservercore:1.0 `

# firewall
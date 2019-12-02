FROM mcr.microsoft.com/windows/servercore:10.0.17763.864
MAINTAINER crazyatnet@qq.com
COPY Windows/System32/* C:/Windows/System32/
ADD https://repo.jellyfin.org/releases/server/windows/versions/10.4.2/jellyfin_10.4.2.portable_windows-x64.zip C:/
#ADD jellyfin_10.4.2.portable_windows-x64.zip C:/
RUN unzip jellyfin_10.4.2.portable_windows-x64.zip && mkdir C:\jellyfin && move jellyfin_10.4.2 C:\jellyfin\system && del /Q jellyfin_10.4.2.portable_windows-x64.zip
EXPOSE 8096/tcp 8920/tcp 1900/udp
#EXPOSE 7359/udp
VOLUME [ "C:/jellyfin/programdata" ]
WORKDIR C:/jellyfin/system
CMD ["jellyfin.exe" , "--service" , "--configdir" ,"C:\\jellyfin\\programdata\\config" , "--datadir", "C:\\jellyfin\\programdata\\data" , "--cachedir", "C:\\jellyfin\\programdata\\cache"]
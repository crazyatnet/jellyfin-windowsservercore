FROM mcr.microsoft.com/windows/servercore:10.0.17763.864
MAINTAINER crazyatnet@qq.com
ENV JELLYFIN_VERSION 10.4.2
COPY Windows/System32/* C:/Windows/System32/
#ADD https://repo.jellyfin.org/releases/server/windows/versions/10.4.2/jellyfin_10.4.2.portable_windows-x64.zip C:/
#COPY jellyfin_10.4.2.portable_windows-x64.zip C:/
RUN cd C:\ && curl -fSLo jellyfin.zip https://repo.jellyfin.org/releases/server/windows/versions/%JELLYFIN_VERSION%/jellyfin_%JELLYFIN_VERSION%.portable_windows-x64.zip && tar -zxvf jellyfin.zip && mkdir C:\jellyfin && move jellyfin_%JELLYFIN_VERSION% C:\jellyfin\system && del /F /Q jellyfin.zip
EXPOSE 8096/tcp 8920/tcp 1900/udp
#EXPOSE 7359/udp
VOLUME [ "C:/Users/ContainerAdministrator/AppData/Local/jellyfin" ]
WORKDIR C:/jellyfin/system
CMD ["jellyfin.exe" , "--service" ]
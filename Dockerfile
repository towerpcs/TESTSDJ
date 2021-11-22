﻿FROM windev/webdev-base:[%VERSION%]

COPY Mon_Projet118.ZIP ${WEBDEVConfiguration}comptes/ftp_webdev/

RUN set -ex \
	&& cd ${WEBDEVBinaries} \
	&& ${WEBDEVBinaries}WDInstalle /DOCKER/INSTALLEGO/Mon_Projet118

# Création de la persistance
VOLUME ${WEBDEVConfiguration}comptes/Donnees/Mon_Projet118/
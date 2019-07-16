# Created by: Lapo Luchini <lapo@lapo.it>
# $FreeBSD$

PORTNAME=	cassandra-reaper
DISTVERSION=	1.4.4
DISTVERSIONSUFFIX=	-release
CATEGORIES=	databases java
MASTER_SITES=	https://dl.bintray.com/thelastpickle/reaper-tarball/

MAINTAINER=	lapo@lapo.it
COMMENT=	Automated repairs for Apache Cassandra

LICENSE=	APACHE20

RUN_DEPENDS=	javaservicewrapper:sysutils/javaservicewrapper

WRKSRC=		${WRKDIR}/${PORTNAME}-${DISTVERSION}
NO_ARCH=	yes
NO_BUILD=	yes

#USE_RC_SUBR=	${PORTNAME}
#USERS=		www
#GROUPS=		www

#USES=		dos2unix
#DOS2UNIX_GLOB=	*.properties *.conf

USE_JAVA=	yes
JAVA_VERSION=	1.8+

PLIST_FILES=	bin/cassandra-reaper bin/spreaper share/cassandra-reaper.jar "@sample etc/cassandra-reaper.yaml.sample"

do-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/etc
	@${CP} ${WRKSRC}/bin/* ${STAGEDIR}${PREFIX}/bin/
	@${CP} ${WRKSRC}/server/target/${PORTNAME}-${DISTVERSION}.jar ${STAGEDIR}${PREFIX}/share/cassandra-reaper.jar
	@${CP} ${WRKSRC}/resource/cassandra-reaper-cassandra.yaml ${STAGEDIR}${PREFIX}/etc/cassandra-reaper.yaml.sample

.include <bsd.port.mk>

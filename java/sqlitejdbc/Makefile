# Created by: Lapo Luchini <lapo@lapo.it>
# $FreeBSD: head/java/sqlitejdbc/Makefile 412347 2016-04-01 14:08:37Z mat $

PORTNAME=	sqlitejdbc
PORTVERSION=	056
DISTVERSIONPREFIX=	v
DISTVERSIONSUFFIX=	-src
PORTREVISION=	2
CATEGORIES=	java databases
MASTER_SITES=	http://files.zentus.com/sqlitejdbc/

MAINTAINER=	lapo@lapo.it
COMMENT=	Java JDBC driver for SQLite

LIB_DEPENDS=	libsqlite3.so:databases/sqlite3

WRKSRC=		${WRKDIR}/${PORTNAME}-${DISTVERSIONPREFIX}${DISTVERSION}
USE_JAVA=	yes
JAVA_VERSION=	1.6+
USES=		gmake tar:tgz
MAKE_ENV=	JAVA_HOME="${JAVA_HOME}"
ALL_TARGET=	native

PLIST_FILES=	%%JAVAJARDIR%%/sqlitejdbc-native.jar lib/libsqlitejdbc.so

post-patch:
	${REINPLACE_CMD} 's|%%LOCALBASE%%|${LOCALBASE}|' ${WRKSRC}/Makefile

do-install:
	${INSTALL_DATA} ${WRKSRC}/build/sqlitejdbc-v${PORTVERSION}-native.jar \
		${STAGEDIR}${JAVAJARDIR}/sqlitejdbc-native.jar
	${INSTALL_DATA} ${WRKSRC}/build/FreeBSD/libsqlitejdbc.so \
		${STAGEDIR}${PREFIX}/lib/

.include <bsd.port.mk>

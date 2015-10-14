# Created by: Lapo Luchini <lapo@lapo.it>
# $FreeBSD: head/java/sqlitejdbc/Makefile 363374 2014-07-29 19:11:51Z adamw $

PORTNAME=	sqlite-jdbc
PORTVERSION=	3.8.11.2
PORTEPOCH=	1
CATEGORIES=	java databases

MAINTAINER=	lapo@lapo.it
COMMENT=	Java JDBC driver for SQLite

LIB_DEPENDS=	libsqlite3.so:${PORTSDIR}/databases/sqlite3

USE_GITHUB=	yes
GH_ACCOUNT=	xerial
USE_JAVA=	yes
JAVA_VERSION=	1.6+
USES=		gmake
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

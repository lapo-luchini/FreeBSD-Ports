# Created by: Lapo Luchini <lapo@lapo.it>
# $FreeBSD: head/www/xpi-delicious/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	delicious
PORTVERSION=	1.3
CATEGORIES=	www
MASTER_SITES=	MOZDEV/${PORTNAME}

MAINTAINER=	lapo@lapo.it
COMMENT=	Extension to ease the use of del.icio.us remote bookmarks

XPI_ID=		{3c2f3d50-ec4f-11d8-9669-0800200c9a66}
XPI_FILES=	chrome/delicious.jar defaults/preferences/delicious.js install.rdf chrome.manifest
XPI_DIRS=	chrome defaults/preferences defaults

.include "${.CURDIR}/../xpi-adblock/Makefile.xpi"
.include <bsd.port.mk>

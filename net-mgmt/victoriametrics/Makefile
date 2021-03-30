# $FreeBSD$

PORTNAME=	victoriametrics
DISTVERSIONPREFIX=	v
DISTVERSION=	1.57.1
CATEGORIES=	net-mgmt

MAINTAINER=	lapo@lapo.it
COMMENT=	Fast, cost-effective and scalable time series database

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go:modules

USE_GITHUB=	yes
GH_TUPLE=	VictoriaMetrics:VictoriaMetrics:${DISTVERSIONFULL}

GO_TARGET=	./app/victoria-metrics #vmutils
CGO_ENABLED=	0

PLIST_FILES=	bin/victoria-metrics

.include <bsd.port.mk>

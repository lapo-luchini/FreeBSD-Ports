# $FreeBSD$

PORTNAME=	victoria-metrics
DISTVERSIONPREFIX=	v
DISTVERSION=	1.57.1
DISTVERSIONSUFFIX=	-0-g2d3082bb # git describe --long v${DISTVERSION}
CATEGORIES=	net-mgmt

MAINTAINER=	lapo@lapo.it
COMMENT=	Fast, cost-effective and scalable time series database

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go:modules

USE_GITHUB=	yes
GH_ACCOUNT=	VictoriaMetrics
GH_PROJECT=	VictoriaMetrics

GO_BUILDFLAGS=	-ldflags "-s -w -X github.com/${GH_ACCOUNT}/${GH_PROJECT}/lib/buildinfo.Version=$${out}-${SOURCE_DATE_CMD:sh}-${BUILDINFO}"
GO_TARGET=	\
	./app/victoria-metrics \
	./app/vmagent \
	./app/vmalert \
	./app/vmauth \
	./app/vmbackup \
	./app/vmrestore \
	./app/vmctl

CGO_ENABLED=	0

USE_RC_SUBR=	\
	vmagent

USERS=		victoria-metrics
GROUPS=		victoria-metrics

PLIST_FILES=	\
	bin/victoria-metrics \
	bin/vmagent \
	bin/vmalert \
	bin/vmauth \
	bin/vmbackup \
	bin/vmrestore \
	bin/vmctl

# Bring DISTINFO_FILE into scope so we can get the timestamp.
.include <bsd.port.pre.mk>

SOURCE_DATE_CMD=	date -ur $$(${GREP} TIMESTAMP ${DISTINFO_FILE} | ${CUT} -d ' ' -f 3) '+%Y%m%d-%H%M%S'
BUILDINFO=	tags-${DISTVERSIONFULL}

.include <bsd.port.post.mk>

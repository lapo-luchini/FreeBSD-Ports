PORTNAME=	victoria-logs

COMMENT=	Victoria Logs

# USE_RC_SUBR=	victoria-logs

DESCR=		${.CURDIR}/pkg-descr
PLIST=		${.CURDIR}/pkg-plist

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/victoria-logs-pure \
		${STAGEDIR}${PREFIX}/bin/victoria-logs

do-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${INSTALL_WRKSRC}/docs/VictoriaLogs/*.md ${STAGEDIR}${DOCSDIR}
	@${MKDIR} ${STAGEDIR}${DOCSDIR}/data-ingestion
	${INSTALL_DATA} ${INSTALL_WRKSRC}/docs/VictoriaLogs/data-ingestion/*.md ${STAGEDIR}${DOCSDIR}/data-ingestion

MASTERDIR=	${.CURDIR}/../victoria-metrics

.include "${MASTERDIR}/Makefile"

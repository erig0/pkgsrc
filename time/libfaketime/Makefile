DISTNAME=		libfaketime-0.9.10
CATEGORIES=		time
MASTER_SITES=		${MASTER_SITE_GITHUB:=wolfcw/}
GITHUB_PROJECT=		libfaketime
GITHUB_TAG=		v${PKGVERSION_NOREV}

MAINTAINER=		eric@garver.life
LICENSE=		gnu-gpl-v2

USE_TOOLS+=	gmake

INSTALLATION_DIRS=	bin man

SUBST_CLASSES+=		install
SUBST_STAGE.install=	pre-build
SUBST_FILES.install=	${WRKDIR}/${DISTNAME}/Makefile
SUBST_FILES.install+=	${WRKDIR}/${DISTNAME}/src/Makefile.OSX
SUBST_FILES.install+=	${WRKDIR}/${DISTNAME}/man/Makefile.OSX
SUBST_SED.install=	-e 's|\([(]INSTALL[)][ ]*\)[-]dm|\1 -d -m|'

.include "../../mk/bsd.pkg.mk"

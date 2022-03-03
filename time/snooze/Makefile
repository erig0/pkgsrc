DISTNAME=		snooze-0.5
CATEGORIES=		time
MASTER_SITES=		${MASTER_SITE_GITHUB:=leahneukirchen/}
GITHUB_TAG=		v${PKGVERSION_NOREV}

MAINTAINER=		eric@garver.life
COMMENT=		run a command at a particular time
LICENSE=		cc0-1.0-universal

INSTALLATION_DIRS=	bin man

SUBST_CLASSES+=		bindir
SUBST_STAGE.bindir=	pre-build
SUBST_MESSAGE.bindir=	Fixup installation bindir
SUBST_FILES.bindir=	Makefile
SUBST_SED.bindir=	-e "s:^BINDIR=.*:BINDIR=${PREFIX}/bin:"

SUBST_CLASSES+=		mandir
SUBST_STAGE.mandir=	pre-build
SUBST_MESSAGE.mandir=	Fixup installation mandir
SUBST_FILES.mandir=	Makefile
SUBST_SED.mandir=	-e "s:^MANDIR=.*:MANDIR=${PREFIX}/man:"

.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.4 2020/03/13 15:48:52 nia Exp $
#

TB_VER=		60.9.1
PKGNAME=	thunderbird60-l10n-${TB_VER}
DISTNAME=	# empty
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_MOZILLA:=thunderbird/releases/${TB_VER}/linux-i686/xpi/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.mozillamessaging.com/en-US/thunderbird/
COMMENT=	Language packs for mail/thunderbird

DEPENDS+=	thunderbird60>=${PKGVERSION_NOREV}:../../mail/thunderbird60

DIST_SUBDIR=	${PKGNAME_NOREV}
DISTFILES=	${XPI_FILES}

NO_BUILD=	yes

INSTALLATION_DIRS=	lib/thunderbird60/extensions

TB_LOCALES=		ar ast be bg br ca cs cy		\
                        da de dsb el en-GB en-US es-AR es-ES et	\
                        eu fi fr fy-NL ga-IE gd gl he hr hsb	\
                        hy-AM hu id is it ja ko			\
                        lt nb-NO nl nn-NO pl 			\
                        pt-BR pt-PT rm ro ru si sk		\
                        sl sq sr sv-SE tr uk vi			\
                        zh-CN zh-TW

EXTENSIONS_DIR=		${PREFIX}/lib/thunderbird60/extensions
XPI_FILES=		${TB_LOCALES:=.xpi}

do-install:
.for f in ${TB_LOCALES}
	${INSTALL_DATA} ${DISTDIR}/${DIST_SUBDIR}/${f}.xpi \
	${DESTDIR}${EXTENSIONS_DIR}/langpack-${f}@thunderbird.mozilla.org.xpi
.endfor

.include "../../mk/bsd.pkg.mk"

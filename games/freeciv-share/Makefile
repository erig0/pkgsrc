# $NetBSD: Makefile,v 1.46 2020/05/06 14:04:33 adam Exp $

PKGNAME=	${DISTNAME:S/-/-share-/}
PKGREVISION=	1
COMMENT=	Machine independent files for Freeciv

.include "../../games/freeciv-share/Makefile.common"

CONFIGURE_ARGS+=	--disable-server
CONFIGURE_ARGS+=	--disable-fcmp
CONFIGURE_ARGS+=	--disable-client
CONFIGURE_ARGS+=	--enable-make-data

SUBST_CLASSES+=			suppressguidata
SUBST_STAGE.suppressguidata=	pre-configure
SUBST_FILES.suppressguidata=	data/Makefile.in
SUBST_SED.suppressguidata=	-e 's|themes wonders|wonders|g'
SUBST_MESSAGE.suppressguidata=	Suppressing installation of gui themes

.include "../../mk/bsd.pkg.mk"

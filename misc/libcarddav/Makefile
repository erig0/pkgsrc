# $NetBSD: Makefile,v 1.30 2020/05/06 14:04:51 adam Exp $

DISTNAME=	libcarddav_0.6.2-2debian2
PKGNAME=	${DISTNAME:S/_/-/:S/-2debian2/.2.2/}
PKGREVISION=	24
CATEGORIES=	misc
#MASTER_SITES=	https://quickbuild.pearsoncomputing.net/~trinity/+archive/trinity-builddeps/+files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.trinitydesktop.org/relatedprojects.php
COMMENT=	CardDAV library
LICENSE=	gnu-gpl-v3

WRKSRC=		${WRKDIR}/${DISTNAME:S/_/-/:C/-[0-9]debian[0-9]//}

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config
USE_LIBTOOL=	yes

.include "options.mk"

.include "../../devel/glib2/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

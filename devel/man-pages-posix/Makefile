# $NetBSD: Makefile,v 1.7 2017/09/03 08:53:07 wiz Exp $

DISTNAME=	man-pages-posix-2017-a
CATEGORIES=	devel
MASTER_SITES=	https://www.kernel.org/pub/linux/docs/man-pages/man-pages-posix/
EXTRACT_SUFX=	.tar.xz
WRKSRC=		${WRKDIR}/man-pages-posix-2017

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/doc/man-pages/
COMMENT=	The Linux man-pages project for Linux kernel and C library interface
#LICENSE=	see POSIX-COPYRIGHT

NO_BUILD=	# This package only installs files.

USE_LANGUAGES=	# none
MAKE_FLAGS+=	prefix=${PREFIX} DESTDIR=${DESTDIR}

.include "../../mk/bsd.pkg.mk"

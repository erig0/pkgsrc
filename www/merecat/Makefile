# $NetBSD: Makefile,v 1.54 2025/03/30 10:02:53 nia Exp $

DISTNAME=	merecat-2.31
CATEGORIES=	www
MASTER_SITES=	https://troglobit.com/projects/merecat/
MASTER_SITES=	${MASTER_SITE_GITHUB:=troglobit/}
GITHUB_PROJECT=	merecat
GITHUB_RELEASE=	v${PKGVERSION_NOREV}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	eric@garver.life
HOMEPAGE=	https://troglobit.com/projects/merecat/
COMMENT=	Merecat httpd - Embedded Web Server

GNU_CONFIGURE=	yes
USE_TOOLS+= pkg-config

.include "../../devel/confuse/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

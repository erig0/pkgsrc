# $NetBSD: Makefile,v 1.18 2020/05/06 14:04:08 adam Exp $

DISTNAME=	netcdf-cxx-4.2
PKGREVISION=	16
CATEGORIES=	devel
MASTER_SITES=	https://www.unidata.ucar.edu/downloads/netcdf/ftp/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.unidata.ucar.edu/software/netcdf/index.html
COMMENT=	C++ support for NetCDF.

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
INFO_FILES=		yes

.include "../../devel/netcdf/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

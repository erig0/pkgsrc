# $NetBSD: Makefile,v 1.2 2020/01/09 14:21:06 wiz Exp $

DISTNAME=	google-auth-httplib2-0.0.3
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	security python
MASTER_SITES=	${MASTER_SITE_PYPI:=g/google-auth-httplib2/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/GoogleCloudPlatform/google-auth-library-python-httplib2
COMMENT=	Google Authentication Library: httplib2 transport
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-httplib2>=0.9.1:../../www/py-httplib2

PYTHON_VERSIONS_INCOMPATIBLE=	27
USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

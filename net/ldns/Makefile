# $NetBSD: Makefile,v 1.43 2020/01/18 21:50:17 jperkin Exp $

DISTNAME=	ldns-1.7.1
PKGREVISION=	2
CATEGORIES=	net
MASTER_SITES=	http://www.nlnetlabs.nl/downloads/ldns/

MAINTAINER=	he@NetBSD.org
HOMEPAGE=	http://www.nlnetlabs.nl/projects/ldns/
COMMENT=	Library for simplified DNS programming
LICENSE=	modified-bsd

USE_TOOLS+=		gmake perl
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

REPLACE_PERL=	doc/doxyparse.pl

CHECK_BUILTIN.openssl=	yes
.include "../../security/openssl/builtin.mk"
CHECK_BUILTIN.openssl=	no
.include "../../security/openssl/buildlink3.mk"

# if openssl < 1.1.0
CONFIGURE_ARGS+=	--disable-dane-verify

PLIST_VARS+=		sha2 gost
.if defined(USE_BUILTIN.openssl) && !empty(USE_BUILTIN.openssl:M[yY][eE][sS])
PLIST_VARS.gost!=	\
	if ${PKG_ADMIN} pmatch 'openssl>=1.0.0' ${BUILTIN_PKG.openssl:Q}; then \
		${ECHO} "yes";						\
	else								\
		${ECHO} "no";						\
	fi
PLIST_VARS.sha2!=	\
	if ${PKG_ADMIN} pmatch 'openssl>=0.9.8' ${BUILTIN_PKG.openssl:Q}; then \
		${ECHO} "yes";						\
	else								\
		${ECHO} "no";						\
	fi
.else
PLIST_VARS.gost!=	\
	if ${PKG_INFO} -qe 'openssl>=1.0.0'; then			\
		${ECHO} yes;						\
	else								\
		${ECHO} no;						\
	fi
PLIST_VARS.sha2!=	\
	if ${PKG_INFO} -qe 'openssl>=0.9.8'; then			\
		${ECHO} yes;						\
	else								\
		${ECHO} no;						\
	fi
.endif
.if ${PLIST_VARS.gost} == "yes"
CONFIGURE_ARGS+=	--enable-gost
.else
CONFIGURE_ARGS+=	--disable-gost
.endif
.if ${PLIST_VARS.sha2} == "yes"
CONFIGURE_ARGS+=	--enable-sha2
.else
CONFIGURE_ARGS+=	--disable-sha2
.endif
CONFIGURE_ARGS+=	--with-ssl=${SSLBASE}
CONFIGURE_ARGS+=	DOXYGEN=${FALSE}

CONFIGURE_ARGS+=	--with-examples

.include "../../mk/bsd.pkg.mk"

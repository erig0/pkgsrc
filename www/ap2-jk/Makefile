# $NetBSD: Makefile,v 1.15 2020/05/16 17:31:52 rillig Exp $

DISTNAME=	tomcat-connectors-${JK_VERSION}-src
PKGNAME=	${APACHE_PKG_PREFIX}-jk-${JK_VERSION}
JK_VERSION=	1.2.43
CATEGORIES=	www java
MASTER_SITES=	${MASTER_SITE_APACHE:=tomcat/tomcat-connectors/jk/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://tomcat.apache.org/connectors-doc/
COMMENT=	Apache connector for accessing Jakarta Tomcat
LICENSE=	apache-2.0

CONFLICTS=	ap-jk-[0-9]*

MAKE_PARAMS+=		USE_APXS=1
MAKE_PARAMS+=		WITH_APXS=${APXS}

INSTALLATION_DIRS+=	lib/httpd

do-install:
	${PREFIX}/share/httpd/build/instdso.sh \
	    SH_LIBTOOL=${PREFIX}/share/httpd/build/libtool \
	    ${WRKSRC}/apache-2.0/mod_jk.la \
	    ${DESTDIR}${PREFIX}/lib/httpd

WRKSRC=		${WRKDIR}/${DISTNAME}/native
APACHE_MODULE=	YES
BUILD_DEFS+=	JK_ENABLE_JNI

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake
OVERRIDE_DIRDEPTH=	3

SUBST_CLASSES+=		jk-lt
SUBST_STAGE.jk-lt=	post-configure
SUBST_FILES.jk-lt=	Makefile common/Makefile apache-2.0/Makefile
SUBST_SED.jk-lt=	-e "s|^\\(LIBTOOL *=\\).*\$$|\\1 \$$(SHELL) \$$(top_builddir)/libtool|g"
SUBST_MESSAGE.jk-lt=	Fixing libtool references.
SUBST_NOOP_OK.jk-lt=	yes

SUBST_CLASSES+=		jk-shlt
SUBST_STAGE.jk-shlt=	post-configure
SUBST_FILES.jk-shlt=	scripts/build/instdso.s
SUBST_SED.jk-shlt=	-e "s|^\\(SH_LIBTOOL *=\\).*\$$|\\1 \$$(SHELL) \$$(top_builddir)/libtool|g"
SUBST_MESSAGE.jk-shlt=	Fixing libtool references in install script.
SUBST_NOOP_OK.jk-shlt=	yes

# XXX The standard --with-apxs2 when using apache2 doesn't work
CONFIGURE_ARGS+=	--with-apxs=${APXS:Q}

.if defined(JK_ENABLE_JNI)
USE_JAVA=		yes
CONFIGURE_ARGS+=	--enable-jni
CONFIGURE_ARGS+=	--with-java-home=${JAVA_HOME:Q}
SUBST_FILES.jk-lt+=	jni/Makefile
.endif

.if defined(JK_ENABLE_JNI)
.include "../../mk/java-vm.mk"
.endif

.include "../../mk/apache.mk"
.include "../../mk/bsd.pkg.mk"

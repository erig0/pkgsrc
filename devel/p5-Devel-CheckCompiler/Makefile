# $NetBSD: Makefile,v 1.11 2019/08/11 13:19:15 wiz Exp $

DISTNAME=	Devel-CheckCompiler-0.07
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Devel/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Devel-CheckCompiler
COMMENT=	Check the compiler availability
LICENSE=	${PERL5_LICENSE}

PERL5_MODULE_TYPE=	Module::Build::Tiny
PERL5_PACKLIST=		auto/Devel/CheckCompiler/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"

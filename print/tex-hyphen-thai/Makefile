# $NetBSD: Makefile,v 1.8 2020/05/10 04:32:04 markd Exp $

DISTNAME=	hyphen-thai
PKGNAME=	tex-${DISTNAME}-2019.51186
PKGREVISION=	1
TEXLIVE_REV=	51186

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Thai hyphenation patterns
LICENSE=	lppl-1.3c

DEPENDS+=	tex-hyphen-base-[0-9]*:../../print/tex-hyphen-base
DEPENDS+=	tex-hyph-utf8-[0-9]*:../../print/tex-hyph-utf8

TEX_HYPHEN_DAT+=	thai loadhyph-th.tex
TEX_HYPHEN_DEF+=	\\addlanguage{thai}{loadhyph-th.tex}{}{2}{3}
TEX_HYPHEN_LUA+=	['thai']={ \
			  loader='loadhyph-th.tex', \
			  lefthyphenmin=2, \
			  righthyphenmin=3, \
			  synonyms={}, \
			  patterns='hyph-th.pat.txt', \
			  hyphenation='', \
			},

TEXLIVE_UNVERSIONED=	yes
.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"

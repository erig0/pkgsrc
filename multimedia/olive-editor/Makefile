# $NetBSD: Makefile,v 1.6 2020/04/12 08:29:03 adam Exp $

DISTNAME=	olive-editor-0.1.1
PKGREVISION=	4
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_GITHUB:=olive-editor/}
GITHUB_PROJECT=	olive

MAINTAINER=	nia@NetBSD.org
HOMEPAGE=	https://olivevideoeditor.org/
COMMENT=	Non-linear video editor
LICENSE=	gnu-gpl-v3

WRKSRC=		${WRKDIR}/olive-${PKGVERSION_NOREV}
USE_CMAKE=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++11

# C++11
GCC_REQD+=	4.7

CMAKE_ARGS+=	-DFFMPEG_INCLUDE_ROOT=${BUILDLINK_DIR}/include/ffmpeg4
CMAKE_ARGS+=	-DFFMPEG_LIB_ROOT=${BUILDLINK_DIR}/lib/ffmpeg4

.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../graphics/opencolorio/buildlink3.mk"
.include "../../multimedia/ffmpeg4/buildlink3.mk"
.include "../../multimedia/frei0r/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../x11/qt5-qtmultimedia/buildlink3.mk"
.include "../../x11/qt5-qtsvg/buildlink3.mk"
.include "../../x11/qt5-qttools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

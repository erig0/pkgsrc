# $NetBSD: Makefile,v 1.21 2020/05/06 14:04:43 adam Exp $

PKGNAME=	gnuradio-zeromq-${VERSION}
PKGREVISION=	4
COMMENT=	All of the zeromq blocks, utilities, and examples

#  zmq.hpp: No such file or directory
# https://github.com/zeromq/cppzmq.git

#GIT_REPOSITORIES=	master
#GIT_REPO.master=	https://github.com/zeromq/cppzmq.git
#GIT_MODULE.master=	cppzmq
# for work around, the file is copied to files directory

.include	"../../ham/gnuradio-core/Makefile.common"
.include	"../../ham/gnuradio-core/Nocore.mk"

CMAKE_ARGS+=	-DENABLE_DEFAULT=False
CMAKE_ARGS+=	-DENABLE_GR_ZEROMQ=True
CMAKE_ARGS+=	-DZEROMQ_INCLUDE_DIRS=${PREFIX}/include

post-patch:
	${CP}	${PKGDIR}/files/zmq.hpp ${WRKSRC}/gr-zeromq/include/

.include	"../../net/zeromq/buildlink3.mk"
.include	"../../mk/bsd.pkg.mk"

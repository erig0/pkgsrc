# $NetBSD: buildlink3.mk,v 1.6 2018/03/07 11:57:37 wiz Exp $

.include "../../mk/bsd.fast.prefs.mk"

.if ${X11_TYPE} != "modular"
.include "../../mk/x11.buildlink3.mk"
.else

BUILDLINK_TREE+=	libXxf86vm

.  if !defined(LIBXXF86VM_BUILDLINK3_MK)
LIBXXF86VM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libXxf86vm+=	libXxf86vm>=1.1.0
BUILDLINK_PKGSRCDIR.libXxf86vm?=	../../x11/libXxf86vm

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/xorgproto/buildlink3.mk"
.  endif # LIBXXF86VM_BUILDLINK3_MK

BUILDLINK_TREE+=	-libXxf86vm

.endif

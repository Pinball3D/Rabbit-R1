.class public final Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;
.super Ljava/lang/Object;
.source "PointerIcon.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u000e\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000c\u001a\u000e\u0010\n\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\"\u0014\u0010\u0006\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0003\"\u0014\u0010\u0008\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0003\u00a8\u0006\u000f"
    }
    d2 = {
        "pointerIconCrosshair",
        "Landroidx/compose/ui/input/pointer/PointerIcon;",
        "getPointerIconCrosshair",
        "()Landroidx/compose/ui/input/pointer/PointerIcon;",
        "pointerIconDefault",
        "getPointerIconDefault",
        "pointerIconHand",
        "getPointerIconHand",
        "pointerIconText",
        "getPointerIconText",
        "PointerIcon",
        "pointerIcon",
        "Landroid/view/PointerIcon;",
        "pointerIconType",
        "",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final pointerIconCrosshair:Landroidx/compose/ui/input/pointer/PointerIcon;

.field private static final pointerIconDefault:Landroidx/compose/ui/input/pointer/PointerIcon;

.field private static final pointerIconHand:Landroidx/compose/ui/input/pointer/PointerIcon;

.field private static final pointerIconText:Landroidx/compose/ui/input/pointer/PointerIcon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;-><init>(I)V

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerIcon;

    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->pointerIconDefault:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 79
    new-instance v0, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1}, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;-><init>(I)V

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerIcon;

    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->pointerIconCrosshair:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 80
    new-instance v0, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    const/16 v1, 0x3f0

    invoke-direct {v0, v1}, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;-><init>(I)V

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerIcon;

    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->pointerIconText:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 81
    new-instance v0, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    const/16 v1, 0x3ea

    invoke-direct {v0, v1}, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;-><init>(I)V

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerIcon;

    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->pointerIconHand:Landroidx/compose/ui/input/pointer/PointerIcon;

    return-void
.end method

.method public static final PointerIcon(I)Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 1

    .line 76
    new-instance v0, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    invoke-direct {v0, p0}, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;-><init>(I)V

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerIcon;

    return-object v0
.end method

.method public static final PointerIcon(Landroid/view/PointerIcon;)Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 1

    const-string v0, "pointerIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroidx/compose/ui/input/pointer/AndroidPointerIcon;

    invoke-direct {v0, p0}, Landroidx/compose/ui/input/pointer/AndroidPointerIcon;-><init>(Landroid/view/PointerIcon;)V

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerIcon;

    return-object v0
.end method

.method public static final getPointerIconCrosshair()Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 1

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->pointerIconCrosshair:Landroidx/compose/ui/input/pointer/PointerIcon;

    return-object v0
.end method

.method public static final getPointerIconDefault()Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 1

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->pointerIconDefault:Landroidx/compose/ui/input/pointer/PointerIcon;

    return-object v0
.end method

.method public static final getPointerIconHand()Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 1

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->pointerIconHand:Landroidx/compose/ui/input/pointer/PointerIcon;

    return-object v0
.end method

.method public static final getPointerIconText()Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 1

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->pointerIconText:Landroidx/compose/ui/input/pointer/PointerIcon;

    return-object v0
.end method

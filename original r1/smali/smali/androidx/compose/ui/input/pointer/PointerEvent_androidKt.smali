.class public final Landroidx/compose/ui/input/pointer/PointerEvent_androidKt;
.super Ljava/lang/Object;
.source "PointerEvent.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0010\u0008\n\u0002\u0008\u000b\u001a\u0010\u0010$\u001a\u00020\u0006H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%\u001a\u0017\u0010&\u001a\u00020\'*\u00020\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010)\u001a\u0017\u0010*\u001a\u00020\'*\u00020\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010)\u001a\u001f\u0010,\u001a\u00020\u0001*\u00020\u00022\u0006\u0010-\u001a\u00020\'\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010/\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0018\u0010\u0005\u001a\u00020\u0001*\u00020\u00068F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0004\"\u0018\u0010\u0008\u001a\u00020\u0001*\u00020\u00068F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0004\"\u0018\u0010\n\u001a\u00020\u0001*\u00020\u00028F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0004\"\u0018\u0010\u000c\u001a\u00020\u0001*\u00020\u00068F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u0004\"\u0018\u0010\u000e\u001a\u00020\u0001*\u00020\u00068F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0004\"\u0018\u0010\u0010\u001a\u00020\u0001*\u00020\u00028F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0004\"\u0018\u0010\u0012\u001a\u00020\u0001*\u00020\u00068F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0004\"\u0018\u0010\u0014\u001a\u00020\u0001*\u00020\u00068F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0004\"\u0018\u0010\u0016\u001a\u00020\u0001*\u00020\u00068F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0004\"\u0018\u0010\u0018\u001a\u00020\u0001*\u00020\u00028F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0004\"\u0018\u0010\u001a\u001a\u00020\u0001*\u00020\u00068F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0004\"\u0018\u0010\u001c\u001a\u00020\u0001*\u00020\u00028F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0004\"\u0018\u0010\u001e\u001a\u00020\u0001*\u00020\u00068F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0004\"\u0018\u0010 \u001a\u00020\u0001*\u00020\u00068F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0004\"\u0018\u0010\"\u001a\u00020\u0001*\u00020\u00028F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u0004*\u000c\u0008\u0000\u00100\"\u00020\'2\u00020\'*\u000c\u0008\u0000\u00101\"\u00020\'2\u00020\'\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00062"
    }
    d2 = {
        "areAnyPressed",
        "",
        "Landroidx/compose/ui/input/pointer/PointerButtons;",
        "getAreAnyPressed-aHzCx-E",
        "(I)Z",
        "isAltGraphPressed",
        "Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;",
        "isAltGraphPressed-5xRPYO0",
        "isAltPressed",
        "isAltPressed-5xRPYO0",
        "isBackPressed",
        "isBackPressed-aHzCx-E",
        "isCapsLockOn",
        "isCapsLockOn-5xRPYO0",
        "isCtrlPressed",
        "isCtrlPressed-5xRPYO0",
        "isForwardPressed",
        "isForwardPressed-aHzCx-E",
        "isFunctionPressed",
        "isFunctionPressed-5xRPYO0",
        "isMetaPressed",
        "isMetaPressed-5xRPYO0",
        "isNumLockOn",
        "isNumLockOn-5xRPYO0",
        "isPrimaryPressed",
        "isPrimaryPressed-aHzCx-E",
        "isScrollLockOn",
        "isScrollLockOn-5xRPYO0",
        "isSecondaryPressed",
        "isSecondaryPressed-aHzCx-E",
        "isShiftPressed",
        "isShiftPressed-5xRPYO0",
        "isSymPressed",
        "isSymPressed-5xRPYO0",
        "isTertiaryPressed",
        "isTertiaryPressed-aHzCx-E",
        "EmptyPointerKeyboardModifiers",
        "()I",
        "indexOfFirstPressed",
        "",
        "indexOfFirstPressed-aHzCx-E",
        "(I)I",
        "indexOfLastPressed",
        "indexOfLastPressed-aHzCx-E",
        "isPressed",
        "buttonIndex",
        "isPressed-bNIWhpI",
        "(II)Z",
        "NativePointerButtons",
        "NativePointerKeyboardModifiers",
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


# direct methods
.method public static final EmptyPointerKeyboardModifiers()I
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static final getAreAnyPressed-aHzCx-E(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final indexOfFirstPressed-aHzCx-E(I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    and-int/lit8 v0, p0, 0x60

    ushr-int/lit8 v0, v0, 0x5

    and-int/lit8 p0, p0, -0x61

    or-int/2addr p0, v0

    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static final indexOfLastPressed-aHzCx-E(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x60

    ushr-int/lit8 v0, v0, 0x5

    and-int/lit8 p0, p0, -0x61

    or-int/2addr p0, v0

    const/4 v0, -0x1

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static final isAltGraphPressed-5xRPYO0(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static final isAltPressed-5xRPYO0(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isBackPressed-aHzCx-E(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isCapsLockOn-5xRPYO0(I)Z
    .locals 1

    const/high16 v0, 0x100000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isCtrlPressed-5xRPYO0(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isForwardPressed-aHzCx-E(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isFunctionPressed-5xRPYO0(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isMetaPressed-5xRPYO0(I)Z
    .locals 1

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isNumLockOn-5xRPYO0(I)Z
    .locals 1

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isPressed-bNIWhpI(II)Z
    .locals 4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    add-int/2addr p1, v2

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/input/pointer/PointerEvent_androidKt;->isSecondaryPressed-aHzCx-E(I)Z

    move-result v0

    goto :goto_0

    .line 138
    :cond_3
    invoke-static {p0}, Landroidx/compose/ui/input/pointer/PointerEvent_androidKt;->isPrimaryPressed-aHzCx-E(I)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static final isPrimaryPressed-aHzCx-E(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x21

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isScrollLockOn-5xRPYO0(I)Z
    .locals 1

    const/high16 v0, 0x400000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isSecondaryPressed-aHzCx-E(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x42

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isShiftPressed-5xRPYO0(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isSymPressed-5xRPYO0(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isTertiaryPressed-aHzCx-E(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

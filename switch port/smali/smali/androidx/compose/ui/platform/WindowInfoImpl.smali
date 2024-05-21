.class public final Landroidx/compose/ui/platform/WindowInfoImpl;
.super Ljava/lang/Object;
.source "WindowInfo.kt"

# interfaces
.implements Landroidx/compose/ui/platform/WindowInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/WindowInfoImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00058V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR3\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u000b8W@VX\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0012\u0012\u0004\u0008\r\u0010\u0002\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/ui/platform/WindowInfoImpl;",
        "Landroidx/compose/ui/platform/WindowInfo;",
        "()V",
        "_isWindowFocused",
        "Landroidx/compose/runtime/MutableState;",
        "",
        "value",
        "isWindowFocused",
        "()Z",
        "setWindowFocused",
        "(Z)V",
        "Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;",
        "keyboardModifiers",
        "getKeyboardModifiers-k7X9c1A$annotations",
        "getKeyboardModifiers-k7X9c1A",
        "()I",
        "setKeyboardModifiers-5xRPYO0",
        "(I)V",
        "Companion",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/platform/WindowInfoImpl$Companion;

.field private static final GlobalKeyboardModifiers:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _isWindowFocused:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/platform/WindowInfoImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/WindowInfoImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/WindowInfoImpl;->Companion:Landroidx/compose/ui/platform/WindowInfoImpl$Companion;

    .line 78
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerEvent_androidKt;->EmptyPointerKeyboardModifiers()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;->box-impl(I)Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/WindowInfoImpl;->GlobalKeyboardModifiers:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/WindowInfoImpl;->_isWindowFocused:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public static final synthetic access$getGlobalKeyboardModifiers$cp()Landroidx/compose/runtime/MutableState;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/WindowInfoImpl;->GlobalKeyboardModifiers:Landroidx/compose/runtime/MutableState;

    return-object v0
.end method

.method public static synthetic getKeyboardModifiers-k7X9c1A$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getKeyboardModifiers-k7X9c1A()I
    .locals 0

    sget-object p0, Landroidx/compose/ui/platform/WindowInfoImpl;->GlobalKeyboardModifiers:Landroidx/compose/runtime/MutableState;

    .line 72
    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;->unbox-impl()I

    move-result p0

    return p0
.end method

.method public isWindowFocused()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/WindowInfoImpl;->_isWindowFocused:Landroidx/compose/runtime/MutableState;

    .line 67
    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setKeyboardModifiers-5xRPYO0(I)V
    .locals 0

    sget-object p0, Landroidx/compose/ui/platform/WindowInfoImpl;->GlobalKeyboardModifiers:Landroidx/compose/runtime/MutableState;

    .line 73
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;->box-impl(I)Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setWindowFocused(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/WindowInfoImpl;->_isWindowFocused:Landroidx/compose/runtime/MutableState;

    .line 66
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

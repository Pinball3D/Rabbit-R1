.class public final Landroidx/compose/ui/input/pointer/PointerEventType$Companion;
.super Ljava/lang/Object;
.source "PointerEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/input/pointer/PointerEventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u000b\u0010\u0006R\u001c\u0010\u000c\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\r\u0010\u0006R\u001c\u0010\u000e\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u000f\u0010\u0006R\u001c\u0010\u0010\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0011\u0010\u0006R\u001c\u0010\u0012\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0013\u0010\u0006\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/PointerEventType$Companion;",
        "",
        "()V",
        "Enter",
        "Landroidx/compose/ui/input/pointer/PointerEventType;",
        "getEnter-7fucELk",
        "()I",
        "I",
        "Exit",
        "getExit-7fucELk",
        "Move",
        "getMove-7fucELk",
        "Press",
        "getPress-7fucELk",
        "Release",
        "getRelease-7fucELk",
        "Scroll",
        "getScroll-7fucELk",
        "Unknown",
        "getUnknown-7fucELk",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnter-7fucELk()I
    .locals 0

    .line 343
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerEventType;->access$getEnter$cp()I

    move-result p0

    return p0
.end method

.method public final getExit-7fucELk()I
    .locals 0

    .line 352
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerEventType;->access$getExit$cp()I

    move-result p0

    return p0
.end method

.method public final getMove-7fucELk()I
    .locals 0

    .line 333
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerEventType;->access$getMove$cp()I

    move-result p0

    return p0
.end method

.method public final getPress-7fucELk()I
    .locals 0

    .line 323
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerEventType;->access$getPress$cp()I

    move-result p0

    return p0
.end method

.method public final getRelease-7fucELk()I
    .locals 0

    .line 328
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerEventType;->access$getRelease$cp()I

    move-result p0

    return p0
.end method

.method public final getScroll-7fucELk()I
    .locals 0

    .line 358
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerEventType;->access$getScroll$cp()I

    move-result p0

    return p0
.end method

.method public final getUnknown-7fucELk()I
    .locals 0

    .line 318
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerEventType;->access$getUnknown$cp()I

    move-result p0

    return p0
.end method

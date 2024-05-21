.class public final Landroidx/compose/ui/input/key/KeyEvent;
.super Ljava/lang/Object;
.source "KeyEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0087@\u0018\u00002\u00020\u0001B\u0016\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001a\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u0088\u0001\u0002\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "",
        "nativeKeyEvent",
        "Landroid/view/KeyEvent;",
        "Landroidx/compose/ui/input/key/NativeKeyEvent;",
        "constructor-impl",
        "(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;",
        "getNativeKeyEvent",
        "()Landroid/view/KeyEvent;",
        "equals",
        "",
        "other",
        "equals-impl",
        "(Landroid/view/KeyEvent;Ljava/lang/Object;)Z",
        "hashCode",
        "",
        "hashCode-impl",
        "(Landroid/view/KeyEvent;)I",
        "toString",
        "",
        "toString-impl",
        "(Landroid/view/KeyEvent;)Ljava/lang/String;",
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

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field private final nativeKeyEvent:Landroid/view/KeyEvent;


# direct methods
.method private synthetic constructor <init>(Landroid/view/KeyEvent;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    return-void
.end method

.method public static final synthetic box-impl(Landroid/view/KeyEvent;)Landroidx/compose/ui/input/key/KeyEvent;
    .locals 1

    new-instance v0, Landroidx/compose/ui/input/key/KeyEvent;

    invoke-direct {v0, p0}, Landroidx/compose/ui/input/key/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    return-object v0
.end method

.method public static constructor-impl(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 1

    const-string v0, "nativeKeyEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static equals-impl(Landroid/view/KeyEvent;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/input/key/KeyEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/KeyEvent;->unbox-impl()Landroid/view/KeyEvent;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(Landroid/view/KeyEvent;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hashCode-impl(Landroid/view/KeyEvent;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->hashCode()I

    move-result p0

    return p0
.end method

.method public static toString-impl(Landroid/view/KeyEvent;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyEvent(nativeKeyEvent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    invoke-static {p0, p1}, Landroidx/compose/ui/input/key/KeyEvent;->equals-impl(Landroid/view/KeyEvent;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getNativeKeyEvent()Landroid/view/KeyEvent;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent;->hashCode-impl(Landroid/view/KeyEvent;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent;->toString-impl(Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()Landroid/view/KeyEvent;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    return-object p0
.end method

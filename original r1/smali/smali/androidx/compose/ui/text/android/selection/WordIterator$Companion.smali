.class public final Landroidx/compose/ui/text/android/selection/WordIterator$Companion;
.super Ljava/lang/Object;
.source "WordIterator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/android/selection/WordIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/ui/text/android/selection/WordIterator$Companion;",
        "",
        "()V",
        "WINDOW_WIDTH",
        "",
        "isPunctuation",
        "",
        "cp",
        "isPunctuation$ui_text_release",
        "ui-text_release"
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

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/selection/WordIterator$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isPunctuation$ui_text_release(I)Z
    .locals 0

    .line 292
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 p1, 0x17

    if-eq p0, p1, :cond_1

    const/16 p1, 0x14

    if-eq p0, p1, :cond_1

    const/16 p1, 0x16

    if-eq p0, p1, :cond_1

    const/16 p1, 0x1e

    if-eq p0, p1, :cond_1

    const/16 p1, 0x1d

    if-eq p0, p1, :cond_1

    const/16 p1, 0x18

    if-eq p0, p1, :cond_1

    const/16 p1, 0x15

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

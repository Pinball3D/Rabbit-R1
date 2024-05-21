.class public final Landroidx/compose/ui/input/pointer/PointerInputEventProcessorKt;
.super Ljava/lang/Object;
.source "PointerInputEventProcessor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006"
    }
    d2 = {
        "ProcessResult",
        "Landroidx/compose/ui/input/pointer/ProcessResult;",
        "dispatchedToAPointerInputModifier",
        "",
        "anyMovementConsumed",
        "(ZZ)I",
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
.method public static final ProcessResult(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p0, p1

    .line 233
    invoke-static {p0}, Landroidx/compose/ui/input/pointer/ProcessResult;->constructor-impl(I)I

    move-result p0

    return p0
.end method

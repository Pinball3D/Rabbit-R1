.class public final Landroidx/compose/runtime/SnapshotStateExtensionsKt;
.super Ljava/lang/Object;
.source "SnapshotStateExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0007\u001a\u0012\u0010\u0004\u001a\u00020\u0005*\u0008\u0012\u0004\u0012\u00020\u00060\u0002H\u0007\u001a\u0012\u0010\u0007\u001a\u00020\u0008*\u0008\u0012\u0004\u0012\u00020\t0\u0002H\u0007\u001a\u0012\u0010\n\u001a\u00020\u000b*\u0008\u0012\u0004\u0012\u00020\u000c0\u0002H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "asDoubleState",
        "Landroidx/compose/runtime/DoubleState;",
        "Landroidx/compose/runtime/State;",
        "",
        "asFloatState",
        "Landroidx/compose/runtime/FloatState;",
        "",
        "asIntState",
        "Landroidx/compose/runtime/IntState;",
        "",
        "asLongState",
        "Landroidx/compose/runtime/LongState;",
        "",
        "runtime_release"
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
.method public static final asDoubleState(Landroidx/compose/runtime/State;)Landroidx/compose/runtime/DoubleState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Double;",
            ">;)",
            "Landroidx/compose/runtime/DoubleState;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    instance-of v0, p0, Landroidx/compose/runtime/DoubleState;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/runtime/DoubleState;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/runtime/UnboxedDoubleState;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/UnboxedDoubleState;-><init>(Landroidx/compose/runtime/State;)V

    move-object p0, v0

    check-cast p0, Landroidx/compose/runtime/DoubleState;

    :goto_0
    return-object p0
.end method

.method public static final asFloatState(Landroidx/compose/runtime/State;)Landroidx/compose/runtime/FloatState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/compose/runtime/FloatState;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    instance-of v0, p0, Landroidx/compose/runtime/FloatState;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/runtime/FloatState;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/runtime/UnboxedFloatState;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/UnboxedFloatState;-><init>(Landroidx/compose/runtime/State;)V

    move-object p0, v0

    check-cast p0, Landroidx/compose/runtime/FloatState;

    :goto_0
    return-object p0
.end method

.method public static final asIntState(Landroidx/compose/runtime/State;)Landroidx/compose/runtime/IntState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/runtime/IntState;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p0, Landroidx/compose/runtime/IntState;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/runtime/IntState;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/runtime/UnboxedIntState;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/UnboxedIntState;-><init>(Landroidx/compose/runtime/State;)V

    move-object p0, v0

    check-cast p0, Landroidx/compose/runtime/IntState;

    :goto_0
    return-object p0
.end method

.method public static final asLongState(Landroidx/compose/runtime/State;)Landroidx/compose/runtime/LongState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroidx/compose/runtime/LongState;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    instance-of v0, p0, Landroidx/compose/runtime/LongState;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/runtime/LongState;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/runtime/UnboxedLongState;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/UnboxedLongState;-><init>(Landroidx/compose/runtime/State;)V

    move-object p0, v0

    check-cast p0, Landroidx/compose/runtime/LongState;

    :goto_0
    return-object p0
.end method

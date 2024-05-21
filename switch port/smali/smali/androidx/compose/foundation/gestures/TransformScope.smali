.class public interface abstract Landroidx/compose/foundation/gestures/TransformScope;
.super Ljava/lang/Object;
.source "TransformableState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/TransformScope$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J3\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\n\u00f8\u0001\u0002\u0082\u0002\u0011\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\n\u0004\u0008!0\u0001\u00a8\u0006\u000b\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/TransformScope;",
        "",
        "transformBy",
        "",
        "zoomChange",
        "",
        "panChange",
        "Landroidx/compose/ui/geometry/Offset;",
        "rotationChange",
        "transformBy-d-4ec7I",
        "(FJF)V",
        "foundation_release"
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
.method public static synthetic transformBy-d-4ec7I$default(Landroidx/compose/foundation/gestures/TransformScope;FJFILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 78
    sget-object p2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p2

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 76
    :cond_2
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/TransformScope;->transformBy-d-4ec7I(FJF)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: transformBy-d-4ec7I"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract transformBy-d-4ec7I(FJF)V
.end method

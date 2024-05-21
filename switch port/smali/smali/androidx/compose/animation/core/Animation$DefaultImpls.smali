.class public final Landroidx/compose/animation/core/Animation$DefaultImpls;
.super Ljava/lang/Object;
.source "Animation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static isFinishedFromNanos(Landroidx/compose/animation/core/Animation;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/Animation<",
            "TT;TV;>;J)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/Animation;->access$isFinishedFromNanos$jd(Landroidx/compose/animation/core/Animation;J)Z

    move-result p0

    return p0
.end method

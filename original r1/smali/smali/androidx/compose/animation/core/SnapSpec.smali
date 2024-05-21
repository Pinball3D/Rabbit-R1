.class public final Landroidx/compose/animation/core/SnapSpec;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/DurationBasedAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u000f\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0013\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0016J,\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u000e\"\u0008\u0008\u0001\u0010\u000f*\u00020\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u000f0\u0012H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/animation/core/SnapSpec;",
        "T",
        "Landroidx/compose/animation/core/DurationBasedAnimationSpec;",
        "delay",
        "",
        "(I)V",
        "getDelay",
        "()I",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "vectorize",
        "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "converter",
        "Landroidx/compose/animation/core/TwoWayConverter;",
        "animation-core_release"
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
.field public static final $stable:I


# instance fields
.field private final delay:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/animation/core/SnapSpec;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/SnapSpec;->delay:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 376
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/SnapSpec;-><init>(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 382
    instance-of v0, p1, Landroidx/compose/animation/core/SnapSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 383
    check-cast p1, Landroidx/compose/animation/core/SnapSpec;

    iget p1, p1, Landroidx/compose/animation/core/SnapSpec;->delay:I

    iget p0, p0, Landroidx/compose/animation/core/SnapSpec;->delay:I

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getDelay()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/SnapSpec;->delay:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/SnapSpec;->delay:I

    return p0
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/SnapSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/VectorizedAnimationSpec;

    return-object p0
.end method

.method public vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;)",
            "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "converter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    new-instance p1, Landroidx/compose/animation/core/VectorizedSnapSpec;

    iget p0, p0, Landroidx/compose/animation/core/SnapSpec;->delay:I

    invoke-direct {p1, p0}, Landroidx/compose/animation/core/VectorizedSnapSpec;-><init>(I)V

    check-cast p1, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    return-object p1
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/SnapSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    return-object p0
.end method

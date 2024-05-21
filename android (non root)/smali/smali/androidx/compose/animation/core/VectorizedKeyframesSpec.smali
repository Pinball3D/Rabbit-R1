.class public final Landroidx/compose/animation/core/VectorizedKeyframesSpec;
.super Ljava/lang/Object;
.source "VectorizedAnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B7\u0012\u001e\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00080\u00070\u0005\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000bJ-\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0018J-\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\u001dR\u0014\u0010\n\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\t\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR&\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00080\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00028\u0000X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0010\u0010\u0011\u001a\u00028\u0000X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u0010\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/animation/core/VectorizedKeyframesSpec;",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;",
        "keyframes",
        "",
        "",
        "Lkotlin/Pair;",
        "Landroidx/compose/animation/core/Easing;",
        "durationMillis",
        "delayMillis",
        "(Ljava/util/Map;II)V",
        "getDelayMillis",
        "()I",
        "getDurationMillis",
        "valueVector",
        "Landroidx/compose/animation/core/AnimationVector;",
        "velocityVector",
        "getValueFromNanos",
        "playTimeNanos",
        "",
        "initialValue",
        "targetValue",
        "initialVelocity",
        "(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;",
        "getVelocityFromNanos",
        "init",
        "",
        "value",
        "(Landroidx/compose/animation/core/AnimationVector;)V",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final delayMillis:I

.field private final durationMillis:I

.field private final keyframes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "TV;",
            "Landroidx/compose/animation/core/Easing;",
            ">;>;"
        }
    .end annotation
.end field

.field private valueVector:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private velocityVector:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lkotlin/Pair<",
            "+TV;+",
            "Landroidx/compose/animation/core/Easing;",
            ">;>;II)V"
        }
    .end annotation

    const-string v0, "keyframes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->keyframes:Ljava/util/Map;

    iput p2, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->durationMillis:I

    iput p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->delayMillis:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 226
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;-><init>(Ljava/util/Map;II)V

    return-void
.end method

.method private final init(Landroidx/compose/animation/core/AnimationVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v0, :cond_0

    .line 281
    invoke-static {p1}, Landroidx/compose/animation/core/AnimationVectorsKt;->newInstance(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 282
    invoke-static {p1}, Landroidx/compose/animation/core/AnimationVectorsKt;->newInstance(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDelayMillis()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->delayMillis:I

    return p0
.end method

.method public getDurationMillis()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->durationMillis:I

    return p0
.end method

.method public getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;TV;TV;)TV;"
        }
    .end annotation

    const-string v0, "initialValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetValue"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialVelocity"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0xf4240

    .line 241
    div-long/2addr p1, v0

    .line 242
    move-object p5, p0

    check-cast p5, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    invoke-static {p5, p1, p2}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->access$clampPlayTime(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;J)J

    move-result-wide p1

    long-to-int p1, p1

    iget-object p2, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->keyframes:Ljava/util/Map;

    .line 244
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->keyframes:Ljava/util/Map;

    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationVector;

    return-object p0

    .line 248
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->getDurationMillis()I

    move-result p2

    if-lt p1, p2, :cond_1

    return-object p4

    :cond_1
    if-gtz p1, :cond_2

    return-object p3

    .line 255
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->getDurationMillis()I

    move-result p2

    .line 256
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object p5

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->keyframes:Ljava/util/Map;

    .line 257
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, p3

    move v2, v1

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    if-le p1, v5, :cond_4

    if-lt v5, v2, :cond_4

    .line 260
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p5

    move-object v3, p5

    check-cast v3, Landroidx/compose/animation/core/AnimationVector;

    .line 261
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/compose/animation/core/Easing;

    move v2, v5

    goto :goto_0

    :cond_4
    if-ge p1, v5, :cond_3

    if-gt v5, p2, :cond_3

    .line 264
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Landroidx/compose/animation/core/AnimationVector;

    move p2, v5

    goto :goto_0

    :cond_5
    sub-int/2addr p1, v2

    int-to-float p1, p1

    sub-int/2addr p2, v2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 269
    invoke-interface {p5, p1}, Landroidx/compose/animation/core/Easing;->transform(F)F

    move-result p1

    .line 272
    invoke-direct {p0, p3}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->init(Landroidx/compose/animation/core/AnimationVector;)V

    .line 273
    invoke-virtual {v3}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result p2

    :goto_1
    const/4 p3, 0x0

    const-string/jumbo p5, "valueVector"

    if-ge v1, p2, :cond_7

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v0, :cond_6

    .line 274
    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object p3, v0

    :goto_2
    invoke-virtual {v3, v1}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result p5

    invoke-virtual {p4, v1}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v0

    invoke-static {p5, v0, p1}, Landroidx/compose/animation/core/VectorConvertersKt;->lerp(FFF)F

    move-result p5

    invoke-virtual {p3, v1, p5}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez p0, :cond_8

    .line 276
    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object p3, p0

    :goto_3
    return-object p3
.end method

.method public getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;TV;TV;)TV;"
        }
    .end annotation

    const-string v0, "initialValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetValue"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialVelocity"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0xf4240

    .line 292
    div-long/2addr p1, v0

    .line 293
    move-object v0, p0

    check-cast v0, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    invoke-static {v0, p1, p2}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->access$clampPlayTime(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;J)J

    move-result-wide v2

    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-gtz p1, :cond_0

    return-object p5

    .line 297
    :cond_0
    move-object v1, p0

    check-cast v1, Landroidx/compose/animation/core/VectorizedAnimationSpec;

    const-wide/16 p1, 0x1

    sub-long v5, v2, p1

    move-object v4, v1

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v4 .. v9}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->getValueFromMillis(Landroidx/compose/animation/core/VectorizedAnimationSpec;JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 303
    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->getValueFromMillis(Landroidx/compose/animation/core/VectorizedAnimationSpec;JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p2

    .line 310
    invoke-direct {p0, p3}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->init(Landroidx/compose/animation/core/AnimationVector;)V

    .line 311
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    const/4 p5, 0x0

    const-string/jumbo v0, "velocityVector"

    if-ge p4, p3, :cond_2

    iget-object v1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v1, :cond_1

    .line 312
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p5, v1

    :goto_1
    invoke-virtual {p1, p4}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v0

    invoke-virtual {p2, p4}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-virtual {p5, p4, v0}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez p0, :cond_3

    .line 314
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object p5, p0

    :goto_2
    return-object p5
.end method

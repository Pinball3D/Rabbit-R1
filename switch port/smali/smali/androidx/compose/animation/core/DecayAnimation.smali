.class public final Landroidx/compose/animation/core/DecayAnimation;
.super Ljava/lang/Object;
.source "Animation.kt"

# interfaces
.implements Landroidx/compose/animation/core/Animation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/Animation<",
        "TT;TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004B9\u0008\u0016\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0008\u0012\u0006\u0010\t\u001a\u00028\u0000\u0012\u0006\u0010\n\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u000bB9\u0008\u0016\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0008\u0012\u0006\u0010\t\u001a\u00028\u0000\u0012\u0006\u0010\u000c\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\rB7\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000e\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0008\u0012\u0006\u0010\t\u001a\u00028\u0000\u0012\u0006\u0010\n\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u000fJ\u0015\u0010#\u001a\u00028\u00002\u0006\u0010$\u001a\u00020\u0011H\u0016\u00a2\u0006\u0002\u0010%J\u0015\u0010&\u001a\u00028\u00012\u0006\u0010$\u001a\u00020\u0011H\u0016\u00a2\u0006\u0002\u0010\'R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u00028\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u0013\u0010\t\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008\u0016\u0010\u0017R\u0010\u0010\u0019\u001a\u00028\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u0013\u0010\n\u001a\u00028\u0001\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u001dX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001eR\u0016\u0010\u001f\u001a\u00028\u0000X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008 \u0010\u0017R \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u0006("
    }
    d2 = {
        "Landroidx/compose/animation/core/DecayAnimation;",
        "T",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "Landroidx/compose/animation/core/Animation;",
        "animationSpec",
        "Landroidx/compose/animation/core/DecayAnimationSpec;",
        "typeConverter",
        "Landroidx/compose/animation/core/TwoWayConverter;",
        "initialValue",
        "initialVelocityVector",
        "(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V",
        "initialVelocity",
        "(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;)V",
        "Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;",
        "(Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V",
        "durationNanos",
        "",
        "getDurationNanos",
        "()J",
        "endVelocity",
        "Landroidx/compose/animation/core/AnimationVector;",
        "getInitialValue",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "initialValueVector",
        "getInitialVelocityVector",
        "()Landroidx/compose/animation/core/AnimationVector;",
        "isInfinite",
        "",
        "()Z",
        "targetValue",
        "getTargetValue",
        "getTypeConverter",
        "()Landroidx/compose/animation/core/TwoWayConverter;",
        "getValueFromNanos",
        "playTimeNanos",
        "(J)Ljava/lang/Object;",
        "getVelocityVectorFromNanos",
        "(J)Landroidx/compose/animation/core/AnimationVector;",
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
.field private final animationSpec:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/VectorizedDecayAnimationSpec<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final durationNanos:J

.field private final endVelocity:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final initialValueVector:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final isInfinite:Z

.field private final targetValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final typeConverter:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "TT;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;TT;TV;)V"
        }
    .end annotation

    const-string v0, "animationSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeConverter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialVelocityVector"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-interface {p1, p2}, Landroidx/compose/animation/core/DecayAnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    move-result-object p1

    .line 343
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/animation/core/DecayAnimation;-><init>(Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "TT;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;TT;TT;)V"
        }
    .end annotation

    const-string v0, "animationSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeConverter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-interface {p1, p2}, Landroidx/compose/animation/core/DecayAnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    move-result-object p1

    .line 378
    invoke-interface {p2}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/animation/core/AnimationVector;

    .line 374
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/animation/core/DecayAnimation;-><init>(Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/VectorizedDecayAnimationSpec<",
            "TV;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;TT;TV;)V"
        }
    .end annotation

    const-string v0, "animationSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeConverter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialVelocityVector"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    iput-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    iput-object p3, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValue:Ljava/lang/Object;

    .line 306
    invoke-virtual {p0}, Landroidx/compose/animation/core/DecayAnimation;->getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object p2

    invoke-interface {p2}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/AnimationVector;

    iput-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 307
    invoke-static {p4}, Landroidx/compose/animation/core/AnimationVectorsKt;->copy(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/animation/core/DecayAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 310
    invoke-virtual {p0}, Landroidx/compose/animation/core/DecayAnimation;->getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object p3

    invoke-interface {p3}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertFromVector()Lkotlin/jvm/functions/Function1;

    move-result-object p3

    .line 311
    invoke-interface {p1, p2, p4}, Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;->getTargetValue(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v0

    .line 310
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/animation/core/DecayAnimation;->targetValue:Ljava/lang/Object;

    .line 382
    invoke-interface {p1, p2, p4}, Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;->getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/core/DecayAnimation;->durationNanos:J

    .line 386
    invoke-virtual {p0}, Landroidx/compose/animation/core/DecayAnimation;->getDurationNanos()J

    move-result-wide v0

    .line 385
    invoke-interface {p1, v0, v1, p2, p4}, Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    .line 389
    invoke-static {p1}, Landroidx/compose/animation/core/AnimationVectorsKt;->copy(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/DecayAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    .line 390
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object p3, p0, Landroidx/compose/animation/core/DecayAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    .line 391
    invoke-virtual {p3, p2}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result p4

    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    .line 392
    invoke-interface {v0}, Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;->getAbsVelocityThreshold()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    .line 393
    invoke-interface {v1}, Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;->getAbsVelocityThreshold()F

    move-result v1

    .line 391
    invoke-static {p4, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p4

    invoke-virtual {p3, p2, p4}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getDurationNanos()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/DecayAnimation;->durationNanos:J

    return-wide v0
.end method

.method public final getInitialValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValue:Ljava/lang/Object;

    return-object p0
.end method

.method public final getInitialVelocityVector()Landroidx/compose/animation/core/AnimationVector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    return-object p0
.end method

.method public getTargetValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->targetValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public getValueFromNanos(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 399
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/DecayAnimation;->isFinishedFromNanos(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    invoke-virtual {p0}, Landroidx/compose/animation/core/DecayAnimation;->getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertFromVector()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    iget-object v2, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 401
    invoke-interface {v1, p1, p2, v2, p0}, Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    .line 400
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 408
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/DecayAnimation;->getTargetValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getVelocityVectorFromNanos(J)Landroidx/compose/animation/core/AnimationVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .line 413
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/DecayAnimation;->isFinishedFromNanos(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    iget-object v1, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 414
    invoke-interface {v0, p1, p2, v1, p0}, Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    return-object p0
.end method

.method public isInfinite()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/animation/core/DecayAnimation;->isInfinite:Z

    return p0
.end method

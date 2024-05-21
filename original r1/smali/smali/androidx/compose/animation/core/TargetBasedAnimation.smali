.class public final Landroidx/compose/animation/core/TargetBasedAnimation;
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004BE\u0008\u0016\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0008\u0012\u0006\u0010\t\u001a\u00028\u0000\u0012\u0006\u0010\n\u001a\u00028\u0000\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00018\u0001\u00a2\u0006\u0002\u0010\u000cBE\u0008\u0000\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\r\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0008\u0012\u0006\u0010\t\u001a\u00028\u0000\u0012\u0006\u0010\n\u001a\u00028\u0000\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00018\u0001\u00a2\u0006\u0002\u0010\u000eJ\u0015\u0010\"\u001a\u00028\u00002\u0006\u0010#\u001a\u00020\u0012H\u0016\u00a2\u0006\u0002\u0010$J\u0015\u0010%\u001a\u00028\u00012\u0006\u0010#\u001a\u00020\u0012H\u0016\u00a2\u0006\u0002\u0010&J\u0008\u0010\'\u001a\u00020(H\u0016R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u00028\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u0013\u0010\t\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018R\u0010\u0010\u001a\u001a\u00028\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u0010\u0010\u000b\u001a\u00028\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001dR\u0016\u0010\n\u001a\u00028\u0000X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u001e\u0010\u0018R\u0010\u0010\u001f\u001a\u00028\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u0006)"
    }
    d2 = {
        "Landroidx/compose/animation/core/TargetBasedAnimation;",
        "T",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "Landroidx/compose/animation/core/Animation;",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "typeConverter",
        "Landroidx/compose/animation/core/TwoWayConverter;",
        "initialValue",
        "targetValue",
        "initialVelocityVector",
        "(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V",
        "Landroidx/compose/animation/core/VectorizedAnimationSpec;",
        "(Landroidx/compose/animation/core/VectorizedAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V",
        "getAnimationSpec$animation_core_release",
        "()Landroidx/compose/animation/core/VectorizedAnimationSpec;",
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
        "isInfinite",
        "",
        "()Z",
        "getTargetValue",
        "targetValueVector",
        "getTypeConverter",
        "()Landroidx/compose/animation/core/TwoWayConverter;",
        "getValueFromNanos",
        "playTimeNanos",
        "(J)Ljava/lang/Object;",
        "getVelocityVectorFromNanos",
        "(J)Landroidx/compose/animation/core/AnimationVector;",
        "toString",
        "",
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
.field private final animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/VectorizedAnimationSpec<",
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

.field private final targetValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final targetValueVector:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
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

.method public constructor <init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;TT;TT;TV;)V"
        }
    .end annotation

    const-string v0, "animationSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeConverter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-interface {p1, p2}, Landroidx/compose/animation/core/AnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 218
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/VectorizedAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 212
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/VectorizedAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/VectorizedAnimationSpec<",
            "TV;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;TT;TT;TV;)V"
        }
    .end annotation

    const-string v0, "animationSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeConverter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    iput-object p2, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    iput-object p3, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValue:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValue:Ljava/lang/Object;

    .line 226
    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object p2

    invoke-interface {p2}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/AnimationVector;

    iput-object p2, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 227
    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object p4

    invoke-interface {p4}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lkotlin/jvm/functions/Function1;

    move-result-object p4

    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTargetValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/animation/core/AnimationVector;

    iput-object p4, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValueVector:Landroidx/compose/animation/core/AnimationVector;

    if-eqz p5, :cond_0

    .line 229
    invoke-static {p5}, Landroidx/compose/animation/core/AnimationVectorsKt;->copy(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p5

    if-nez p5, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object p5

    invoke-interface {p5}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lkotlin/jvm/functions/Function1;

    move-result-object p5

    invoke-interface {p5, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/animation/core/AnimationVector;

    .line 230
    invoke-static {p3}, Landroidx/compose/animation/core/AnimationVectorsKt;->newInstance(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p5

    :cond_1
    iput-object p5, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 254
    invoke-interface {p1, p2, p4, p5}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->durationNanos:J

    .line 260
    invoke-interface {p1, p2, p4, p5}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getEndVelocity(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/VectorizedAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 183
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/VectorizedAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    return-void
.end method


# virtual methods
.method public final getAnimationSpec$animation_core_release()Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/VectorizedAnimationSpec<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    return-object p0
.end method

.method public getDurationNanos()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->durationNanos:J

    return-wide v0
.end method

.method public final getInitialValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getTargetValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValue:Ljava/lang/Object;

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

    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public getValueFromNanos(J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 234
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/TargetBasedAnimation;->isFinishedFromNanos(J)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    iget-object v4, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v5, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v6, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    move-wide v2, p1

    .line 235
    invoke-interface/range {v1 .. v6}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 241
    invoke-virtual {v0, v2}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AnimationVector cannot contain a NaN. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Animation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", playTimeNanos: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 241
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertFromVector()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 249
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTargetValue()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getVelocityVectorFromNanos(J)Landroidx/compose/animation/core/AnimationVector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .line 267
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/TargetBasedAnimation;->isFinishedFromNanos(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    iget-object v4, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v5, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v6, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    move-wide v2, p1

    .line 268
    invoke-interface/range {v1 .. v6}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    :goto_0
    return-object p0
.end method

.method public isInfinite()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 232
    invoke-interface {p0}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->isInfinite()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TargetBasedAnimation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTargetValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",initial velocity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    move-object v1, p0

    check-cast v1, Landroidx/compose/animation/core/Animation;

    invoke-static {v1}, Landroidx/compose/animation/core/AnimationKt;->getDurationMillis(Landroidx/compose/animation/core/Animation;)J

    move-result-wide v1

    .line 280
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms,animationSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

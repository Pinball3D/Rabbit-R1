.class public final Landroidx/compose/animation/core/AnimationState;
.super Ljava/lang/Object;
.source "AnimationState.kt"

# interfaces
.implements Landroidx/compose/runtime/State;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/State<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimationState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationState.kt\nandroidx/compose/animation/core/AnimationState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,343:1\n81#2:344\n107#2,2:345\n*S KotlinDebug\n*F\n+ 1 AnimationState.kt\nandroidx/compose/animation/core/AnimationState\n*L\n53#1:344\n53#1:345,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001d\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004BK\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00028\u0000\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00018\u0001\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010*\u001a\u00020+H\u0016R&\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n8F@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R$\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R&\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n8F@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0011\"\u0004\u0008\u0018\u0010\u0013R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR+\u0010\u001b\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00028\u00008V@PX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\"\u001a\u00028\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u001dR&\u0010$\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00028\u0001@@X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010)\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006,"
    }
    d2 = {
        "Landroidx/compose/animation/core/AnimationState;",
        "T",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "Landroidx/compose/runtime/State;",
        "typeConverter",
        "Landroidx/compose/animation/core/TwoWayConverter;",
        "initialValue",
        "initialVelocityVector",
        "lastFrameTimeNanos",
        "",
        "finishedTimeNanos",
        "isRunning",
        "",
        "(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V",
        "<set-?>",
        "getFinishedTimeNanos",
        "()J",
        "setFinishedTimeNanos$animation_core_release",
        "(J)V",
        "()Z",
        "setRunning$animation_core_release",
        "(Z)V",
        "getLastFrameTimeNanos",
        "setLastFrameTimeNanos$animation_core_release",
        "getTypeConverter",
        "()Landroidx/compose/animation/core/TwoWayConverter;",
        "value",
        "getValue",
        "()Ljava/lang/Object;",
        "setValue$animation_core_release",
        "(Ljava/lang/Object;)V",
        "value$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "velocity",
        "getVelocity",
        "velocityVector",
        "getVelocityVector",
        "()Landroidx/compose/animation/core/AnimationVector;",
        "setVelocityVector$animation_core_release",
        "(Landroidx/compose/animation/core/AnimationVector;)V",
        "Landroidx/compose/animation/core/AnimationVector;",
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
.field private finishedTimeNanos:J

.field private isRunning:Z

.field private lastFrameTimeNanos:J

.field private final typeConverter:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;"
        }
    .end annotation
.end field

.field private final value$delegate:Landroidx/compose/runtime/MutableState;

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

.method public constructor <init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;TT;TV;JJZ)V"
        }
    .end annotation

    const-string/jumbo v0, "typeConverter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/AnimationState;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 53
    invoke-static {p2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/MutableState;

    if-eqz p3, :cond_0

    .line 60
    invoke-static {p3}, Landroidx/compose/animation/core/AnimationVectorsKt;->copy(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/animation/core/AnimationStateKt;->createZeroVectorFrom(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Landroidx/compose/animation/core/AnimationState;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    iput-wide p4, p0, Landroidx/compose/animation/core/AnimationState;->lastFrameTimeNanos:J

    iput-wide p6, p0, Landroidx/compose/animation/core/AnimationState;->finishedTimeNanos:J

    iput-boolean p8, p0, Landroidx/compose/animation/core/AnimationState;->isRunning:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 v0, p9, 0x8

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    move-wide v5, p4

    :goto_1
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_2

    move-wide v7, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v7, p6

    :goto_2
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v9, v0

    goto :goto_3

    :cond_3
    move/from16 v9, p8

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 42
    invoke-direct/range {v1 .. v9}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V

    return-void
.end method


# virtual methods
.method public final getFinishedTimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/AnimationState;->finishedTimeNanos:J

    return-wide v0
.end method

.method public final getLastFrameTimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/AnimationState;->lastFrameTimeNanos:J

    return-wide v0
.end method

.method public final getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/AnimationState;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 53
    check-cast p0, Landroidx/compose/runtime/State;

    .line 344
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getVelocity()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/animation/core/AnimationState;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 97
    invoke-interface {v0}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertFromVector()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/animation/core/AnimationState;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getVelocityVector()Landroidx/compose/animation/core/AnimationVector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/AnimationState;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    return-object p0
.end method

.method public final isRunning()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/animation/core/AnimationState;->isRunning:Z

    return p0
.end method

.method public final setFinishedTimeNanos$animation_core_release(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/animation/core/AnimationState;->finishedTimeNanos:J

    return-void
.end method

.method public final setLastFrameTimeNanos$animation_core_release(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/animation/core/AnimationState;->lastFrameTimeNanos:J

    return-void
.end method

.method public final setRunning$animation_core_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/animation/core/AnimationState;->isRunning:Z

    return-void
.end method

.method public setValue$animation_core_release(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 345
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setVelocityVector$animation_core_release(Landroidx/compose/animation/core/AnimationVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/animation/core/AnimationState;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimationState(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", velocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/animation/core/AnimationState;->isRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastFrameTimeNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/animation/core/AnimationState;->lastFrameTimeNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finishedTimeNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/animation/core/AnimationState;->finishedTimeNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

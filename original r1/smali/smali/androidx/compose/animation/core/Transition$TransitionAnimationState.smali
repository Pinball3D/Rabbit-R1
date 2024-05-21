.class public final Landroidx/compose/animation/core/Transition$TransitionAnimationState;
.super Ljava/lang/Object;
.source "Transition.kt"

# interfaces
.implements Landroidx/compose/runtime/State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TransitionAnimationState"
.end annotation

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
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/Transition$TransitionAnimationState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 SnapshotLongState.kt\nandroidx/compose/runtime/SnapshotLongStateKt__SnapshotLongStateKt\n*L\n1#1,1156:1\n81#2:1157\n107#2,2:1158\n81#2:1160\n107#2,2:1161\n81#2:1163\n107#2,2:1164\n81#2:1166\n107#2,2:1167\n81#2:1172\n107#2,2:1173\n81#2:1175\n107#2,2:1176\n76#3:1169\n109#3,2:1170\n*S KotlinDebug\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/Transition$TransitionAnimationState\n*L\n477#1:1157\n477#1:1158,2\n483#1:1160\n483#1:1161,2\n490#1:1163\n490#1:1164,2\n498#1:1166\n498#1:1167,2\n500#1:1172\n500#1:1173,2\n503#1:1175\n503#1:1176,2\n499#1:1169\n499#1:1170,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008!\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000f\u0008\u0087\u0004\u0018\u0000*\u0004\u0008\u0001\u0010\u0001*\u0008\u0008\u0002\u0010\u0002*\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B3\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00028\u0001\u0012\u0006\u0010\u0006\u001a\u00028\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u001d\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020\u001d2\u0006\u0010E\u001a\u00020FH\u0000\u00a2\u0006\u0002\u0008GJ\r\u0010H\u001a\u00020CH\u0000\u00a2\u0006\u0002\u0008IJ\u0015\u0010J\u001a\u00020C2\u0006\u0010D\u001a\u00020\u001dH\u0000\u00a2\u0006\u0002\u0008KJ!\u0010L\u001a\u00020C2\u0008\u0008\u0002\u0010\u0005\u001a\u00028\u00012\u0008\u0008\u0002\u0010M\u001a\u00020!H\u0002\u00a2\u0006\u0002\u0010NJ-\u0010O\u001a\u00020C2\u0006\u0010\u0005\u001a\u00028\u00012\u0006\u00104\u001a\u00028\u00012\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0015H\u0000\u00a2\u0006\u0004\u0008P\u0010QJ%\u0010R\u001a\u00020C2\u0006\u00104\u001a\u00028\u00012\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0015H\u0000\u00a2\u0006\u0004\u0008S\u0010TRC\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\r2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\r8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R7\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00152\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00158F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0014\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u001d8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\"\u001a\u00020!2\u0006\u0010\u000c\u001a\u00020!8@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u0014\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R+\u0010*\u001a\u00020!2\u0006\u0010\u000c\u001a\u00020!8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u0014\u001a\u0004\u0008+\u0010$\"\u0004\u0008,\u0010&R+\u0010.\u001a\u00020\u001d2\u0006\u0010\u000c\u001a\u00020\u001d8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u0008/\u0010\u001f\"\u0004\u00080\u00101R+\u00104\u001a\u00028\u00012\u0006\u0010\u000c\u001a\u00028\u00018B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00089\u0010\u0014\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010;R+\u0010<\u001a\u00028\u00012\u0006\u0010\u000c\u001a\u00028\u00018V@PX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008?\u0010\u0014\u001a\u0004\u0008=\u00106\"\u0004\u0008>\u00108R\u0010\u0010@\u001a\u00028\u0002X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010A\u00a8\u0006U"
    }
    d2 = {
        "Landroidx/compose/animation/core/Transition$TransitionAnimationState;",
        "T",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "Landroidx/compose/runtime/State;",
        "initialValue",
        "initialVelocityVector",
        "typeConverter",
        "Landroidx/compose/animation/core/TwoWayConverter;",
        "label",
        "",
        "(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V",
        "<set-?>",
        "Landroidx/compose/animation/core/TargetBasedAnimation;",
        "animation",
        "getAnimation",
        "()Landroidx/compose/animation/core/TargetBasedAnimation;",
        "setAnimation",
        "(Landroidx/compose/animation/core/TargetBasedAnimation;)V",
        "animation$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "animationSpec",
        "getAnimationSpec",
        "()Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "setAnimationSpec",
        "(Landroidx/compose/animation/core/FiniteAnimationSpec;)V",
        "animationSpec$delegate",
        "durationNanos",
        "",
        "getDurationNanos$animation_core_release",
        "()J",
        "interruptionSpec",
        "",
        "isFinished",
        "isFinished$animation_core_release",
        "()Z",
        "setFinished$animation_core_release",
        "(Z)V",
        "isFinished$delegate",
        "getLabel",
        "()Ljava/lang/String;",
        "needsReset",
        "getNeedsReset",
        "setNeedsReset",
        "needsReset$delegate",
        "offsetTimeNanos",
        "getOffsetTimeNanos",
        "setOffsetTimeNanos",
        "(J)V",
        "offsetTimeNanos$delegate",
        "Landroidx/compose/runtime/MutableLongState;",
        "targetValue",
        "getTargetValue",
        "()Ljava/lang/Object;",
        "setTargetValue",
        "(Ljava/lang/Object;)V",
        "targetValue$delegate",
        "getTypeConverter",
        "()Landroidx/compose/animation/core/TwoWayConverter;",
        "value",
        "getValue",
        "setValue$animation_core_release",
        "value$delegate",
        "velocityVector",
        "Landroidx/compose/animation/core/AnimationVector;",
        "onPlayTimeChanged",
        "",
        "playTimeNanos",
        "durationScale",
        "",
        "onPlayTimeChanged$animation_core_release",
        "resetAnimation",
        "resetAnimation$animation_core_release",
        "seekTo",
        "seekTo$animation_core_release",
        "updateAnimation",
        "isInterrupted",
        "(Ljava/lang/Object;Z)V",
        "updateInitialAndTargetValue",
        "updateInitialAndTargetValue$animation_core_release",
        "(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V",
        "updateTargetValue",
        "updateTargetValue$animation_core_release",
        "(Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V",
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


# instance fields
.field private final animation$delegate:Landroidx/compose/runtime/MutableState;

.field private final animationSpec$delegate:Landroidx/compose/runtime/MutableState;

.field private final interruptionSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final isFinished$delegate:Landroidx/compose/runtime/MutableState;

.field private final label:Ljava/lang/String;

.field private final needsReset$delegate:Landroidx/compose/runtime/MutableState;

.field private final offsetTimeNanos$delegate:Landroidx/compose/runtime/MutableLongState;

.field private final targetValue$delegate:Landroidx/compose/runtime/MutableState;

.field final synthetic this$0:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;"
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

.field private final value$delegate:Landroidx/compose/runtime/MutableState;

.field private velocityVector:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "initialVelocityVector"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeConverter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->this$0:Landroidx/compose/animation/core/Transition;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    iput-object p5, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->label:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 p5, 0x2

    .line 477
    invoke-static {p2, p1, p5, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->targetValue$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 483
    invoke-static {v1, v1, p1, v0, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    invoke-static {v0, p1, p5, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->animationSpec$delegate:Landroidx/compose/runtime/MutableState;

    .line 491
    new-instance v0, Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 492
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/compose/animation/core/AnimationSpec;

    invoke-direct {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getTargetValue()Ljava/lang/Object;

    move-result-object v6

    move-object v2, v0

    move-object v4, p4

    move-object v5, p2

    move-object v7, p3

    .line 491
    invoke-direct/range {v2 .. v7}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 490
    invoke-static {v0, p1, p5, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->animation$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x1

    .line 498
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, p1, p5, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->isFinished$delegate:Landroidx/compose/runtime/MutableState;

    const-wide/16 v2, 0x0

    .line 499
    invoke-static {v2, v3}, Landroidx/compose/runtime/SnapshotLongStateKt;->mutableLongStateOf(J)Landroidx/compose/runtime/MutableLongState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->offsetTimeNanos$delegate:Landroidx/compose/runtime/MutableLongState;

    const/4 v0, 0x0

    .line 500
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, p1, p5, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->needsReset$delegate:Landroidx/compose/runtime/MutableState;

    .line 503
    invoke-static {p2, p1, p5, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p5

    iput-object p5, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 539
    invoke-static {}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThresholdMap()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    if-eqz p3, :cond_1

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    .line 540
    invoke-interface {p4}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lkotlin/jvm/functions/Function1;

    move-result-object p4

    invoke-interface {p4, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/AnimationVector;

    .line 541
    invoke-virtual {p2}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result p4

    :goto_0
    if-ge v0, p4, :cond_0

    .line 542
    invoke-virtual {p2, v0, p3}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p3, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 544
    invoke-interface {p3}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertFromVector()Lkotlin/jvm/functions/Function1;

    move-result-object p3

    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    const/4 p3, 0x3

    .line 546
    invoke-static {v1, v1, p2, p3, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p1, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->interruptionSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-void
.end method

.method private final getNeedsReset()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->needsReset$delegate:Landroidx/compose/runtime/MutableState;

    .line 500
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1172
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final getOffsetTimeNanos()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->offsetTimeNanos$delegate:Landroidx/compose/runtime/MutableLongState;

    .line 499
    check-cast p0, Landroidx/compose/runtime/LongState;

    .line 1169
    invoke-interface {p0}, Landroidx/compose/runtime/LongState;->getLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getTargetValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->targetValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 477
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1157
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final setAnimation(Landroidx/compose/animation/core/TargetBasedAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/TargetBasedAnimation<",
            "TT;TV;>;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->animation$delegate:Landroidx/compose/runtime/MutableState;

    .line 1164
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setAnimationSpec(Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->animationSpec$delegate:Landroidx/compose/runtime/MutableState;

    .line 1161
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setNeedsReset(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->needsReset$delegate:Landroidx/compose/runtime/MutableState;

    .line 500
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1173
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setOffsetTimeNanos(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->offsetTimeNanos$delegate:Landroidx/compose/runtime/MutableLongState;

    .line 1170
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/MutableLongState;->setLongValue(J)V

    return-void
.end method

.method private final setTargetValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->targetValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 1158
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final updateAnimation(Ljava/lang/Object;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 552
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p2

    instance-of p2, p2, Landroidx/compose/animation/core/SpringSpec;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->interruptionSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p2

    .line 556
    :goto_0
    new-instance v6, Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 557
    move-object v1, p2

    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    iget-object v2, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 560
    invoke-direct {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getTargetValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    move-object v0, v6

    move-object v3, p1

    .line 556
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    invoke-direct {p0, v6}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->setAnimation(Landroidx/compose/animation/core/TargetBasedAnimation;)V

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->this$0:Landroidx/compose/animation/core/Transition;

    .line 563
    invoke-static {p0}, Landroidx/compose/animation/core/Transition;->access$onChildAnimationUpdated(Landroidx/compose/animation/core/Transition;)V

    return-void
.end method

.method static synthetic updateAnimation$default(Landroidx/compose/animation/core/Transition$TransitionAnimationState;Ljava/lang/Object;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 549
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getValue()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->updateAnimation(Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public final getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/TargetBasedAnimation<",
            "TT;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->animation$delegate:Landroidx/compose/runtime/MutableState;

    .line 490
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1163
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/TargetBasedAnimation;

    return-object p0
.end method

.method public final getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->animationSpec$delegate:Landroidx/compose/runtime/MutableState;

    .line 483
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1160
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-object p0
.end method

.method public final getDurationNanos$animation_core_release()J
    .locals 2

    .line 507
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getDurationNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->label:Ljava/lang/String;

    return-object p0
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

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 503
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1175
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isFinished$animation_core_release()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->isFinished$delegate:Landroidx/compose/runtime/MutableState;

    .line 498
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1166
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final onPlayTimeChanged$animation_core_release(JF)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 512
    invoke-direct {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getOffsetTimeNanos()J

    move-result-wide v2

    sub-long v2, p1, v2

    long-to-float v0, v2

    div-float/2addr v0, p3

    .line 513
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_0

    float-to-long p1, v0

    goto :goto_0

    .line 514
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duration scale adjusted time is NaN. Duration scale: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ",playTimeNanos: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", offsetTimeNanos: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 515
    invoke-direct {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getOffsetTimeNanos()J

    move-result-wide p2

    .line 514
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 513
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 519
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/animation/core/TargetBasedAnimation;->getDurationNanos()J

    move-result-wide p1

    .line 521
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/compose/animation/core/TargetBasedAnimation;->getValueFromNanos(J)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->setValue$animation_core_release(Ljava/lang/Object;)V

    .line 522
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/compose/animation/core/TargetBasedAnimation;->getVelocityVectorFromNanos(J)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 523
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/compose/animation/core/TargetBasedAnimation;->isFinishedFromNanos(J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 524
    invoke-virtual {p0, v1}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->setFinished$animation_core_release(Z)V

    const-wide/16 p1, 0x0

    .line 525
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->setOffsetTimeNanos(J)V

    :cond_2
    return-void
.end method

.method public final resetAnimation$animation_core_release()V
    .locals 1

    const/4 v0, 0x1

    .line 567
    invoke-direct {p0, v0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->setNeedsReset(Z)V

    return-void
.end method

.method public final seekTo$animation_core_release(J)V
    .locals 1

    .line 532
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/compose/animation/core/TargetBasedAnimation;->getValueFromNanos(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->setValue$animation_core_release(Ljava/lang/Object;)V

    .line 533
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/compose/animation/core/TargetBasedAnimation;->getVelocityVectorFromNanos(J)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    return-void
.end method

.method public final setFinished$animation_core_release(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->isFinished$delegate:Landroidx/compose/runtime/MutableState;

    .line 498
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1167
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setValue$animation_core_release(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 1176
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateInitialAndTargetValue$animation_core_release(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "animationSpec"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    invoke-direct {p0, p2}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->setTargetValue(Ljava/lang/Object;)V

    .line 590
    invoke-direct {p0, p3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->setAnimationSpec(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 592
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/compose/animation/core/TargetBasedAnimation;->getInitialValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 593
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTargetValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 597
    invoke-static {p0, p1, v0, p2, p3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->updateAnimation$default(Landroidx/compose/animation/core/Transition$TransitionAnimationState;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final updateTargetValue$animation_core_release(Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "animationSpec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    invoke-direct {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getTargetValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getNeedsReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->setTargetValue(Ljava/lang/Object;)V

    .line 574
    invoke-direct {p0, p2}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->setAnimationSpec(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 575
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->isFinished$animation_core_release()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, v0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->updateAnimation$default(Landroidx/compose/animation/core/Transition$TransitionAnimationState;Ljava/lang/Object;ZILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 576
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->setFinished$animation_core_release(Z)V

    iget-object p2, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->this$0:Landroidx/compose/animation/core/Transition;

    .line 578
    invoke-virtual {p2}, Landroidx/compose/animation/core/Transition;->getPlayTimeNanos()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->setOffsetTimeNanos(J)V

    .line 579
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->setNeedsReset(Z)V

    :cond_1
    return-void
.end method

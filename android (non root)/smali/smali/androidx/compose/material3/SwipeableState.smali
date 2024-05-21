.class public Landroidx/compose/material3/SwipeableState;
.super Ljava/lang/Object;
.source "Swipeable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/SwipeableState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material3/SwipeableState\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,886:1\n20#2:887\n22#2:891\n50#3:888\n55#3:890\n106#4:889\n76#5:892\n102#5,2:893\n76#5:895\n102#5,2:896\n76#5:898\n102#5,2:899\n76#5:929\n102#5,2:930\n76#5:932\n102#5,2:933\n76#5:935\n102#5,2:936\n2333#6,14:901\n2333#6,14:915\n1#7:938\n*S KotlinDebug\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material3/SwipeableState\n*L\n128#1:887\n128#1:891\n128#1:888\n128#1:890\n128#1:889\n91#1:892\n91#1:893,2\n97#1:895\n97#1:896,2\n124#1:898\n124#1:899,2\n195#1:929\n195#1:930,2\n197#1:932\n197#1:933,2\n199#1:935\n199#1:936,2\n174#1:901,14\n180#1:915,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u001b\u0008\u0011\u0018\u0000 x*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001xBB\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012#\u0008\u0002\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0008\u00a2\u0006\u0002\u0010\rJ\'\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020\u00062\u000c\u0010`\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010aJ+\u0010b\u001a\u00020^2\u0006\u0010O\u001a\u00028\u00002\u000e\u0008\u0002\u0010c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008d\u0010eJ!\u0010f\u001a\u00020^2\u0012\u0010g\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u0011H\u0000\u00a2\u0006\u0002\u0008hJ\u0015\u0010i\u001a\u00020\u00062\u0006\u0010j\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008kJ\u001b\u0010l\u001a\u00020^2\u0006\u0010m\u001a\u00020\u0006H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008n\u0010oJ;\u0010p\u001a\u00020^2\u0012\u0010q\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u00112\u0012\u0010g\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u0011H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008r\u0010sJ\u0019\u0010t\u001a\u00020^2\u0006\u0010_\u001a\u00020\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010oJ\u001b\u0010u\u001a\u00020^2\u0006\u0010O\u001a\u00028\u0000H\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008v\u0010wR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000RC\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u00112\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u00118@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR+\u0010\u001e\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u00008F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u0018\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010$\u001a\u00020\u00068@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u0014\u0010)\u001a\u00020*X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R+\u0010-\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000c8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00081\u0010\u0018\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R \u00102\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u001103X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00104\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010(\"\u0004\u00086\u00107R\u001a\u00108\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010(\"\u0004\u0008:\u00107R\u0017\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u00060<8F\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010>R\u0014\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00060<8F\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010>R\u0014\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010C\u001a\u0008\u0012\u0004\u0012\u00028\u00000D8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008E\u0010&\u001a\u0004\u0008F\u0010GR/\u0010I\u001a\u0004\u0018\u00010H2\u0008\u0010\u0010\u001a\u0004\u0018\u00010H8@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008N\u0010\u0018\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u001a\u0010O\u001a\u00028\u00008@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008P\u0010&\u001a\u0004\u0008Q\u0010 RO\u0010S\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060R2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060R8@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008X\u0010\u0018\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR+\u0010Y\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\\\u0010\u0018\u001a\u0004\u0008Z\u0010(\"\u0004\u0008[\u00107\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006y"
    }
    d2 = {
        "Landroidx/compose/material3/SwipeableState;",
        "T",
        "",
        "initialValue",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "confirmStateChange",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "newValue",
        "",
        "(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V",
        "absoluteOffset",
        "Landroidx/compose/runtime/MutableState;",
        "<set-?>",
        "",
        "anchors",
        "getAnchors$material3_release",
        "()Ljava/util/Map;",
        "setAnchors$material3_release",
        "(Ljava/util/Map;)V",
        "anchors$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "getAnimationSpec$material3_release",
        "()Landroidx/compose/animation/core/AnimationSpec;",
        "animationTarget",
        "getConfirmStateChange$material3_release",
        "()Lkotlin/jvm/functions/Function1;",
        "currentValue",
        "getCurrentValue",
        "()Ljava/lang/Object;",
        "setCurrentValue",
        "(Ljava/lang/Object;)V",
        "currentValue$delegate",
        "direction",
        "getDirection$material3_release$annotations",
        "()V",
        "getDirection$material3_release",
        "()F",
        "draggableState",
        "Landroidx/compose/foundation/gestures/DraggableState;",
        "getDraggableState$material3_release",
        "()Landroidx/compose/foundation/gestures/DraggableState;",
        "isAnimationRunning",
        "()Z",
        "setAnimationRunning",
        "(Z)V",
        "isAnimationRunning$delegate",
        "latestNonEmptyAnchorsFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "maxBound",
        "getMaxBound$material3_release",
        "setMaxBound$material3_release",
        "(F)V",
        "minBound",
        "getMinBound$material3_release",
        "setMinBound$material3_release",
        "offset",
        "Landroidx/compose/runtime/State;",
        "getOffset",
        "()Landroidx/compose/runtime/State;",
        "offsetState",
        "overflow",
        "getOverflow",
        "overflowState",
        "progress",
        "Landroidx/compose/material3/SwipeProgress;",
        "getProgress$material3_release$annotations",
        "getProgress$material3_release",
        "()Landroidx/compose/material3/SwipeProgress;",
        "Landroidx/compose/material3/ResistanceConfig;",
        "resistance",
        "getResistance$material3_release",
        "()Landroidx/compose/material3/ResistanceConfig;",
        "setResistance$material3_release",
        "(Landroidx/compose/material3/ResistanceConfig;)V",
        "resistance$delegate",
        "targetValue",
        "getTargetValue$material3_release$annotations",
        "getTargetValue$material3_release",
        "Lkotlin/Function2;",
        "thresholds",
        "getThresholds$material3_release",
        "()Lkotlin/jvm/functions/Function2;",
        "setThresholds$material3_release",
        "(Lkotlin/jvm/functions/Function2;)V",
        "thresholds$delegate",
        "velocityThreshold",
        "getVelocityThreshold$material3_release",
        "setVelocityThreshold$material3_release",
        "velocityThreshold$delegate",
        "animateInternalToOffset",
        "",
        "target",
        "spec",
        "(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "animateTo",
        "anim",
        "animateTo$material3_release",
        "(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ensureInit",
        "newAnchors",
        "ensureInit$material3_release",
        "performDrag",
        "delta",
        "performDrag$material3_release",
        "performFling",
        "velocity",
        "performFling$material3_release",
        "(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processNewAnchors",
        "oldAnchors",
        "processNewAnchors$material3_release",
        "(Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "snapInternalToOffset",
        "snapTo",
        "snapTo$material3_release",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "material3_release"
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
.field public static final Companion:Landroidx/compose/material3/SwipeableState$Companion;


# instance fields
.field private final absoluteOffset:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final anchors$delegate:Landroidx/compose/runtime/MutableState;

.field private final animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final animationTarget:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final confirmStateChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final currentValue$delegate:Landroidx/compose/runtime/MutableState;

.field private final draggableState:Landroidx/compose/foundation/gestures/DraggableState;

.field private final isAnimationRunning$delegate:Landroidx/compose/runtime/MutableState;

.field private final latestNonEmptyAnchorsFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private maxBound:F

.field private minBound:F

.field private final offsetState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final overflowState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final resistance$delegate:Landroidx/compose/runtime/MutableState;

.field private final thresholds$delegate:Landroidx/compose/runtime/MutableState;

.field private final velocityThreshold$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/SwipeableState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/SwipeableState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/SwipeableState;->Companion:Landroidx/compose/material3/SwipeableState$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "animationSpec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmStateChange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/material3/SwipeableState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p3, p0, Landroidx/compose/material3/SwipeableState;->confirmStateChange:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x0

    const/4 p3, 0x2

    .line 91
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableState;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    .line 97
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableState;->isAnimationRunning$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    .line 114
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/SwipeableState;->offsetState:Landroidx/compose/runtime/MutableState;

    .line 115
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/SwipeableState;->overflowState:Landroidx/compose/runtime/MutableState;

    .line 119
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableState;

    .line 122
    invoke-static {p2, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/SwipeableState;->animationTarget:Landroidx/compose/runtime/MutableState;

    .line 124
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/SwipeableState;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    .line 127
    new-instance v0, Landroidx/compose/material3/SwipeableState$latestNonEmptyAnchorsFlow$1;

    invoke-direct {v0, p0}, Landroidx/compose/material3/SwipeableState$latestNonEmptyAnchorsFlow$1;-><init>(Landroidx/compose/material3/SwipeableState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 889
    new-instance v1, Landroidx/compose/material3/SwipeableState$special$$inlined$filter$1;

    invoke-direct {v1, v0}, Landroidx/compose/material3/SwipeableState$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    const/4 v0, 0x1

    .line 129
    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->take(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/SwipeableState;->latestNonEmptyAnchorsFlow:Lkotlinx/coroutines/flow/Flow;

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroidx/compose/material3/SwipeableState;->minBound:F

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Landroidx/compose/material3/SwipeableState;->maxBound:F

    .line 195
    sget-object v0, Landroidx/compose/material3/SwipeableState$thresholds$2;->INSTANCE:Landroidx/compose/material3/SwipeableState$thresholds$2;

    invoke-static {v0, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/SwipeableState;->thresholds$delegate:Landroidx/compose/runtime/MutableState;

    .line 197
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableState;->velocityThreshold$delegate:Landroidx/compose/runtime/MutableState;

    .line 199
    invoke-static {p2, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableState;->resistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 201
    new-instance p1, Landroidx/compose/material3/SwipeableState$draggableState$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/SwipeableState$draggableState$1;-><init>(Landroidx/compose/material3/SwipeableState;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Landroidx/compose/foundation/gestures/DraggableKt;->DraggableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 81
    sget-object p2, Landroidx/compose/material3/SwipeableDefaults;->INSTANCE:Landroidx/compose/material3/SwipeableDefaults;

    invoke-virtual {p2}, Landroidx/compose/material3/SwipeableDefaults;->getAnimationSpec$material3_release()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 82
    sget-object p3, Landroidx/compose/material3/SwipeableState$1;->INSTANCE:Landroidx/compose/material3/SwipeableState$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 79
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/SwipeableState;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$animateInternalToOffset(Landroidx/compose/material3/SwipeableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/SwipeableState;->animateInternalToOffset(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAbsoluteOffset$p(Landroidx/compose/material3/SwipeableState;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableState;

    return-object p0
.end method

.method public static final synthetic access$getAnimationTarget$p(Landroidx/compose/material3/SwipeableState;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->animationTarget:Landroidx/compose/runtime/MutableState;

    return-object p0
.end method

.method public static final synthetic access$getOffsetState$p(Landroidx/compose/material3/SwipeableState;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->offsetState:Landroidx/compose/runtime/MutableState;

    return-object p0
.end method

.method public static final synthetic access$getOverflowState$p(Landroidx/compose/material3/SwipeableState;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->overflowState:Landroidx/compose/runtime/MutableState;

    return-object p0
.end method

.method public static final synthetic access$setAnimationRunning(Landroidx/compose/material3/SwipeableState;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Landroidx/compose/material3/SwipeableState;->setAnimationRunning(Z)V

    return-void
.end method

.method public static final synthetic access$setCurrentValue(Landroidx/compose/material3/SwipeableState;Ljava/lang/Object;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Landroidx/compose/material3/SwipeableState;->setCurrentValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$snapInternalToOffset(Landroidx/compose/material3/SwipeableState;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/SwipeableState;->snapInternalToOffset(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final animateInternalToOffset(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    const/4 v1, 0x0

    .line 218
    new-instance v2, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;-><init>(Landroidx/compose/material3/SwipeableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DraggableState;->drag$default(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic animateTo$material3_release$default(Landroidx/compose/material3/SwipeableState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 328
    iget-object p2, p0, Landroidx/compose/material3/SwipeableState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/SwipeableState;->animateTo$material3_release(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: animateTo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getDirection$material3_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getProgress$material3_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTargetValue$material3_release$annotations()V
    .locals 0

    return-void
.end method

.method private final setAnimationRunning(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->isAnimationRunning$delegate:Landroidx/compose/runtime/MutableState;

    .line 97
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 896
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setCurrentValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 893
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final snapInternalToOffset(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    const/4 v1, 0x0

    .line 212
    new-instance v2, Landroidx/compose/material3/SwipeableState$snapInternalToOffset$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v3}, Landroidx/compose/material3/SwipeableState$snapInternalToOffset$2;-><init>(FLandroidx/compose/material3/SwipeableState;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DraggableState;->drag$default(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final animateTo$material3_release(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/SwipeableState;->latestNonEmptyAnchorsFlow:Lkotlinx/coroutines/flow/Flow;

    .line 329
    new-instance v1, Landroidx/compose/material3/SwipeableState$animateTo$2;

    invoke-direct {v1, p1, p0, p2}, Landroidx/compose/material3/SwipeableState$animateTo$2;-><init>(Ljava/lang/Object;Landroidx/compose/material3/SwipeableState;Landroidx/compose/animation/core/AnimationSpec;)V

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, p3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final ensureInit$material3_release(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "newAnchors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/material3/SwipeableKt;->access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/SwipeableState;->offsetState:Landroidx/compose/runtime/MutableState;

    .line 141
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableState;

    .line 142
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The initial value must have an associated anchor."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final getAnchors$material3_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    .line 124
    check-cast p0, Landroidx/compose/runtime/State;

    .line 898
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final getAnimationSpec$material3_release()Landroidx/compose/animation/core/AnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object p0
.end method

.method public final getConfirmStateChange$material3_release()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->confirmStateChange:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getCurrentValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 91
    check-cast p0, Landroidx/compose/runtime/State;

    .line 892
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getDirection$material3_release()F
    .locals 2

    .line 302
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/SwipeableKt;->access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getDraggableState$material3_release()Landroidx/compose/foundation/gestures/DraggableState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    return-object p0
.end method

.method public final getMaxBound$material3_release()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/SwipeableState;->maxBound:F

    return p0
.end method

.method public final getMinBound$material3_release()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/SwipeableState;->minBound:F

    return p0
.end method

.method public final getOffset()Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->offsetState:Landroidx/compose/runtime/MutableState;

    .line 106
    check-cast p0, Landroidx/compose/runtime/State;

    return-object p0
.end method

.method public final getOverflow()Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->overflowState:Landroidx/compose/runtime/MutableState;

    .line 111
    check-cast p0, Landroidx/compose/runtime/State;

    return-object p0
.end method

.method public final getProgress$material3_release()Landroidx/compose/material3/SwipeProgress;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/material3/SwipeProgress<",
            "TT;>;"
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/SwipeableKt;->access$findBounds(FLjava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    .line 281
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getDirection$material3_release()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 282
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 281
    :goto_0
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 280
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 286
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 287
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 288
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    sub-float/2addr p0, v1

    sub-float/2addr v0, v1

    div-float/2addr p0, v0

    goto :goto_1

    .line 275
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 276
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move p0, v2

    move-object v2, v1

    goto :goto_1

    .line 270
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v3

    move p0, v2

    move-object v2, v0

    .line 291
    :goto_1
    new-instance v0, Landroidx/compose/material3/SwipeProgress;

    invoke-direct {v0, v2, v3, p0}, Landroidx/compose/material3/SwipeProgress;-><init>(Ljava/lang/Object;Ljava/lang/Object;F)V

    return-object v0
.end method

.method public final getResistance$material3_release()Landroidx/compose/material3/ResistanceConfig;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->resistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 199
    check-cast p0, Landroidx/compose/runtime/State;

    .line 935
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/ResistanceConfig;

    return-object p0
.end method

.method public final getTargetValue$material3_release()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/SwipeableState;->animationTarget:Landroidx/compose/runtime/MutableState;

    .line 245
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 247
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/SwipeableKt;->access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_0
    move v2, v0

    .line 248
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 249
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getThresholds$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 245
    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/SwipeableKt;->access$computeTarget(FFLjava/util/Set;Lkotlin/jvm/functions/Function2;FF)F

    move-result v0

    .line 253
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final getThresholds$material3_release()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->thresholds$delegate:Landroidx/compose/runtime/MutableState;

    .line 195
    check-cast p0, Landroidx/compose/runtime/State;

    .line 929
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getVelocityThreshold$material3_release()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->velocityThreshold$delegate:Landroidx/compose/runtime/MutableState;

    .line 197
    check-cast p0, Landroidx/compose/runtime/State;

    .line 932
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final isAnimationRunning()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->isAnimationRunning$delegate:Landroidx/compose/runtime/MutableState;

    .line 97
    check-cast p0, Landroidx/compose/runtime/State;

    .line 895
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final performDrag$material3_release(F)F
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableState;

    .line 395
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    add-float/2addr v0, p1

    iget p1, p0, Landroidx/compose/material3/SwipeableState;->minBound:F

    iget v1, p0, Landroidx/compose/material3/SwipeableState;->maxBound:F

    .line 396
    invoke-static {v0, p1, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iget-object v0, p0, Landroidx/compose/material3/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableState;

    .line 397
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sub-float/2addr p1, v0

    .line 398
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    .line 399
    invoke-interface {p0, p1}, Landroidx/compose/foundation/gestures/DraggableState;->dispatchRawDelta(F)V

    :cond_0
    return p1
.end method

.method public final performFling$material3_release(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/SwipeableState;->latestNonEmptyAnchorsFlow:Lkotlinx/coroutines/flow/Flow;

    .line 361
    new-instance v1, Landroidx/compose/material3/SwipeableState$performFling$2;

    invoke-direct {v1, p0, p1}, Landroidx/compose/material3/SwipeableState$performFling$2;-><init>(Landroidx/compose/material3/SwipeableState;F)V

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final processNewAnchors$material3_release(Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;

    iget v1, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;-><init>(Landroidx/compose/material3/SwipeableState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 146
    iget v2, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->F$0:F

    iget-object p1, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    iget-object p1, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/material3/SwipeableState;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p0, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->F$0:F

    iget-object p1, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    iget-object p1, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/material3/SwipeableState;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, p1

    move p1, p0

    move-object p0, v9

    goto/16 :goto_5

    :catchall_0
    move-exception p3

    move-object v9, p1

    move p1, p0

    move-object p0, v9

    goto/16 :goto_8

    :catch_0
    move-object v9, p1

    move p1, p0

    move-object p0, v9

    goto/16 :goto_6

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 153
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/compose/material3/SwipeableState;->minBound:F

    .line 154
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/compose/material3/SwipeableState;->maxBound:F

    .line 155
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/compose/material3/SwipeableKt;->access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 159
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput v5, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->label:I

    invoke-direct {p0, p1, v0}, Landroidx/compose/material3/SwipeableState;->snapInternalToOffset(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 193
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 156
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The initial value must have an associated anchor."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_7
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_16

    const/high16 p3, -0x800000    # Float.NEGATIVE_INFINITY

    iput p3, p0, Landroidx/compose/material3/SwipeableState;->minBound:F

    const/high16 p3, 0x7f800000    # Float.POSITIVE_INFINITY

    iput p3, p0, Landroidx/compose/material3/SwipeableState;->maxBound:F

    iget-object p3, p0, Landroidx/compose/material3/SwipeableState;->animationTarget:Landroidx/compose/runtime/MutableState;

    .line 167
    invoke-interface {p3}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    const/4 v2, 0x0

    if-eqz p3, :cond_d

    .line 171
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 172
    invoke-static {p2, p1}, Landroidx/compose/material3/SwipeableKt;->access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 174
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto/16 :goto_4

    :cond_8
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 901
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 902
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    .line 903
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 904
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    .line 905
    :cond_a
    move-object p1, v2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 174
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 907
    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 908
    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 174
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 909
    invoke-static {p1, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-lez v8, :cond_c

    move-object v2, v6

    move p1, v7

    .line 913
    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_b

    .line 914
    :goto_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    goto/16 :goto_4

    .line 177
    :cond_d
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object p3

    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 178
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object p1

    .line 179
    :cond_e
    invoke-static {p2, p1}, Landroidx/compose/material3/SwipeableKt;->access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_4

    .line 180
    :cond_f
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 915
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 916
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_10

    goto :goto_3

    .line 917
    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 918
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_11

    goto :goto_3

    .line 919
    :cond_11
    move-object p3, v2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    .line 180
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    sub-float/2addr p3, v5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 921
    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 922
    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .line 180
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 923
    invoke-static {p3, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-lez v7, :cond_13

    move-object v2, v5

    move p3, v6

    .line 927
    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_12

    .line 928
    :goto_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    :goto_4
    :try_start_2
    iget-object p3, p0, Landroidx/compose/material3/SwipeableState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 183
    iput-object p0, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->F$0:F

    iput v4, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->label:I

    invoke-direct {p0, p1, p3, v0}, Landroidx/compose/material3/SwipeableState;->animateInternalToOffset(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p3, v1, :cond_14

    return-object v1

    .line 188
    :cond_14
    :goto_5
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/material3/SwipeableState;->setCurrentValue(Ljava/lang/Object;)V

    .line 189
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/compose/material3/SwipeableState;->minBound:F

    .line 190
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/compose/material3/SwipeableState;->maxBound:F

    goto/16 :goto_9

    .line 186
    :catch_1
    :goto_6
    :try_start_3
    iput-object p0, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->F$0:F

    iput v3, v0, Landroidx/compose/material3/SwipeableState$processNewAnchors$1;->label:I

    invoke-direct {p0, p1, v0}, Landroidx/compose/material3/SwipeableState;->snapInternalToOffset(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p3, v1, :cond_15

    return-object v1

    :cond_15
    move v9, p1

    move-object p1, p0

    move p0, v9

    .line 188
    :goto_7
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/compose/material3/SwipeableState;->setCurrentValue(Ljava/lang/Object;)V

    .line 189
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Landroidx/compose/material3/SwipeableState;->minBound:F

    .line 190
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Landroidx/compose/material3/SwipeableState;->maxBound:F

    goto :goto_9

    :catchall_1
    move-exception p3

    .line 188
    :goto_8
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/material3/SwipeableState;->setCurrentValue(Ljava/lang/Object;)V

    .line 189
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/compose/material3/SwipeableState;->minBound:F

    .line 190
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/compose/material3/SwipeableState;->maxBound:F

    throw p3

    .line 193
    :cond_16
    :goto_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final setAnchors$material3_release(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    .line 899
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setMaxBound$material3_release(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/SwipeableState;->maxBound:F

    return-void
.end method

.method public final setMinBound$material3_release(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/SwipeableState;->minBound:F

    return-void
.end method

.method public final setResistance$material3_release(Landroidx/compose/material3/ResistanceConfig;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->resistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 936
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setThresholds$material3_release(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->thresholds$delegate:Landroidx/compose/runtime/MutableState;

    .line 930
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setVelocityThreshold$material3_release(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState;->velocityThreshold$delegate:Landroidx/compose/runtime/MutableState;

    .line 197
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 933
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final snapTo$material3_release(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/SwipeableState;->latestNonEmptyAnchorsFlow:Lkotlinx/coroutines/flow/Flow;

    .line 311
    new-instance v1, Landroidx/compose/material3/SwipeableState$snapTo$2;

    invoke-direct {v1, p1, p0}, Landroidx/compose/material3/SwipeableState$snapTo$2;-><init>(Ljava/lang/Object;Landroidx/compose/material3/SwipeableState;)V

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.class public final Landroidx/compose/material3/SwipeableV2State;
.super Ljava/lang/Object;
.source "SwipeableV2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/SwipeableV2State$Companion;
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
    value = "SMAP\nSwipeableV2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwipeableV2.kt\nandroidx/compose/material3/SwipeableV2State\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,692:1\n76#2:693\n102#2,2:694\n76#2:696\n76#2:697\n102#2,2:698\n76#2:700\n76#2:701\n102#2,2:702\n76#2:704\n76#2:705\n76#2:706\n102#2,2:707\n76#2:709\n102#2,2:710\n288#3,2:712\n1#4:714\n*S KotlinDebug\n*F\n+ 1 SwipeableV2.kt\nandroidx/compose/material3/SwipeableV2State\n*L\n199#1:693\n199#1:694,2\n207#1:696\n230#1:697\n230#1:698,2\n253#1:700\n270#1:701\n270#1:702,2\n277#1:704\n283#1:705\n285#1:706\n285#1:707,2\n287#1:709\n287#1:710,2\n369#1:712,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u00085\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u0000 s*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001sB\u007f\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012#\u0008\u0002\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0008\u0012.\u0008\u0002\u0010\r\u001a(\u0012\u0004\u0012\u00020\u000f\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00060\u000e\u00a2\u0006\u0002\u0008\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J#\u0010V\u001a\u00020W2\u0006\u0010Q\u001a\u00028\u00002\u0008\u0008\u0002\u0010X\u001a\u00020\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010YJ%\u0010Z\u001a\u00028\u00002\u0006\u0010@\u001a\u00020\u00062\u0006\u0010(\u001a\u00028\u00002\u0006\u0010X\u001a\u00020\u0006H\u0002\u00a2\u0006\u0002\u0010[J\u000e\u0010\\\u001a\u00020\u00062\u0006\u0010]\u001a\u00020\u0006J\u0013\u0010^\u001a\u00020\u000c2\u0006\u0010_\u001a\u00028\u0000\u00a2\u0006\u0002\u0010`J\u0008\u0010a\u001a\u00020\u000fH\u0002J\u0006\u0010b\u001a\u00020\u0006J\u0019\u0010c\u001a\u00020W2\u0006\u0010X\u001a\u00020\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010dJ\u0015\u0010e\u001a\u00020W2\u0006\u0010Q\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010$J\u0019\u0010f\u001a\u00020W2\u0006\u0010Q\u001a\u00028\u0000H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010gJ9\u0010h\u001a\u00020W2\u0008\u0008\u0002\u0010i\u001a\u00020j2\u001c\u0010k\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020W0l\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010mJ\u0017\u0010n\u001a\u00020\u000c2\u0006\u0010Q\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008o\u0010`J!\u0010p\u001a\u00020\u000c2\u0012\u0010q\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0016H\u0000\u00a2\u0006\u0002\u0008rRC\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u00162\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u00168@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR/\u0010 \u001a\u0004\u0018\u00018\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00018\u00008B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u001d\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R/\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R+\u0010(\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00028\u00008F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u001d\u001a\u0004\u0008)\u0010\"\"\u0004\u0008*\u0010$R\u001c\u0010,\u001a\u0004\u0018\u00010\u000fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u0011\u00101\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R+\u00103\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00068F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00088\u0010\u001d\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u001b\u00109\u001a\u00020\u00068FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008:\u00105R\u001b\u0010=\u001a\u00020\u00068FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u0010<\u001a\u0004\u0008>\u00105R/\u0010@\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00068F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008E\u0010\u001d\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR:\u0010\r\u001a(\u0012\u0004\u0012\u00020\u000f\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00060\u000e\u00a2\u0006\u0002\u0008\u0011X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010GR\u001b\u0010H\u001a\u00020\u00068FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010<\u001a\u0004\u0008I\u00105R\u0014\u0010K\u001a\u00020LX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u0010NR\u000e\u0010O\u001a\u00020PX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010Q\u001a\u00028\u00008FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008S\u0010<\u001a\u0004\u0008R\u0010\"R\u001f\u0010\u0012\u001a\u00020\u0013X\u0080\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010U\u001a\u0004\u0008T\u00105\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006t"
    }
    d2 = {
        "Landroidx/compose/material3/SwipeableV2State;",
        "T",
        "",
        "initialValue",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "confirmValueChange",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "newValue",
        "",
        "positionalThreshold",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/Density;",
        "totalDistance",
        "Lkotlin/ExtensionFunctionType;",
        "velocityThreshold",
        "Landroidx/compose/ui/unit/Dp;",
        "(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
        "getAnimationTarget",
        "()Ljava/lang/Object;",
        "setAnimationTarget",
        "(Ljava/lang/Object;)V",
        "animationTarget$delegate",
        "getConfirmValueChange$material3_release",
        "()Lkotlin/jvm/functions/Function1;",
        "currentValue",
        "getCurrentValue",
        "setCurrentValue",
        "currentValue$delegate",
        "density",
        "getDensity$material3_release",
        "()Landroidx/compose/ui/unit/Density;",
        "setDensity$material3_release",
        "(Landroidx/compose/ui/unit/Density;)V",
        "isAnimationRunning",
        "()Z",
        "lastVelocity",
        "getLastVelocity",
        "()F",
        "setLastVelocity",
        "(F)V",
        "lastVelocity$delegate",
        "maxOffset",
        "getMaxOffset",
        "maxOffset$delegate",
        "Landroidx/compose/runtime/State;",
        "minOffset",
        "getMinOffset",
        "minOffset$delegate",
        "offset",
        "getOffset",
        "()Ljava/lang/Float;",
        "setOffset",
        "(Ljava/lang/Float;)V",
        "offset$delegate",
        "getPositionalThreshold$material3_release",
        "()Lkotlin/jvm/functions/Function2;",
        "progress",
        "getProgress",
        "progress$delegate",
        "swipeDraggableState",
        "Landroidx/compose/foundation/gestures/DraggableState;",
        "getSwipeDraggableState$material3_release",
        "()Landroidx/compose/foundation/gestures/DraggableState;",
        "swipeMutex",
        "Landroidx/compose/material3/InternalMutatorMutex;",
        "targetValue",
        "getTargetValue",
        "targetValue$delegate",
        "getVelocityThreshold-D9Ej5fM$material3_release",
        "F",
        "animateTo",
        "",
        "velocity",
        "(Ljava/lang/Object;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "computeTarget",
        "(FLjava/lang/Object;F)Ljava/lang/Object;",
        "dispatchRawDelta",
        "delta",
        "hasAnchorForValue",
        "value",
        "(Ljava/lang/Object;)Z",
        "requireDensity",
        "requireOffset",
        "settle",
        "(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "snap",
        "snapTo",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "swipe",
        "swipePriority",
        "Landroidx/compose/foundation/MutatePriority;",
        "action",
        "Lkotlin/coroutines/Continuation;",
        "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trySnapTo",
        "trySnapTo$material3_release",
        "updateAnchors",
        "newAnchors",
        "updateAnchors$material3_release",
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
.field public static final Companion:Landroidx/compose/material3/SwipeableV2State$Companion;


# instance fields
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

.field private final animationTarget$delegate:Landroidx/compose/runtime/MutableState;

.field private final confirmValueChange:Lkotlin/jvm/functions/Function1;
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

.field private density:Landroidx/compose/ui/unit/Density;

.field private final lastVelocity$delegate:Landroidx/compose/runtime/MutableState;

.field private final maxOffset$delegate:Landroidx/compose/runtime/State;

.field private final minOffset$delegate:Landroidx/compose/runtime/State;

.field private final offset$delegate:Landroidx/compose/runtime/MutableState;

.field private final positionalThreshold:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/Density;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final progress$delegate:Landroidx/compose/runtime/State;

.field private final swipeDraggableState:Landroidx/compose/foundation/gestures/DraggableState;

.field private final swipeMutex:Landroidx/compose/material3/InternalMutatorMutex;

.field private final targetValue$delegate:Landroidx/compose/runtime/State;

.field private final velocityThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/SwipeableV2State$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/SwipeableV2State$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/SwipeableV2State;->Companion:Landroidx/compose/material3/SwipeableV2State$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    const-string v0, "animationSpec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmValueChange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionalThreshold"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/material3/SwipeableV2State;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p3, p0, Landroidx/compose/material3/SwipeableV2State;->confirmValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/material3/SwipeableV2State;->positionalThreshold:Lkotlin/jvm/functions/Function2;

    iput p5, p0, Landroidx/compose/material3/SwipeableV2State;->velocityThreshold:F

    .line 175
    new-instance p2, Landroidx/compose/material3/InternalMutatorMutex;

    invoke-direct {p2}, Landroidx/compose/material3/InternalMutatorMutex;-><init>()V

    iput-object p2, p0, Landroidx/compose/material3/SwipeableV2State;->swipeMutex:Landroidx/compose/material3/InternalMutatorMutex;

    .line 177
    new-instance p2, Landroidx/compose/material3/SwipeableV2State$swipeDraggableState$1;

    invoke-direct {p2, p0}, Landroidx/compose/material3/SwipeableV2State$swipeDraggableState$1;-><init>(Landroidx/compose/material3/SwipeableV2State;)V

    check-cast p2, Landroidx/compose/foundation/gestures/DraggableState;

    iput-object p2, p0, Landroidx/compose/material3/SwipeableV2State;->swipeDraggableState:Landroidx/compose/foundation/gestures/DraggableState;

    const/4 p2, 0x0

    const/4 p3, 0x2

    .line 199
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2State;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 207
    new-instance p1, Landroidx/compose/material3/SwipeableV2State$targetValue$2;

    invoke-direct {p1, p0}, Landroidx/compose/material3/SwipeableV2State$targetValue$2;-><init>(Landroidx/compose/material3/SwipeableV2State;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2State;->targetValue$delegate:Landroidx/compose/runtime/State;

    .line 230
    invoke-static {p2, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2State;->offset$delegate:Landroidx/compose/runtime/MutableState;

    .line 253
    new-instance p1, Landroidx/compose/material3/SwipeableV2State$progress$2;

    invoke-direct {p1, p0}, Landroidx/compose/material3/SwipeableV2State$progress$2;-><init>(Landroidx/compose/material3/SwipeableV2State;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2State;->progress$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x0

    .line 270
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2State;->lastVelocity$delegate:Landroidx/compose/runtime/MutableState;

    .line 277
    new-instance p1, Landroidx/compose/material3/SwipeableV2State$minOffset$2;

    invoke-direct {p1, p0}, Landroidx/compose/material3/SwipeableV2State$minOffset$2;-><init>(Landroidx/compose/material3/SwipeableV2State;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2State;->minOffset$delegate:Landroidx/compose/runtime/State;

    .line 283
    new-instance p1, Landroidx/compose/material3/SwipeableV2State$maxOffset$2;

    invoke-direct {p1, p0}, Landroidx/compose/material3/SwipeableV2State$maxOffset$2;-><init>(Landroidx/compose/material3/SwipeableV2State;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2State;->maxOffset$delegate:Landroidx/compose/runtime/State;

    .line 285
    invoke-static {p2, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2State;->animationTarget$delegate:Landroidx/compose/runtime/MutableState;

    .line 287
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2State;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 168
    sget-object p2, Landroidx/compose/material3/SwipeableV2Defaults;->INSTANCE:Landroidx/compose/material3/SwipeableV2Defaults;

    invoke-virtual {p2}, Landroidx/compose/material3/SwipeableV2Defaults;->getAnimationSpec()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 169
    sget-object p2, Landroidx/compose/material3/SwipeableV2State$1;->INSTANCE:Landroidx/compose/material3/SwipeableV2State$1;

    move-object p3, p2

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 171
    sget-object p2, Landroidx/compose/material3/SwipeableV2Defaults;->INSTANCE:Landroidx/compose/material3/SwipeableV2Defaults;

    invoke-virtual {p2}, Landroidx/compose/material3/SwipeableV2Defaults;->getPositionalThreshold()Lkotlin/jvm/functions/Function2;

    move-result-object p4

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    .line 172
    sget-object p2, Landroidx/compose/material3/SwipeableV2Defaults;->INSTANCE:Landroidx/compose/material3/SwipeableV2Defaults;

    invoke-virtual {p2}, Landroidx/compose/material3/SwipeableV2Defaults;->getVelocityThreshold-D9Ej5fM()F

    move-result p5

    :cond_3
    move v5, p5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 166
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/SwipeableV2State;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/material3/SwipeableV2State;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;F)V

    return-void
.end method

.method public static final synthetic access$computeTarget(Landroidx/compose/material3/SwipeableV2State;FLjava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/SwipeableV2State;->computeTarget(FLjava/lang/Object;F)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAnimationTarget(Landroidx/compose/material3/SwipeableV2State;)Ljava/lang/Object;
    .locals 0

    .line 164
    invoke-direct {p0}, Landroidx/compose/material3/SwipeableV2State;->getAnimationTarget()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSwipeMutex$p(Landroidx/compose/material3/SwipeableV2State;)Landroidx/compose/material3/InternalMutatorMutex;
    .locals 0

    .line 164
    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->swipeMutex:Landroidx/compose/material3/InternalMutatorMutex;

    return-object p0
.end method

.method public static final synthetic access$setAnimationTarget(Landroidx/compose/material3/SwipeableV2State;Ljava/lang/Object;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Landroidx/compose/material3/SwipeableV2State;->setAnimationTarget(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$setLastVelocity(Landroidx/compose/material3/SwipeableV2State;F)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Landroidx/compose/material3/SwipeableV2State;->setLastVelocity(F)V

    return-void
.end method

.method public static final synthetic access$setOffset(Landroidx/compose/material3/SwipeableV2State;Ljava/lang/Float;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Landroidx/compose/material3/SwipeableV2State;->setOffset(Ljava/lang/Float;)V

    return-void
.end method

.method public static final synthetic access$snap(Landroidx/compose/material3/SwipeableV2State;Ljava/lang/Object;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Landroidx/compose/material3/SwipeableV2State;->snap(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$swipe(Landroidx/compose/material3/SwipeableV2State;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/SwipeableV2State;->swipe(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic animateTo$default(Landroidx/compose/material3/SwipeableV2State;Ljava/lang/Object;FLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 345
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getLastVelocity()F

    move-result p2

    .line 343
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/SwipeableV2State;->animateTo(Ljava/lang/Object;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final computeTarget(FLjava/lang/Object;F)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;F)TT;"
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v0

    .line 418
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 419
    invoke-direct {p0}, Landroidx/compose/material3/SwipeableV2State;->requireDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v2

    iget v3, p0, Landroidx/compose/material3/SwipeableV2State;->velocityThreshold:F

    .line 420
    invoke-interface {v2, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    .line 421
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v4

    if-nez v4, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 423
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_3

    cmpl-float p3, p3, v3

    const/4 v3, 0x1

    if-ltz p3, :cond_1

    .line 426
    invoke-static {v0, p1, v3}, Landroidx/compose/material3/SwipeableV2Kt;->access$closestAnchor(Ljava/util/Map;FZ)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    .line 428
    :cond_1
    invoke-static {v0, p1, v3}, Landroidx/compose/material3/SwipeableV2Kt;->access$closestAnchor(Ljava/util/Map;FZ)Ljava/lang/Object;

    move-result-object p3

    .line 429
    invoke-static {v0, p3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->positionalThreshold:Lkotlin/jvm/functions/Function2;

    .line 430
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 431
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p3

    goto :goto_0

    :cond_3
    neg-float v3, v3

    cmpg-float p3, p3, v3

    const/4 v3, 0x0

    if-gtz p3, :cond_4

    .line 437
    invoke-static {v0, p1, v3}, Landroidx/compose/material3/SwipeableV2Kt;->access$closestAnchor(Ljava/util/Map;FZ)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 439
    :cond_4
    invoke-static {v0, p1, v3}, Landroidx/compose/material3/SwipeableV2Kt;->access$closestAnchor(Ljava/util/Map;FZ)Ljava/lang/Object;

    move-result-object p3

    .line 440
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v0, p3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->positionalThreshold:Lkotlin/jvm/functions/Function2;

    .line 441
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 442
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 446
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    goto :goto_0

    :cond_5
    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    :cond_6
    :goto_0
    return-object p2
.end method

.method private final getAnimationTarget()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->animationTarget$delegate:Landroidx/compose/runtime/MutableState;

    .line 285
    check-cast p0, Landroidx/compose/runtime/State;

    .line 706
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final requireDensity()Landroidx/compose/ui/unit/Density;
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/SwipeableV2State;->density:Landroidx/compose/ui/unit/Density;

    if-eqz v0, :cond_0

    return-object v0

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SwipeableState did not have a density attached. Are you using Modifier.swipeable with this="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " SwipeableState?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final setAnimationTarget(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->animationTarget$delegate:Landroidx/compose/runtime/MutableState;

    .line 707
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

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 694
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setLastVelocity(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->lastVelocity$delegate:Landroidx/compose/runtime/MutableState;

    .line 270
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 702
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setOffset(Ljava/lang/Float;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->offset$delegate:Landroidx/compose/runtime/MutableState;

    .line 698
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final snap(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getOffset()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/compose/material3/SwipeableV2State;->dispatchRawDelta(F)F

    .line 477
    invoke-direct {p0, p1}, Landroidx/compose/material3/SwipeableV2State;->setCurrentValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 478
    invoke-direct {p0, p1}, Landroidx/compose/material3/SwipeableV2State;->setAnimationTarget(Ljava/lang/Object;)V

    goto :goto_1

    .line 480
    :cond_1
    invoke-direct {p0, p1}, Landroidx/compose/material3/SwipeableV2State;->setCurrentValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private final swipe(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/MutatePriority;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 462
    new-instance v0, Landroidx/compose/material3/SwipeableV2State$swipe$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/material3/SwipeableV2State$swipe$2;-><init>(Landroidx/compose/material3/SwipeableV2State;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic swipe$default(Landroidx/compose/material3/SwipeableV2State;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 460
    sget-object p1, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    .line 459
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/SwipeableV2State;->swipe(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final animateTo(Ljava/lang/Object;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p3

    instance-of v1, v0, Landroidx/compose/material3/SwipeableV2State$animateTo$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/material3/SwipeableV2State$animateTo$1;

    iget v2, v1, Landroidx/compose/material3/SwipeableV2State$animateTo$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/material3/SwipeableV2State$animateTo$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/material3/SwipeableV2State$animateTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/material3/SwipeableV2State$animateTo$1;

    invoke-direct {v1, p0, v0}, Landroidx/compose/material3/SwipeableV2State$animateTo$1;-><init>(Landroidx/compose/material3/SwipeableV2State;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    iget-object v1, v0, Landroidx/compose/material3/SwipeableV2State$animateTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 343
    iget v2, v0, Landroidx/compose/material3/SwipeableV2State$animateTo$1;->label:I

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v10, :cond_1

    iget-object v0, v0, Landroidx/compose/material3/SwipeableV2State$animateTo$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/compose/material3/SwipeableV2State;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v2

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 347
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v1

    move-object v3, p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Float;

    if-eqz v4, :cond_c

    const/4 v12, 0x0

    .line 350
    :try_start_1
    new-instance v13, Landroidx/compose/material3/SwipeableV2State$animateTo$2;

    const/4 v6, 0x0

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/SwipeableV2State$animateTo$2;-><init>(Landroidx/compose/material3/SwipeableV2State;Ljava/lang/Object;Ljava/lang/Float;FLkotlin/coroutines/Continuation;)V

    move-object v3, v13

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iput-object v7, v0, Landroidx/compose/material3/SwipeableV2State$animateTo$1;->L$0:Ljava/lang/Object;

    iput v10, v0, Landroidx/compose/material3/SwipeableV2State$animateTo$1;->label:I

    move-object v1, p0

    move-object v2, v12

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/SwipeableV2State;->swipe$default(Landroidx/compose/material3/SwipeableV2State;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v8, :cond_3

    return-object v8

    :cond_3
    move-object v2, v7

    .line 365
    :goto_1
    invoke-direct {v2, v11}, Landroidx/compose/material3/SwipeableV2State;->setAnimationTarget(Ljava/lang/Object;)V

    .line 366
    invoke-virtual {v2}, Landroidx/compose/material3/SwipeableV2State;->requireOffset()F

    move-result v0

    .line 367
    invoke-virtual {v2}, Landroidx/compose/material3/SwipeableV2State;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v1

    .line 368
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 712
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/Map$Entry;

    .line 369
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v9

    if-gez v4, :cond_4

    goto :goto_2

    :cond_5
    move-object v3, v11

    :goto_2
    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_6

    .line 370
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    :cond_6
    if-nez v11, :cond_7

    .line 371
    invoke-virtual {v2}, Landroidx/compose/material3/SwipeableV2State;->getCurrentValue()Ljava/lang/Object;

    move-result-object v11

    :cond_7
    invoke-direct {v2, v11}, Landroidx/compose/material3/SwipeableV2State;->setCurrentValue(Ljava/lang/Object;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 365
    :goto_3
    invoke-direct {v7, v11}, Landroidx/compose/material3/SwipeableV2State;->setAnimationTarget(Ljava/lang/Object;)V

    .line 366
    invoke-virtual {v7}, Landroidx/compose/material3/SwipeableV2State;->requireOffset()F

    move-result v1

    .line 367
    invoke-virtual {v7}, Landroidx/compose/material3/SwipeableV2State;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v2

    .line 368
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 712
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/Map$Entry;

    .line 369
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v9

    if-gez v4, :cond_8

    goto :goto_4

    :cond_9
    move-object v3, v11

    :goto_4
    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_a

    .line 370
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    :cond_a
    if-nez v11, :cond_b

    .line 371
    invoke-virtual {v7}, Landroidx/compose/material3/SwipeableV2State;->getCurrentValue()Ljava/lang/Object;

    move-result-object v11

    :cond_b
    invoke-direct {v7, v11}, Landroidx/compose/material3/SwipeableV2State;->setCurrentValue(Ljava/lang/Object;)V

    throw v0

    .line 374
    :cond_c
    invoke-direct {p0, p1}, Landroidx/compose/material3/SwipeableV2State;->setCurrentValue(Ljava/lang/Object;)V

    .line 376
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final dispatchRawDelta(F)F
    .locals 4

    .line 402
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getOffset()Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-float/2addr p1, v0

    .line 404
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getMinOffset()F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getMaxOffset()F

    move-result v3

    invoke-static {p1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    sub-float/2addr p1, v0

    .line 406
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 407
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getOffset()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_1
    add-float/2addr v1, p1

    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getMinOffset()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getMaxOffset()F

    move-result v2

    invoke-static {v1, v0, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/material3/SwipeableV2State;->setOffset(Ljava/lang/Float;)V

    :cond_2
    return p1
.end method

.method public final getAnchors$material3_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    .line 287
    check-cast p0, Landroidx/compose/runtime/State;

    .line 709
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

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object p0
.end method

.method public final getConfirmValueChange$material3_release()Lkotlin/jvm/functions/Function1;
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

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->confirmValueChange:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getCurrentValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 199
    check-cast p0, Landroidx/compose/runtime/State;

    .line 693
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getDensity$material3_release()Landroidx/compose/ui/unit/Density;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->density:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public final getLastVelocity()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->lastVelocity$delegate:Landroidx/compose/runtime/MutableState;

    .line 270
    check-cast p0, Landroidx/compose/runtime/State;

    .line 701
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getMaxOffset()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->maxOffset$delegate:Landroidx/compose/runtime/State;

    .line 705
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getMinOffset()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->minOffset$delegate:Landroidx/compose/runtime/State;

    .line 704
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getOffset()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->offset$delegate:Landroidx/compose/runtime/MutableState;

    .line 230
    check-cast p0, Landroidx/compose/runtime/State;

    .line 697
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public final getPositionalThreshold$material3_release()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/Density;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->positionalThreshold:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getProgress()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->progress$delegate:Landroidx/compose/runtime/State;

    .line 700
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getSwipeDraggableState$material3_release()Landroidx/compose/foundation/gestures/DraggableState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->swipeDraggableState:Landroidx/compose/foundation/gestures/DraggableState;

    return-object p0
.end method

.method public final getTargetValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->targetValue$delegate:Landroidx/compose/runtime/State;

    .line 696
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getVelocityThreshold-D9Ej5fM$material3_release()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/SwipeableV2State;->velocityThreshold:F

    return p0
.end method

.method public final hasAnchorForValue(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isAnimationRunning()Z
    .locals 0

    .line 246
    invoke-direct {p0}, Landroidx/compose/material3/SwipeableV2State;->getAnimationTarget()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final requireOffset()F
    .locals 1

    .line 238
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getOffset()Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The offset was read before being initialized. Did you access the offset in a phase before layout, like effects or composition?"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setAnchors$material3_release(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    .line 710
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setDensity$material3_release(Landroidx/compose/ui/unit/Density;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2State;->density:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method public final settle(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 382
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    .line 384
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->requireOffset()F

    move-result v1

    .line 383
    invoke-direct {p0, v1, v0, p1}, Landroidx/compose/material3/SwipeableV2State;->computeTarget(FLjava/lang/Object;F)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/material3/SwipeableV2State;->confirmValueChange:Lkotlin/jvm/functions/Function1;

    .line 388
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    invoke-virtual {p0, v1, p1, p2}, Landroidx/compose/material3/SwipeableV2State;->animateTo(Ljava/lang/Object;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 392
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Landroidx/compose/material3/SwipeableV2State;->animateTo(Ljava/lang/Object;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    const/4 v1, 0x0

    .line 329
    new-instance v0, Landroidx/compose/material3/SwipeableV2State$snapTo$2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Landroidx/compose/material3/SwipeableV2State$snapTo$2;-><init>(Landroidx/compose/material3/SwipeableV2State;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/SwipeableV2State;->swipe$default(Landroidx/compose/material3/SwipeableV2State;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final trySnapTo$material3_release(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/SwipeableV2State;->swipeMutex:Landroidx/compose/material3/InternalMutatorMutex;

    .line 471
    new-instance v1, Landroidx/compose/material3/SwipeableV2State$trySnapTo$1;

    invoke-direct {v1, p0, p1}, Landroidx/compose/material3/SwipeableV2State$trySnapTo$1;-><init>(Landroidx/compose/material3/SwipeableV2State;Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Landroidx/compose/material3/InternalMutatorMutex;->tryMutate(Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method public final updateAnchors$material3_release(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "newAnchors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 302
    invoke-virtual {p0, p1}, Landroidx/compose/material3/SwipeableV2State;->setAnchors$material3_release(Ljava/util/Map;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 304
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getCurrentValue()Ljava/lang/Object;

    move-result-object v2

    .line 305
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v3, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    .line 307
    invoke-virtual {p0, v2}, Landroidx/compose/material3/SwipeableV2State;->trySnapTo$material3_release(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v3, :cond_4

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    :cond_4
    :goto_1
    return p1
.end method

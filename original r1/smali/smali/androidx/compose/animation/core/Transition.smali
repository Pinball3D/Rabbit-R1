.class public final Landroidx/compose/animation/core/Transition;
.super Ljava/lang/Object;
.source "Transition.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/Transition$DeferredAnimation;,
        Landroidx/compose/animation/core/Transition$Segment;,
        Landroidx/compose/animation/core/Transition$SegmentImpl;,
        Landroidx/compose/animation/core/Transition$TransitionAnimationState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/Transition\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 SnapshotLongState.kt\nandroidx/compose/runtime/SnapshotLongStateKt__SnapshotLongStateKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,1156:1\n81#2:1157\n107#2,2:1158\n81#2:1160\n107#2,2:1161\n81#2:1169\n107#2,2:1170\n81#2:1172\n107#2,2:1173\n81#2:1175\n76#3:1163\n109#3,2:1164\n76#3:1166\n109#3,2:1167\n1855#4,2:1176\n1855#4,2:1178\n1855#4,2:1180\n1855#4,2:1182\n1855#4,2:1184\n1855#4,2:1193\n36#5:1186\n1097#6,6:1187\n*S KotlinDebug\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/Transition\n*L\n213#1:1157\n213#1:1158,2\n220#1:1160\n220#1:1161,2\n239#1:1169\n239#1:1170,2\n259#1:1172\n259#1:1173,2\n271#1:1175\n235#1:1163\n235#1:1164,2\n236#1:1166\n236#1:1167,2\n295#1:1176,2\n304#1:1178,2\n365#1:1180,2\n378#1:1182,2\n417#1:1184,2\n454#1:1193,2\n432#1:1186\n432#1:1187,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0004ijklB\u0019\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B!\u0008\u0001\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\tJ\'\u0010J\u001a\u00020\u00192\u0018\u0010K\u001a\u0014\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000cR\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0000\u00a2\u0006\u0002\u0008LJ\u0019\u0010M\u001a\u00020\u00192\n\u0010N\u001a\u0006\u0012\u0002\u0008\u00030\u0000H\u0000\u00a2\u0006\u0002\u0008OJ\u0017\u0010P\u001a\u00020Q2\u0006\u0010<\u001a\u00028\u0000H\u0001\u00a2\u0006\u0004\u0008R\u0010SJ\u0008\u0010T\u001a\u00020QH\u0002J\u001d\u0010U\u001a\u00020Q2\u0006\u0010V\u001a\u00020&2\u0006\u0010W\u001a\u00020XH\u0000\u00a2\u0006\u0002\u0008YJ\r\u0010Z\u001a\u00020QH\u0000\u00a2\u0006\u0002\u0008[J\u0015\u0010\\\u001a\u00020Q2\u0006\u0010V\u001a\u00020&H\u0000\u00a2\u0006\u0002\u0008]J\'\u0010^\u001a\u00020Q2\u0018\u0010_\u001a\u0014\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030`R\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0000\u00a2\u0006\u0002\u0008aJ\'\u0010^\u001a\u00020Q2\u0018\u0010K\u001a\u0014\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000cR\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0000\u00a2\u0006\u0002\u0008aJ\u0019\u0010b\u001a\u00020\u00192\n\u0010N\u001a\u0006\u0012\u0002\u0008\u00030\u0000H\u0000\u00a2\u0006\u0002\u0008cJ\'\u0010d\u001a\u00020Q2\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010<\u001a\u00028\u00002\u0006\u0010+\u001a\u00020&H\u0007\u00a2\u0006\u0004\u0008e\u0010fJ\u0017\u0010g\u001a\u00020Q2\u0006\u0010<\u001a\u00028\u0000H\u0001\u00a2\u0006\u0004\u0008h\u0010SR&\u0010\n\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000cR\u0008\u0012\u0004\u0012\u00028\u00000\u00000\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00000\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R)\u0010\u000e\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000cR\u0008\u0012\u0004\u0012\u00028\u00000\u00000\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00028\u00008F@@X\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u001aR1\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00198F@@X\u0087\u008e\u0002\u00a2\u0006\u0018\n\u0004\u0008!\u0010\"\u0012\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001c\u0010\u001a\"\u0004\u0008\u001f\u0010 R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R1\u0010+\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020&8F@FX\u0087\u008e\u0002\u00a2\u0006\u0018\n\u0004\u0008/\u00100\u0012\u0004\u0008,\u0010\u001e\u001a\u0004\u0008-\u0010(\"\u0004\u0008.\u0010*R7\u00102\u001a\u0008\u0012\u0004\u0012\u00028\u0000012\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u0000018F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00087\u0010\"\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R+\u00108\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020&8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008;\u00100\u001a\u0004\u00089\u0010(\"\u0004\u0008:\u0010*R+\u0010<\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00028\u00008F@@X\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008?\u0010\"\u001a\u0004\u0008=\u0010\u0015\"\u0004\u0008>\u0010\u0017R\u001b\u0010@\u001a\u00020&8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008B\u0010C\u001a\u0004\u0008A\u0010(R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010D\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00000\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010\u0011R+\u0010F\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00198@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008I\u0010\"\u001a\u0004\u0008G\u0010\u001a\"\u0004\u0008H\u0010 \u00a8\u0006m"
    }
    d2 = {
        "Landroidx/compose/animation/core/Transition;",
        "S",
        "",
        "initialState",
        "label",
        "",
        "(Ljava/lang/Object;Ljava/lang/String;)V",
        "transitionState",
        "Landroidx/compose/animation/core/MutableTransitionState;",
        "(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;)V",
        "_animations",
        "Landroidx/compose/runtime/snapshots/SnapshotStateList;",
        "Landroidx/compose/animation/core/Transition$TransitionAnimationState;",
        "_transitions",
        "animations",
        "",
        "getAnimations",
        "()Ljava/util/List;",
        "value",
        "currentState",
        "getCurrentState",
        "()Ljava/lang/Object;",
        "setCurrentState$animation_core_release",
        "(Ljava/lang/Object;)V",
        "isRunning",
        "",
        "()Z",
        "<set-?>",
        "isSeeking",
        "isSeeking$annotations",
        "()V",
        "setSeeking$animation_core_release",
        "(Z)V",
        "isSeeking$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "getLabel",
        "()Ljava/lang/String;",
        "lastSeekedTimeNanos",
        "",
        "getLastSeekedTimeNanos$animation_core_release",
        "()J",
        "setLastSeekedTimeNanos$animation_core_release",
        "(J)V",
        "playTimeNanos",
        "getPlayTimeNanos$annotations",
        "getPlayTimeNanos",
        "setPlayTimeNanos",
        "playTimeNanos$delegate",
        "Landroidx/compose/runtime/MutableLongState;",
        "Landroidx/compose/animation/core/Transition$Segment;",
        "segment",
        "getSegment",
        "()Landroidx/compose/animation/core/Transition$Segment;",
        "setSegment",
        "(Landroidx/compose/animation/core/Transition$Segment;)V",
        "segment$delegate",
        "startTimeNanos",
        "getStartTimeNanos",
        "setStartTimeNanos",
        "startTimeNanos$delegate",
        "targetState",
        "getTargetState",
        "setTargetState$animation_core_release",
        "targetState$delegate",
        "totalDurationNanos",
        "getTotalDurationNanos",
        "totalDurationNanos$delegate",
        "Landroidx/compose/runtime/State;",
        "transitions",
        "getTransitions",
        "updateChildrenNeeded",
        "getUpdateChildrenNeeded$animation_core_release",
        "setUpdateChildrenNeeded$animation_core_release",
        "updateChildrenNeeded$delegate",
        "addAnimation",
        "animation",
        "addAnimation$animation_core_release",
        "addTransition",
        "transition",
        "addTransition$animation_core_release",
        "animateTo",
        "",
        "animateTo$animation_core_release",
        "(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V",
        "onChildAnimationUpdated",
        "onFrame",
        "frameTimeNanos",
        "durationScale",
        "",
        "onFrame$animation_core_release",
        "onTransitionEnd",
        "onTransitionEnd$animation_core_release",
        "onTransitionStart",
        "onTransitionStart$animation_core_release",
        "removeAnimation",
        "deferredAnimation",
        "Landroidx/compose/animation/core/Transition$DeferredAnimation;",
        "removeAnimation$animation_core_release",
        "removeTransition",
        "removeTransition$animation_core_release",
        "setPlaytimeAfterInitialAndTargetStateEstablished",
        "seek",
        "(Ljava/lang/Object;Ljava/lang/Object;J)V",
        "updateTarget",
        "updateTarget$animation_core_release",
        "DeferredAnimation",
        "Segment",
        "SegmentImpl",
        "TransitionAnimationState",
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
.field private final _animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.TransitionAnimationState<**>;>;"
        }
    .end annotation
.end field

.field private final _transitions:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Landroidx/compose/animation/core/Transition<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final isSeeking$delegate:Landroidx/compose/runtime/MutableState;

.field private final label:Ljava/lang/String;

.field private lastSeekedTimeNanos:J

.field private final playTimeNanos$delegate:Landroidx/compose/runtime/MutableLongState;

.field private final segment$delegate:Landroidx/compose/runtime/MutableState;

.field private final startTimeNanos$delegate:Landroidx/compose/runtime/MutableLongState;

.field private final targetState$delegate:Landroidx/compose/runtime/MutableState;

.field private final totalDurationNanos$delegate:Landroidx/compose/runtime/State;

.field private final transitionState:Landroidx/compose/animation/core/MutableTransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final updateChildrenNeeded$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "TS;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "transitionState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/MutableTransitionState;

    iput-object p2, p0, Landroidx/compose/animation/core/Transition;->label:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/MutableState;

    .line 220
    new-instance p1, Landroidx/compose/animation/core/Transition$SegmentImpl;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Landroidx/compose/animation/core/Transition$SegmentImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/Transition;->segment$delegate:Landroidx/compose/runtime/MutableState;

    const-wide/16 v1, 0x0

    .line 235
    invoke-static {v1, v2}, Landroidx/compose/runtime/SnapshotLongStateKt;->mutableLongStateOf(J)Landroidx/compose/runtime/MutableLongState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/Transition;->playTimeNanos$delegate:Landroidx/compose/runtime/MutableLongState;

    const-wide/high16 v1, -0x8000000000000000L

    .line 236
    invoke-static {v1, v2}, Landroidx/compose/runtime/SnapshotLongStateKt;->mutableLongStateOf(J)Landroidx/compose/runtime/MutableLongState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/Transition;->startTimeNanos$delegate:Landroidx/compose/runtime/MutableLongState;

    const/4 p1, 0x1

    .line 239
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/Transition;->updateChildrenNeeded$delegate:Landroidx/compose/runtime/MutableState;

    .line 241
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 242
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/Transition;->_transitions:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    const/4 p1, 0x0

    .line 259
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/Transition;->isSeeking$delegate:Landroidx/compose/runtime/MutableState;

    .line 271
    new-instance p1, Landroidx/compose/animation/core/Transition$totalDurationNanos$2;

    invoke-direct {p1, p0}, Landroidx/compose/animation/core/Transition$totalDurationNanos$2;-><init>(Landroidx/compose/animation/core/Transition;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/Transition;->totalDurationNanos$delegate:Landroidx/compose/runtime/State;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 189
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 196
    new-instance v0, Landroidx/compose/animation/core/MutableTransitionState;

    invoke-direct {v0, p1}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$get_animations$p(Landroidx/compose/animation/core/Transition;)Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 0

    .line 188
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    return-object p0
.end method

.method public static final synthetic access$get_transitions$p(Landroidx/compose/animation/core/Transition;)Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 0

    .line 188
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->_transitions:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    return-object p0
.end method

.method public static final synthetic access$onChildAnimationUpdated(Landroidx/compose/animation/core/Transition;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Landroidx/compose/animation/core/Transition;->onChildAnimationUpdated()V

    return-void
.end method

.method public static synthetic getPlayTimeNanos$annotations()V
    .locals 0

    return-void
.end method

.method private final getStartTimeNanos()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->startTimeNanos$delegate:Landroidx/compose/runtime/MutableLongState;

    .line 236
    check-cast p0, Landroidx/compose/runtime/LongState;

    .line 1166
    invoke-interface {p0}, Landroidx/compose/runtime/LongState;->getLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic isSeeking$annotations()V
    .locals 0

    return-void
.end method

.method private final onChildAnimationUpdated()V
    .locals 6

    const/4 v0, 0x1

    .line 450
    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/Transition;->setUpdateChildrenNeeded$animation_core_release(Z)V

    .line 451
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 454
    check-cast v0, Ljava/lang/Iterable;

    .line 1193
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 455
    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getDurationNanos$animation_core_release()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-wide v4, p0, Landroidx/compose/animation/core/Transition;->lastSeekedTimeNanos:J

    .line 456
    invoke-virtual {v3, v4, v5}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->seekTo$animation_core_release(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 460
    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/Transition;->setUpdateChildrenNeeded$animation_core_release(Z)V

    :cond_1
    return-void
.end method

.method private final setSegment(Landroidx/compose/animation/core/Transition$Segment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->segment$delegate:Landroidx/compose/runtime/MutableState;

    .line 1161
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setStartTimeNanos(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->startTimeNanos$delegate:Landroidx/compose/runtime/MutableLongState;

    .line 1167
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/MutableLongState;->setLongValue(J)V

    return-void
.end method


# virtual methods
.method public final addAnimation$animation_core_release(Landroidx/compose/animation/core/Transition$TransitionAnimationState;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.TransitionAnimationState<**>;)Z"
        }
    .end annotation

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 389
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final addTransition$animation_core_release(Landroidx/compose/animation/core/Transition;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "*>;)Z"
        }
    .end annotation

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->_transitions:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 384
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final animateTo$animation_core_release(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const v0, -0x59064cff

    .line 426
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(animateTo)427@16681L25,431@16951L655,431@16930L676:Transition.kt#pdpnli"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p3

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    and-int/lit8 v2, p3, 0x70

    if-nez v2, :cond_3

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit8 v2, v1, 0x5b

    const/16 v3, 0x12

    if-ne v2, v3, :cond_5

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 447
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_4

    .line 426
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    const-string v3, "androidx.compose.animation.core.Transition.animateTo (Transition.kt:425)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 427
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_a

    and-int/lit8 v0, v1, 0xe

    and-int/lit8 v2, v1, 0x70

    or-int/2addr v0, v2

    .line 428
    invoke-virtual {p0, p1, p2, v0}, Landroidx/compose/animation/core/Transition;->updateTarget$animation_core_release(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 431
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getUpdateChildrenNeeded$animation_core_release()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    shr-int/lit8 v0, v1, 0x3

    and-int/lit8 v0, v0, 0xe

    const v1, 0x44faf204

    .line 432
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1186
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 1187
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_8

    .line 1188
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_9

    .line 432
    :cond_8
    new-instance v1, Landroidx/compose/animation/core/Transition$animateTo$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/compose/animation/core/Transition$animateTo$1$1;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 1190
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1186
    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    or-int/lit8 v0, v0, 0x40

    .line 432
    invoke-static {p0, v2, p2, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 447
    :cond_b
    :goto_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_c

    goto :goto_5

    :cond_c
    new-instance v0, Landroidx/compose/animation/core/Transition$animateTo$2;

    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/animation/core/Transition$animateTo$2;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_5
    return-void
.end method

.method public final getAnimations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.TransitionAnimationState<**>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 254
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getCurrentState()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/MutableTransitionState;

    .line 204
    invoke-virtual {p0}, Landroidx/compose/animation/core/MutableTransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final getLastSeekedTimeNanos$animation_core_release()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/Transition;->lastSeekedTimeNanos:J

    return-wide v0
.end method

.method public final getPlayTimeNanos()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->playTimeNanos$delegate:Landroidx/compose/runtime/MutableLongState;

    .line 235
    check-cast p0, Landroidx/compose/runtime/LongState;

    .line 1163
    invoke-interface {p0}, Landroidx/compose/runtime/LongState;->getLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSegment()Landroidx/compose/animation/core/Transition$Segment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->segment$delegate:Landroidx/compose/runtime/MutableState;

    .line 220
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1160
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/Transition$Segment;

    return-object p0
.end method

.method public final getTargetState()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/MutableState;

    .line 213
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1157
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getTotalDurationNanos()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->totalDurationNanos$delegate:Landroidx/compose/runtime/State;

    .line 1175
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTransitions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/animation/core/Transition<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->_transitions:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 248
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getUpdateChildrenNeeded$animation_core_release()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->updateChildrenNeeded$delegate:Landroidx/compose/runtime/MutableState;

    .line 239
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1169
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isRunning()Z
    .locals 4

    .line 227
    invoke-direct {p0}, Landroidx/compose/animation/core/Transition;->getStartTimeNanos()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSeeking()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->isSeeking$delegate:Landroidx/compose/runtime/MutableState;

    .line 259
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1172
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final onFrame$animation_core_release(JF)V
    .locals 4

    .line 286
    invoke-direct {p0}, Landroidx/compose/animation/core/Transition;->getStartTimeNanos()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/Transition;->onTransitionStart$animation_core_release(J)V

    :cond_0
    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/Transition;->setUpdateChildrenNeeded$animation_core_release(Z)V

    .line 292
    invoke-direct {p0}, Landroidx/compose/animation/core/Transition;->getStartTimeNanos()J

    move-result-wide v1

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/Transition;->setPlayTimeNanos(J)V

    iget-object p1, p0, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 295
    check-cast p1, Ljava/lang/Iterable;

    .line 1176
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 296
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->isFinished$animation_core_release()Z

    move-result v2

    if-nez v2, :cond_2

    .line 297
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getPlayTimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->onPlayTimeChanged$animation_core_release(JF)V

    .line 300
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->isFinished$animation_core_release()Z

    move-result v1

    if-nez v1, :cond_1

    move p2, v0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/compose/animation/core/Transition;->_transitions:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 304
    check-cast p1, Ljava/lang/Iterable;

    .line 1178
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/core/Transition;

    .line 305
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 306
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getPlayTimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p3}, Landroidx/compose/animation/core/Transition;->onFrame$animation_core_release(JF)V

    .line 308
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move p2, v0

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    .line 313
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->onTransitionEnd$animation_core_release()V

    :cond_7
    return-void
.end method

.method public final onTransitionEnd$animation_core_release()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 325
    invoke-direct {p0, v0, v1}, Landroidx/compose/animation/core/Transition;->setStartTimeNanos(J)V

    .line 326
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/Transition;->setCurrentState$animation_core_release(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 327
    invoke-virtual {p0, v0, v1}, Landroidx/compose/animation/core/Transition;->setPlayTimeNanos(J)V

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/MutableTransitionState;

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/MutableTransitionState;->setRunning$animation_core_release(Z)V

    return-void
.end method

.method public final onTransitionStart$animation_core_release(J)V
    .locals 0

    .line 319
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/core/Transition;->setStartTimeNanos(J)V

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/MutableTransitionState;

    const/4 p1, 0x1

    .line 320
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/MutableTransitionState;->setRunning$animation_core_release(Z)V

    return-void
.end method

.method public final removeAnimation$animation_core_release(Landroidx/compose/animation/core/Transition$DeferredAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<**>;)V"
        }
    .end annotation

    const-string v0, "deferredAnimation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->getData$animation_core_release()Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getAnimation()Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 731
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/Transition;->removeAnimation$animation_core_release(Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    :cond_0
    return-void
.end method

.method public final removeAnimation$animation_core_release(Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.TransitionAnimationState<**>;)V"
        }
    .end annotation

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 394
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeTransition$animation_core_release(Landroidx/compose/animation/core/Transition;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "*>;)Z"
        }
    .end annotation

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->_transitions:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 385
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final seek(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;J)V"
        }
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    .line 355
    invoke-direct {p0, v0, v1}, Landroidx/compose/animation/core/Transition;->setStartTimeNanos(J)V

    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/MutableTransitionState;

    const/4 v1, 0x0

    .line 356
    invoke-virtual {v0, v1}, Landroidx/compose/animation/core/MutableTransitionState;->setRunning$animation_core_release(Z)V

    .line 357
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 359
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/Transition;->setCurrentState$animation_core_release(Ljava/lang/Object;)V

    .line 360
    invoke-virtual {p0, p2}, Landroidx/compose/animation/core/Transition;->setTargetState$animation_core_release(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 361
    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/Transition;->setSeeking$animation_core_release(Z)V

    .line 362
    new-instance v0, Landroidx/compose/animation/core/Transition$SegmentImpl;

    invoke-direct {v0, p1, p2}, Landroidx/compose/animation/core/Transition$SegmentImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/animation/core/Transition$Segment;

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/Transition;->setSegment(Landroidx/compose/animation/core/Transition$Segment;)V

    :cond_1
    iget-object p1, p0, Landroidx/compose/animation/core/Transition;->_transitions:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 365
    check-cast p1, Ljava/lang/Iterable;

    .line 1180
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/Transition;

    const-string v0, "null cannot be cast to non-null type androidx.compose.animation.core.Transition<kotlin.Any>"

    .line 367
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    invoke-virtual {p2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    .line 371
    invoke-virtual {p2}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    .line 369
    invoke-virtual {p2, v0, v1, p3, p4}, Landroidx/compose/animation/core/Transition;->seek(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 378
    check-cast p1, Ljava/lang/Iterable;

    .line 1182
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 379
    invoke-virtual {p2, p3, p4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->seekTo$animation_core_release(J)V

    goto :goto_1

    :cond_4
    iput-wide p3, p0, Landroidx/compose/animation/core/Transition;->lastSeekedTimeNanos:J

    return-void
.end method

.method public final setCurrentState$animation_core_release(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/MutableTransitionState;

    .line 206
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/MutableTransitionState;->setCurrentState$animation_core_release(Ljava/lang/Object;)V

    return-void
.end method

.method public final setLastSeekedTimeNanos$animation_core_release(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/animation/core/Transition;->lastSeekedTimeNanos:J

    return-void
.end method

.method public final setPlayTimeNanos(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->playTimeNanos$delegate:Landroidx/compose/runtime/MutableLongState;

    .line 1164
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/MutableLongState;->setLongValue(J)V

    return-void
.end method

.method public final setSeeking$animation_core_release(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->isSeeking$delegate:Landroidx/compose/runtime/MutableState;

    .line 259
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1173
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTargetState$animation_core_release(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/MutableState;

    .line 1158
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setUpdateChildrenNeeded$animation_core_release(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->updateChildrenNeeded$delegate:Landroidx/compose/runtime/MutableState;

    .line 239
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1170
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateTarget$animation_core_release(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const v0, -0x22cebf19

    .line 401
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(updateTarget):Transition.kt#pdpnli"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p3

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    and-int/lit8 v2, p3, 0x70

    if-nez v2, :cond_3

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit8 v1, v1, 0x5b

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 420
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_5

    .line 401
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    const-string v2, "androidx.compose.animation.core.Transition.updateTarget (Transition.kt:400)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 402
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_8

    .line 405
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 407
    new-instance v0, Landroidx/compose/animation/core/Transition$SegmentImpl;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/compose/animation/core/Transition$SegmentImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/animation/core/Transition$Segment;

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/Transition;->setSegment(Landroidx/compose/animation/core/Transition$Segment;)V

    .line 408
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/Transition;->setCurrentState$animation_core_release(Ljava/lang/Object;)V

    .line 409
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/Transition;->setTargetState$animation_core_release(Ljava/lang/Object;)V

    .line 410
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 411
    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/Transition;->setUpdateChildrenNeeded$animation_core_release(Z)V

    :cond_7
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 417
    check-cast v0, Ljava/lang/Iterable;

    .line 1184
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 417
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->resetAnimation$animation_core_release()V

    goto :goto_4

    .line 1185
    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 420
    :cond_9
    :goto_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Landroidx/compose/animation/core/Transition$updateTarget$2;

    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/animation/core/Transition$updateTarget$2;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_6
    return-void
.end method

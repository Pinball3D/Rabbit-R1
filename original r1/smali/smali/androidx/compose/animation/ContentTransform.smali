.class public final Landroidx/compose/animation/ContentTransform;
.super Ljava/lang/Object;
.source "AnimatedContent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/ContentTransform\n+ 2 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n*L\n1#1,862:1\n75#2:863\n108#2,2:864\n*S KotlinDebug\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/ContentTransform\n*L\n200#1:863\n200#1:864,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0007\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR(\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\t@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R+\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00078F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/animation/ContentTransform;",
        "",
        "targetContentEnter",
        "Landroidx/compose/animation/EnterTransition;",
        "initialContentExit",
        "Landroidx/compose/animation/ExitTransition;",
        "targetContentZIndex",
        "",
        "sizeTransform",
        "Landroidx/compose/animation/SizeTransform;",
        "(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;FLandroidx/compose/animation/SizeTransform;)V",
        "getInitialContentExit",
        "()Landroidx/compose/animation/ExitTransition;",
        "<set-?>",
        "getSizeTransform",
        "()Landroidx/compose/animation/SizeTransform;",
        "setSizeTransform$animation_release",
        "(Landroidx/compose/animation/SizeTransform;)V",
        "getTargetContentEnter",
        "()Landroidx/compose/animation/EnterTransition;",
        "getTargetContentZIndex",
        "()F",
        "setTargetContentZIndex",
        "(F)V",
        "targetContentZIndex$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "animation_release"
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
.field private final initialContentExit:Landroidx/compose/animation/ExitTransition;

.field private sizeTransform:Landroidx/compose/animation/SizeTransform;

.field private final targetContentEnter:Landroidx/compose/animation/EnterTransition;

.field private final targetContentZIndex$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;FLandroidx/compose/animation/SizeTransform;)V
    .locals 1

    const-string/jumbo v0, "targetContentEnter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialContentExit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/ContentTransform;->targetContentEnter:Landroidx/compose/animation/EnterTransition;

    iput-object p2, p0, Landroidx/compose/animation/ContentTransform;->initialContentExit:Landroidx/compose/animation/ExitTransition;

    .line 200
    invoke-static {p3}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/ContentTransform;->targetContentZIndex$delegate:Landroidx/compose/runtime/MutableFloatState;

    iput-object p4, p0, Landroidx/compose/animation/ContentTransform;->sizeTransform:Landroidx/compose/animation/SizeTransform;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;FLandroidx/compose/animation/SizeTransform;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    const/4 p5, 0x3

    const/4 p6, 0x0

    .line 193
    invoke-static {p4, p6, p5, p6}, Landroidx/compose/animation/AnimatedContentKt;->SizeTransform$default(ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Landroidx/compose/animation/SizeTransform;

    move-result-object p4

    .line 189
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/animation/ContentTransform;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;FLandroidx/compose/animation/SizeTransform;)V

    return-void
.end method


# virtual methods
.method public final getInitialContentExit()Landroidx/compose/animation/ExitTransition;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ContentTransform;->initialContentExit:Landroidx/compose/animation/ExitTransition;

    return-object p0
.end method

.method public final getSizeTransform()Landroidx/compose/animation/SizeTransform;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ContentTransform;->sizeTransform:Landroidx/compose/animation/SizeTransform;

    return-object p0
.end method

.method public final getTargetContentEnter()Landroidx/compose/animation/EnterTransition;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ContentTransform;->targetContentEnter:Landroidx/compose/animation/EnterTransition;

    return-object p0
.end method

.method public final getTargetContentZIndex()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ContentTransform;->targetContentZIndex$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 200
    check-cast p0, Landroidx/compose/runtime/FloatState;

    .line 863
    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public final setSizeTransform$animation_release(Landroidx/compose/animation/SizeTransform;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/ContentTransform;->sizeTransform:Landroidx/compose/animation/SizeTransform;

    return-void
.end method

.method public final setTargetContentZIndex(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ContentTransform;->targetContentZIndex$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 864
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

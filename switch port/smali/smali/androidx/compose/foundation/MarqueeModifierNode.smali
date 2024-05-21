.class final Landroidx/compose/foundation/MarqueeModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "BasicMarquee.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/focus/FocusEventModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/MarqueeModifierNode$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicMarquee.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicMarquee.kt\nandroidx/compose/foundation/MarqueeModifierNode\n+ 2 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 4 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,497:1\n75#2:498\n108#2,2:499\n75#2:501\n108#2,2:502\n81#3:504\n107#3,2:505\n81#3:507\n107#3,2:508\n81#3:510\n107#3,2:511\n81#3:513\n214#4,8:514\n261#4,8:522\n115#4,9:530\n269#4,3:539\n*S KotlinDebug\n*F\n+ 1 BasicMarquee.kt\nandroidx/compose/foundation/MarqueeModifierNode\n*L\n205#1:498\n205#1:499,2\n206#1:501\n206#1:502,2\n207#1:504\n207#1:505,2\n208#1:507\n208#1:508,2\n209#1:510\n209#1:511,2\n217#1:513\n311#1:514,8\n311#1:522,8\n321#1:530,9\n311#1:539,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B8\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\u0008\u00108\u001a\u000209H\u0016J\u0010\u0010:\u001a\u0002092\u0006\u0010;\u001a\u00020<H\u0016J\u0008\u0010=\u001a\u000209H\u0002J\u0011\u0010>\u001a\u000209H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010?JC\u0010@\u001a\u0002092\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010BJ\u000c\u0010C\u001a\u000209*\u00020DH\u0016J\u001c\u0010E\u001a\u00020\u0006*\u00020F2\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020\u0006H\u0016J\u001c\u0010J\u001a\u00020\u0006*\u00020F2\u0006\u0010G\u001a\u00020H2\u0006\u0010K\u001a\u00020\u0006H\u0016J)\u0010L\u001a\u00020M*\u00020N2\u0006\u0010G\u001a\u00020O2\u0006\u0010P\u001a\u00020QH\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008R\u0010SJ\u001c\u0010T\u001a\u00020\u0006*\u00020F2\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020\u0006H\u0016J\u001c\u0010U\u001a\u00020\u0006*\u00020F2\u0006\u0010G\u001a\u00020H2\u0006\u0010K\u001a\u00020\u0006H\u0016R4\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00088F@FX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R+\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0012\"\u0004\u0008\u0019\u0010\u0014R+\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u001b\u001a\u0004\u0008\u001d\u0010\u0012\"\u0004\u0008\u001e\u0010\u0014R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u00020!8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R+\u0010%\u001a\u00020$2\u0006\u0010\u0010\u001a\u00020$8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0016\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010+\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020-0,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000c8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00082\u0010\u0016\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u001b\u00103\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00084\u0010\u0012R\u0019\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u00107\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006V"
    }
    d2 = {
        "Landroidx/compose/foundation/MarqueeModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/ui/node/DrawModifierNode;",
        "Landroidx/compose/ui/focus/FocusEventModifierNode;",
        "iterations",
        "",
        "animationMode",
        "Landroidx/compose/foundation/MarqueeAnimationMode;",
        "delayMillis",
        "initialDelayMillis",
        "spacing",
        "Landroidx/compose/foundation/MarqueeSpacing;",
        "velocity",
        "Landroidx/compose/ui/unit/Dp;",
        "(IIIILandroidx/compose/foundation/MarqueeSpacing;FLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "<set-?>",
        "getAnimationMode-ZbEOnfQ",
        "()I",
        "setAnimationMode-97h66l8",
        "(I)V",
        "animationMode$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "containerWidth",
        "getContainerWidth",
        "setContainerWidth",
        "containerWidth$delegate",
        "Landroidx/compose/runtime/MutableIntState;",
        "contentWidth",
        "getContentWidth",
        "setContentWidth",
        "contentWidth$delegate",
        "direction",
        "",
        "getDirection",
        "()F",
        "",
        "hasFocus",
        "getHasFocus",
        "()Z",
        "setHasFocus",
        "(Z)V",
        "hasFocus$delegate",
        "offset",
        "Landroidx/compose/animation/core/Animatable;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "getSpacing",
        "()Landroidx/compose/foundation/MarqueeSpacing;",
        "setSpacing",
        "(Landroidx/compose/foundation/MarqueeSpacing;)V",
        "spacing$delegate",
        "spacingPx",
        "getSpacingPx",
        "spacingPx$delegate",
        "Landroidx/compose/runtime/State;",
        "F",
        "onAttach",
        "",
        "onFocusEvent",
        "focusState",
        "Landroidx/compose/ui/focus/FocusState;",
        "restartAnimation",
        "runAnimation",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "update",
        "update-lWfNwf4",
        "(IIIILandroidx/compose/foundation/MarqueeSpacing;F)V",
        "draw",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "maxIntrinsicHeight",
        "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "width",
        "maxIntrinsicWidth",
        "height",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "minIntrinsicHeight",
        "minIntrinsicWidth",
        "foundation_release"
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
.field private final animationMode$delegate:Landroidx/compose/runtime/MutableState;

.field private final containerWidth$delegate:Landroidx/compose/runtime/MutableIntState;

.field private final contentWidth$delegate:Landroidx/compose/runtime/MutableIntState;

.field private delayMillis:I

.field private final hasFocus$delegate:Landroidx/compose/runtime/MutableState;

.field private initialDelayMillis:I

.field private iterations:I

.field private final offset:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private final spacing$delegate:Landroidx/compose/runtime/MutableState;

.field private final spacingPx$delegate:Landroidx/compose/runtime/State;

.field private velocity:F


# direct methods
.method private constructor <init>(IIIILandroidx/compose/foundation/MarqueeSpacing;F)V
    .locals 1

    const-string/jumbo v0, "spacing"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/MarqueeModifierNode;->iterations:I

    iput p3, p0, Landroidx/compose/foundation/MarqueeModifierNode;->delayMillis:I

    iput p4, p0, Landroidx/compose/foundation/MarqueeModifierNode;->initialDelayMillis:I

    iput p6, p0, Landroidx/compose/foundation/MarqueeModifierNode;->velocity:F

    const/4 p1, 0x0

    .line 205
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/foundation/MarqueeModifierNode;->contentWidth$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 206
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/foundation/MarqueeModifierNode;->containerWidth$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 207
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-static {p1, p3, p4, p3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/MarqueeModifierNode;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    .line 208
    invoke-static {p5, p3, p4, p3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/MarqueeModifierNode;->spacing$delegate:Landroidx/compose/runtime/MutableState;

    .line 209
    invoke-static {p2}, Landroidx/compose/foundation/MarqueeAnimationMode;->box-impl(I)Landroidx/compose/foundation/MarqueeAnimationMode;

    move-result-object p1

    invoke-static {p1, p3, p4, p3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/MarqueeModifierNode;->animationMode$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    .line 211
    invoke-static {p1, p1, p4, p3}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/MarqueeModifierNode;->offset:Landroidx/compose/animation/core/Animatable;

    .line 217
    new-instance p1, Landroidx/compose/foundation/MarqueeModifierNode$spacingPx$2;

    invoke-direct {p1, p5, p0}, Landroidx/compose/foundation/MarqueeModifierNode$spacingPx$2;-><init>(Landroidx/compose/foundation/MarqueeSpacing;Landroidx/compose/foundation/MarqueeModifierNode;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/MarqueeModifierNode;->spacingPx$delegate:Landroidx/compose/runtime/State;

    return-void
.end method

.method public synthetic constructor <init>(IIIILandroidx/compose/foundation/MarqueeSpacing;FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/MarqueeModifierNode;-><init>(IIIILandroidx/compose/foundation/MarqueeSpacing;F)V

    return-void
.end method

.method public static final synthetic access$getContainerWidth(Landroidx/compose/foundation/MarqueeModifierNode;)I
    .locals 0

    .line 193
    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getContainerWidth()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getContentWidth(Landroidx/compose/foundation/MarqueeModifierNode;)I
    .locals 0

    .line 193
    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getContentWidth()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getDelayMillis$p(Landroidx/compose/foundation/MarqueeModifierNode;)I
    .locals 0

    .line 193
    iget p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->delayMillis:I

    return p0
.end method

.method public static final synthetic access$getDirection(Landroidx/compose/foundation/MarqueeModifierNode;)F
    .locals 0

    .line 193
    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getDirection()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getHasFocus(Landroidx/compose/foundation/MarqueeModifierNode;)Z
    .locals 0

    .line 193
    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getHasFocus()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getInitialDelayMillis$p(Landroidx/compose/foundation/MarqueeModifierNode;)I
    .locals 0

    .line 193
    iget p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->initialDelayMillis:I

    return p0
.end method

.method public static final synthetic access$getIterations$p(Landroidx/compose/foundation/MarqueeModifierNode;)I
    .locals 0

    .line 193
    iget p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->iterations:I

    return p0
.end method

.method public static final synthetic access$getOffset$p(Landroidx/compose/foundation/MarqueeModifierNode;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 193
    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->offset:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method public static final synthetic access$getSpacingPx(Landroidx/compose/foundation/MarqueeModifierNode;)I
    .locals 0

    .line 193
    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getSpacingPx()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getVelocity$p(Landroidx/compose/foundation/MarqueeModifierNode;)F
    .locals 0

    .line 193
    iget p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->velocity:F

    return p0
.end method

.method public static final synthetic access$runAnimation(Landroidx/compose/foundation/MarqueeModifierNode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Landroidx/compose/foundation/MarqueeModifierNode;->runAnimation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getContainerWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->containerWidth$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 206
    check-cast p0, Landroidx/compose/runtime/IntState;

    .line 501
    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method private final getContentWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->contentWidth$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 205
    check-cast p0, Landroidx/compose/runtime/IntState;

    .line 498
    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method private final getDirection()F
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->velocity:F

    .line 213
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutDirection(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    sget-object v1, Landroidx/compose/foundation/MarqueeModifierNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 215
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    int-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method private final getHasFocus()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    .line 207
    check-cast p0, Landroidx/compose/runtime/State;

    .line 504
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final getSpacingPx()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->spacingPx$delegate:Landroidx/compose/runtime/State;

    .line 513
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final restartAnimation()V
    .locals 7

    .line 329
    invoke-virtual {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroidx/compose/foundation/MarqueeModifierNode$restartAnimation$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroidx/compose/foundation/MarqueeModifierNode$restartAnimation$1;-><init>(Landroidx/compose/foundation/MarqueeModifierNode;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final runAnimation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->iterations:I

    if-gtz v0, :cond_0

    .line 339
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 345
    :cond_0
    sget-object v0, Landroidx/compose/foundation/FixedMotionDurationScale;->INSTANCE:Landroidx/compose/foundation/FixedMotionDurationScale;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2;-><init>(Landroidx/compose/foundation/MarqueeModifierNode;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setContainerWidth(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->containerWidth$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 502
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method private final setContentWidth(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->contentWidth$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 499
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method private final setHasFocus(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    .line 207
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 505
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 12

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->offset:Landroidx/compose/animation/core/Animatable;

    .line 297
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getDirection()F

    move-result v1

    mul-float v3, v0, v1

    .line 298
    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getDirection()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->offset:Landroidx/compose/animation/core/Animatable;

    .line 299
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getContentWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->offset:Landroidx/compose/animation/core/Animatable;

    .line 300
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getContainerWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v4

    .line 302
    :goto_1
    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getDirection()F

    move-result v5

    cmpg-float v5, v5, v1

    if-nez v5, :cond_2

    iget-object v5, p0, Landroidx/compose/foundation/MarqueeModifierNode;->offset:Landroidx/compose/animation/core/Animatable;

    .line 303
    invoke-virtual {v5}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getContentWidth()I

    move-result v6

    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getSpacingPx()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getContainerWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    goto :goto_2

    :cond_2
    iget-object v5, p0, Landroidx/compose/foundation/MarqueeModifierNode;->offset:Landroidx/compose/animation/core/Animatable;

    .line 304
    invoke-virtual {v5}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getSpacingPx()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    :goto_2
    move v8, v2

    goto :goto_3

    :cond_3
    move v8, v4

    .line 306
    :goto_3
    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getDirection()F

    move-result v2

    cmpg-float v1, v2, v1

    if-nez v1, :cond_4

    .line 307
    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getContentWidth()I

    move-result v1

    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getSpacingPx()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_4

    .line 308
    :cond_4
    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getContentWidth()I

    move-result v1

    neg-int v1, v1

    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getSpacingPx()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_4
    int-to-float v1, v1

    .line 311
    move-object v9, p1

    check-cast v9, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getContainerWidth()I

    move-result p0

    int-to-float p0, p0

    add-float v5, v3, p0

    const/4 v4, 0x0

    .line 518
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v6

    .line 519
    sget-object p0, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ClipOp$Companion;->getIntersect-rtfAjoo()I

    move-result v7

    .line 522
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p0

    .line 526
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v10

    .line 527
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 528
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v2

    .line 521
    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->clipRect-N_I0leg(FFFFI)V

    if-eqz v0, :cond_5

    .line 318
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    :cond_5
    if-eqz v8, :cond_6

    .line 535
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    .line 322
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 537
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p1

    neg-float v0, v1

    const/high16 v1, -0x80000000

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    .line 539
    :cond_6
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 540
    invoke-interface {p0, v10, v11}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    return-void
.end method

.method public final getAnimationMode-ZbEOnfQ()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->animationMode$delegate:Landroidx/compose/runtime/MutableState;

    .line 209
    check-cast p0, Landroidx/compose/runtime/State;

    .line 510
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/MarqueeAnimationMode;

    invoke-virtual {p0}, Landroidx/compose/foundation/MarqueeAnimationMode;->unbox-impl()I

    move-result p0

    return p0
.end method

.method public final getSpacing()Landroidx/compose/foundation/MarqueeSpacing;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->spacing$delegate:Landroidx/compose/runtime/MutableState;

    .line 208
    check-cast p0, Landroidx/compose/runtime/State;

    .line 507
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/MarqueeSpacing;

    return-object p0
.end method

.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "measurable"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7fffffff

    .line 294
    invoke-interface {p2, p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result p0

    return p0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "measurable"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result p0

    return p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 9

    const-string v0, "$this$measure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    const/4 v8, 0x0

    move-wide v1, p3

    .line 260
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v0

    .line 261
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    .line 262
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    invoke-static {p3, p4, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result p3

    invoke-direct {p0, p3}, Landroidx/compose/foundation/MarqueeModifierNode;->setContainerWidth(I)V

    .line 263
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p3

    invoke-direct {p0, p3}, Landroidx/compose/foundation/MarqueeModifierNode;->setContentWidth(I)V

    .line 264
    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getContainerWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    new-instance p3, Landroidx/compose/foundation/MarqueeModifierNode$measure$1;

    invoke-direct {p3, p2, p0}, Landroidx/compose/foundation/MarqueeModifierNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/MarqueeModifierNode;)V

    move-object v4, p3

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "measurable"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7fffffff

    .line 288
    invoke-interface {p2, p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result p0

    return p0
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "measurable"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onAttach()V
    .locals 0

    .line 224
    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->restartAnimation()V

    return-void
.end method

.method public onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V
    .locals 1

    const-string v0, "focusState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->getHasFocus()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/MarqueeModifierNode;->setHasFocus(Z)V

    return-void
.end method

.method public final setAnimationMode-97h66l8(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->animationMode$delegate:Landroidx/compose/runtime/MutableState;

    .line 209
    invoke-static {p1}, Landroidx/compose/foundation/MarqueeAnimationMode;->box-impl(I)Landroidx/compose/foundation/MarqueeAnimationMode;

    move-result-object p1

    .line 511
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setSpacing(Landroidx/compose/foundation/MarqueeSpacing;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode;->spacing$delegate:Landroidx/compose/runtime/MutableState;

    .line 508
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final update-lWfNwf4(IIIILandroidx/compose/foundation/MarqueeSpacing;F)V
    .locals 1

    const-string/jumbo v0, "spacing"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, p5}, Landroidx/compose/foundation/MarqueeModifierNode;->setSpacing(Landroidx/compose/foundation/MarqueeSpacing;)V

    .line 236
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/MarqueeModifierNode;->setAnimationMode-97h66l8(I)V

    iget p2, p0, Landroidx/compose/foundation/MarqueeModifierNode;->iterations:I

    if-ne p2, p1, :cond_0

    iget p2, p0, Landroidx/compose/foundation/MarqueeModifierNode;->delayMillis:I

    if-ne p2, p3, :cond_0

    iget p2, p0, Landroidx/compose/foundation/MarqueeModifierNode;->initialDelayMillis:I

    if-ne p2, p4, :cond_0

    iget p2, p0, Landroidx/compose/foundation/MarqueeModifierNode;->velocity:F

    .line 242
    invoke-static {p2, p6}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iput p1, p0, Landroidx/compose/foundation/MarqueeModifierNode;->iterations:I

    iput p3, p0, Landroidx/compose/foundation/MarqueeModifierNode;->delayMillis:I

    iput p4, p0, Landroidx/compose/foundation/MarqueeModifierNode;->initialDelayMillis:I

    iput p6, p0, Landroidx/compose/foundation/MarqueeModifierNode;->velocity:F

    .line 248
    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->restartAnimation()V

    :cond_1
    return-void
.end method

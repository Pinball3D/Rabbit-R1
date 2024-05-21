.class final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"

# interfaces
.implements Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;
.implements Landroidx/compose/ui/layout/MeasureScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IntermediateMeasureScopeImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003JH\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'2\u0014\u0008\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\'0*2\u0017\u0010,\u001a\u0013\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020/0-\u00a2\u0006\u0002\u0008\u001cH\u0096\u0001J\u0018\u00100\u001a\u0008\u0012\u0004\u0012\u000202012\u0008\u00103\u001a\u0004\u0018\u000104H\u0016J\u001a\u00105\u001a\u00020\'*\u000206H\u0097\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00087\u00108J\u001a\u00105\u001a\u00020\'*\u000209H\u0097\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008:\u0010;J\u001a\u0010<\u001a\u000206*\u000209H\u0097\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010>J\u001d\u0010<\u001a\u000206*\u00020\u0005H\u0097\u0001\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u0010@J\u001d\u0010<\u001a\u000206*\u00020\'H\u0097\u0001\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u0010AJ\u001a\u0010B\u001a\u00020C*\u00020DH\u0097\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008E\u0010FJ\u001a\u0010G\u001a\u00020\u0005*\u000206H\u0097\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008H\u0010@J\u001a\u0010G\u001a\u00020\u0005*\u000209H\u0097\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008I\u0010>J\r\u0010J\u001a\u00020K*\u00020LH\u0097\u0001J\u001a\u0010M\u001a\u00020D*\u00020CH\u0097\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008N\u0010FJ\u001a\u0010O\u001a\u000209*\u000206H\u0097\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008P\u0010QJ\u001d\u0010O\u001a\u000209*\u00020\u0005H\u0097\u0001\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008R\u0010QJ\u001d\u0010O\u001a\u000209*\u00020\'H\u0097\u0001\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008R\u0010SR\u0014\u0010\u0004\u001a\u00020\u00058\u0016X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u00058\u0016X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u000b8WX\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000cR\u0012\u0010\r\u001a\u00020\u000eX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R%\u0010\u0011\u001a\u00020\u0012X\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R4\u0010\u0018\u001a\u0019\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u001b0\u0019\u00a2\u0006\u0002\u0008\u001cX\u0096.\u00f8\u0001\u0000\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R%\u0010!\u001a\u00020\"X\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008#\u0010\u0014\"\u0004\u0008$\u0010\u0016\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006T"
    }
    d2 = {
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;",
        "Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V",
        "density",
        "",
        "getDensity",
        "()F",
        "fontScale",
        "getFontScale",
        "isLookingAhead",
        "",
        "()Z",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "lookaheadConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "getLookaheadConstraints-msEJaDk",
        "()J",
        "setLookaheadConstraints-BRTryo0",
        "(J)V",
        "J",
        "lookaheadMeasurePolicy",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Lkotlin/ExtensionFunctionType;",
        "getLookaheadMeasurePolicy",
        "()Lkotlin/jvm/functions/Function2;",
        "setLookaheadMeasurePolicy",
        "(Lkotlin/jvm/functions/Function2;)V",
        "lookaheadSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "getLookaheadSize-YbymL2g",
        "setLookaheadSize-ozmzZPI",
        "layout",
        "width",
        "",
        "height",
        "alignmentLines",
        "",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "placementBlock",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "measurablesForSlot",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "slotId",
        "",
        "roundToPx",
        "Landroidx/compose/ui/unit/Dp;",
        "roundToPx-0680j_4",
        "(F)I",
        "Landroidx/compose/ui/unit/TextUnit;",
        "roundToPx--R2X_6o",
        "(J)I",
        "toDp",
        "toDp-GaN1DYA",
        "(J)F",
        "toDp-u2uoSUM",
        "(F)F",
        "(I)F",
        "toDpSize",
        "Landroidx/compose/ui/unit/DpSize;",
        "Landroidx/compose/ui/geometry/Size;",
        "toDpSize-k-rfVVM",
        "(J)J",
        "toPx",
        "toPx-0680j_4",
        "toPx--R2X_6o",
        "toRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "Landroidx/compose/ui/unit/DpRect;",
        "toSize",
        "toSize-XkaWNTQ",
        "toSp",
        "toSp-0xMU5do",
        "(F)J",
        "toSp-kPz2Gy4",
        "(I)J",
        "ui_release"
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
.field private final synthetic $$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

.field private lookaheadConstraints:J

.field public lookaheadMeasurePolicy:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation
.end field

.field private lookaheadSize:J

.field final synthetic this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$getScope$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    .line 1026
    sget-object p1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->lookaheadSize:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    .line 1029
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->lookaheadConstraints:J

    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->getDensity()F

    move-result p0

    return p0
.end method

.method public getFontScale()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->getFontScale()F

    move-result p0

    return p0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    return-object p0
.end method

.method public getLookaheadConstraints-msEJaDk()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->lookaheadConstraints:J

    return-wide v0
.end method

.method public getLookaheadMeasurePolicy()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->lookaheadMeasurePolicy:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "lookaheadMeasurePolicy"

    .line 1027
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLookaheadSize-YbymL2g()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->lookaheadSize:J

    return-wide v0
.end method

.method public isLookingAhead()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->isLookingAhead()Z

    move-result p0

    return p0
.end method

.method public layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    const-string v0, "alignmentLines"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementBlock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public measurablesForSlot(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 1020
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$getSlotIdToNode$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildMeasurables$ui_release()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public roundToPx--R2X_6o(J)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->roundToPx--R2X_6o(J)I

    move-result p0

    return p0
.end method

.method public roundToPx-0680j_4(F)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->roundToPx-0680j_4(F)I

    move-result p0

    return p0
.end method

.method public setLookaheadConstraints-BRTryo0(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->lookaheadConstraints:J

    return-void
.end method

.method public setLookaheadMeasurePolicy(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->lookaheadMeasurePolicy:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public setLookaheadSize-ozmzZPI(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->lookaheadSize:J

    return-void
.end method

.method public toDp-GaN1DYA(J)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->toDp-GaN1DYA(J)F

    move-result p0

    return p0
.end method

.method public toDp-u2uoSUM(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->toDp-u2uoSUM(F)F

    move-result p0

    return p0
.end method

.method public toDp-u2uoSUM(I)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->toDp-u2uoSUM(I)F

    move-result p0

    return p0
.end method

.method public toDpSize-k-rfVVM(J)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->toDpSize-k-rfVVM(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public toPx--R2X_6o(J)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->toPx--R2X_6o(J)F

    move-result p0

    return p0
.end method

.method public toPx-0680j_4(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->toPx-0680j_4(F)F

    move-result p0

    return p0
.end method

.method public toRect(Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->toRect(Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public toSize-XkaWNTQ(J)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->toSize-XkaWNTQ(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public toSp-0xMU5do(F)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->toSp-0xMU5do(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public toSp-kPz2Gy4(F)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->toSp-kPz2Gy4(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public toSp-kPz2Gy4(I)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->toSp-kPz2Gy4(I)J

    move-result-wide p0

    return-wide p0
.end method

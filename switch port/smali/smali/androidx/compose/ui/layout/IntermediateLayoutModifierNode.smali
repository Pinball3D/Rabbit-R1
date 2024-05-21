.class public final Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "IntermediateLayoutModifierNode.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasurablePlaceable;,
        Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntermediateLayoutModifierNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntermediateLayoutModifierNode.kt\nandroidx/compose/ui/layout/IntermediateLayoutModifierNode\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,333:1\n88#2:334\n230#3,5:335\n58#3:340\n59#3,8:342\n383#3,6:350\n393#3,2:357\n395#3,8:362\n403#3,9:373\n412#3,8:385\n68#3,7:393\n1#4:341\n261#5:356\n234#6,3:359\n237#6,3:382\n1182#7:370\n1161#7,2:371\n*S KotlinDebug\n*F\n+ 1 IntermediateLayoutModifierNode.kt\nandroidx/compose/ui/layout/IntermediateLayoutModifierNode\n*L\n101#1:334\n101#1:335,5\n101#1:340\n101#1:342,8\n101#1:350,6\n101#1:357,2\n101#1:362,8\n101#1:373,9\n101#1:385,8\n101#1:393,7\n101#1:341\n101#1:356\n101#1:359,3\n101#1:382,3\n101#1:370\n101#1:371,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u000289BK\u0012A\u0010\u0003\u001a=\u0012\u0004\u0012\u00020\u0005\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0004\u00a2\u0006\u0002\u0008\r\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010 \u001a\u00020!H\u0016J7\u0010\"\u001a\u00020\u000c*\u00020#2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010$\u001a\u00020%2\u0006\u0010\u001c\u001a\u00020\n\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\'J!\u0010(\u001a\u00020)*\u00020*2\u0006\u0010\t\u001a\u00020+2\u0006\u0010,\u001a\u00020)H\u0000\u00a2\u0006\u0002\u0008-J!\u0010.\u001a\u00020)*\u00020*2\u0006\u0010\t\u001a\u00020+2\u0006\u0010/\u001a\u00020)H\u0000\u00a2\u0006\u0002\u00080J)\u00101\u001a\u00020\u000c*\u00020#2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00082\u00103J!\u00104\u001a\u00020)*\u00020*2\u0006\u0010\t\u001a\u00020+2\u0006\u0010,\u001a\u00020)H\u0000\u00a2\u0006\u0002\u00085J!\u00106\u001a\u00020)*\u00020*2\u0006\u0010\t\u001a\u00020+2\u0006\u0010/\u001a\u00020)H\u0000\u00a2\u0006\u0002\u00087R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0018\u00010\u0012R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00060\u0014R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0002\n\u0000RX\u0010\u0003\u001a=\u0012\u0004\u0012\u00020\u0005\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0004\u00a2\u0006\u0002\u0008\rX\u0080\u000e\u00f8\u0001\u0000\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010\u000e\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006:"
    }
    d2 = {
        "Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "measureBlock",
        "Lkotlin/Function3;",
        "Landroidx/compose/ui/layout/IntermediateMeasureScope;",
        "Landroidx/compose/ui/layout/Measurable;",
        "Lkotlin/ParameterName;",
        "name",
        "measurable",
        "Landroidx/compose/ui/unit/Constraints;",
        "constraints",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function3;)V",
        "closestLookaheadScope",
        "Landroidx/compose/ui/layout/LookaheadScope;",
        "intermediateMeasurable",
        "Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasurablePlaceable;",
        "intermediateMeasureScope",
        "Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;",
        "isIntermediateChangeActive",
        "",
        "()Z",
        "setIntermediateChangeActive",
        "(Z)V",
        "localLookaheadScope",
        "Landroidx/compose/ui/layout/LookaheadScopeImpl;",
        "lookaheadConstraints",
        "getMeasureBlock$ui_release",
        "()Lkotlin/jvm/functions/Function3;",
        "setMeasureBlock$ui_release",
        "onAttach",
        "",
        "intermediateMeasure",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "lookaheadSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "intermediateMeasure-Te-uZzU",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;JJJ)Landroidx/compose/ui/layout/MeasureResult;",
        "maxIntermediateIntrinsicHeight",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "width",
        "maxIntermediateIntrinsicHeight$ui_release",
        "maxIntermediateIntrinsicWidth",
        "height",
        "maxIntermediateIntrinsicWidth$ui_release",
        "measure",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "minIntermediateIntrinsicHeight",
        "minIntermediateIntrinsicHeight$ui_release",
        "minIntermediateIntrinsicWidth",
        "minIntermediateIntrinsicWidth$ui_release",
        "IntermediateMeasurablePlaceable",
        "IntermediateMeasureScopeImpl",
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
.field private closestLookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

.field private intermediateMeasurable:Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasurablePlaceable;

.field private final intermediateMeasureScope:Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;

.field private isIntermediateChangeActive:Z

.field private final localLookaheadScope:Landroidx/compose/ui/layout/LookaheadScopeImpl;

.field private lookaheadConstraints:Landroidx/compose/ui/unit/Constraints;

.field private measureBlock:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntermediateMeasureScope;",
            "-",
            "Landroidx/compose/ui/layout/Measurable;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntermediateMeasureScope;",
            "-",
            "Landroidx/compose/ui/layout/Measurable;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "measureBlock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->measureBlock:Lkotlin/jvm/functions/Function3;

    .line 54
    new-instance p1, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;

    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;-><init>(Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->intermediateMeasureScope:Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;

    .line 58
    new-instance p1, Landroidx/compose/ui/layout/LookaheadScopeImpl;

    new-instance v0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$localLookaheadScope$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$localLookaheadScope$1;-><init>(Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0}, Landroidx/compose/ui/layout/LookaheadScopeImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->localLookaheadScope:Landroidx/compose/ui/layout/LookaheadScopeImpl;

    .line 66
    check-cast p1, Landroidx/compose/ui/layout/LookaheadScope;

    iput-object p1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->closestLookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->isIntermediateChangeActive:Z

    return-void
.end method

.method public static final synthetic access$getClosestLookaheadScope$p(Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;)Landroidx/compose/ui/layout/LookaheadScope;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->closestLookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    return-object p0
.end method

.method public static final synthetic access$getIntermediateMeasureScope$p(Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;)Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->intermediateMeasureScope:Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;

    return-object p0
.end method

.method public static final synthetic access$getLookaheadConstraints$p(Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;)Landroidx/compose/ui/unit/Constraints;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->lookaheadConstraints:Landroidx/compose/ui/unit/Constraints;

    return-object p0
.end method


# virtual methods
.method public final getMeasureBlock$ui_release()Lkotlin/jvm/functions/Function3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/ui/layout/IntermediateMeasureScope;",
            "Landroidx/compose/ui/layout/Measurable;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->measureBlock:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public final intermediateMeasure-Te-uZzU(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;JJJ)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    const-string v0, "$this$intermediateMeasure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "measurable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->intermediateMeasureScope:Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;

    .line 134
    invoke-virtual {p1, p5, p6}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;->setLookaheadSize-ozmzZPI(J)V

    .line 135
    invoke-static {p7, p8}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->lookaheadConstraints:Landroidx/compose/ui/unit/Constraints;

    iget-object p1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->intermediateMeasurable:Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasurablePlaceable;

    if-nez p1, :cond_0

    .line 137
    new-instance p1, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasurablePlaceable;

    invoke-direct {p1, p0, p2}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasurablePlaceable;-><init>(Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;Landroidx/compose/ui/layout/Measurable;)V

    :cond_0
    iput-object p1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->intermediateMeasurable:Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasurablePlaceable;

    .line 139
    invoke-virtual {p1, p2}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasurablePlaceable;->setWrappedMeasurable(Landroidx/compose/ui/layout/Measurable;)V

    iget-object p2, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->measureBlock:Lkotlin/jvm/functions/Function3;

    iget-object p0, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->intermediateMeasureScope:Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$IntermediateMeasureScopeImpl;

    .line 141
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object p3

    invoke-interface {p2, p0, p1, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/MeasureResult;

    return-object p0
.end method

.method public final isIntermediateChangeActive()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->isIntermediateChangeActive:Z

    return p0
.end method

.method public final maxIntermediateIntrinsicHeight$ui_release(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics;->INSTANCE:Landroidx/compose/ui/node/NodeMeasuringIntrinsics;

    .line 197
    new-instance v1, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$maxIntermediateIntrinsicHeight$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$maxIntermediateIntrinsicHeight$1;-><init>(Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;)V

    check-cast v1, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$MeasureBlock;

    .line 196
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/compose/ui/node/NodeMeasuringIntrinsics;->maxHeight$ui_release(Landroidx/compose/ui/node/NodeMeasuringIntrinsics$MeasureBlock;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p0

    return p0
.end method

.method public final maxIntermediateIntrinsicWidth$ui_release(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget-object v0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics;->INSTANCE:Landroidx/compose/ui/node/NodeMeasuringIntrinsics;

    .line 182
    new-instance v1, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$maxIntermediateIntrinsicWidth$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$maxIntermediateIntrinsicWidth$1;-><init>(Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;)V

    check-cast v1, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$MeasureBlock;

    .line 181
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/compose/ui/node/NodeMeasuringIntrinsics;->maxWidth$ui_release(Landroidx/compose/ui/node/NodeMeasuringIntrinsics$MeasureBlock;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p0

    return p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    const-string p0, "$this$measure"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "measurable"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    new-instance p2, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$measure$1$1;

    invoke-direct {p2, p0}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$measure$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    move-object v4, p2

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final minIntermediateIntrinsicHeight$ui_release(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    sget-object v0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics;->INSTANCE:Landroidx/compose/ui/node/NodeMeasuringIntrinsics;

    .line 167
    new-instance v1, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$minIntermediateIntrinsicHeight$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$minIntermediateIntrinsicHeight$1;-><init>(Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;)V

    check-cast v1, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$MeasureBlock;

    .line 166
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/compose/ui/node/NodeMeasuringIntrinsics;->minHeight$ui_release(Landroidx/compose/ui/node/NodeMeasuringIntrinsics$MeasureBlock;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p0

    return p0
.end method

.method public final minIntermediateIntrinsicWidth$ui_release(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    sget-object v0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics;->INSTANCE:Landroidx/compose/ui/node/NodeMeasuringIntrinsics;

    .line 152
    new-instance v1, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$minIntermediateIntrinsicWidth$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$minIntermediateIntrinsicWidth$1;-><init>(Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;)V

    check-cast v1, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$MeasureBlock;

    .line 151
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/compose/ui/node/NodeMeasuringIntrinsics;->minWidth$ui_release(Landroidx/compose/ui/node/NodeMeasuringIntrinsics$MeasureBlock;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p0

    return p0
.end method

.method public onAttach()V
    .locals 12

    .line 86
    invoke-virtual {p0}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/ui/node/LookaheadDelegate;->getLookaheadLayoutCoordinates()Landroidx/compose/ui/layout/LookaheadLayoutCoordinatesImpl;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_11

    .line 91
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadRoot$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isVirtualLookaheadRoot$ui_release()Z

    move-result v3

    if-ne v3, v1, :cond_1

    .line 95
    new-instance v1, Landroidx/compose/ui/layout/LookaheadScopeImpl;

    .line 92
    new-instance v2, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$onAttach$1;

    invoke-direct {v2, v0}, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode$onAttach$1;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 95
    invoke-direct {v1, v2}, Landroidx/compose/ui/layout/LookaheadScopeImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Landroidx/compose/ui/layout/LookaheadScope;

    goto/16 :goto_7

    .line 101
    :cond_1
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v3, 0x200

    .line 334
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 340
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 342
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    .line 343
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    move-object v5, v2

    :goto_1
    if-eqz v0, :cond_d

    .line 345
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 346
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_b

    :goto_2
    if-eqz v4, :cond_b

    .line 348
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_a

    move-object v7, v2

    move-object v6, v4

    :goto_3
    if-eqz v6, :cond_a

    .line 353
    instance-of v8, v6, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;

    if-eqz v8, :cond_2

    .line 354
    check-cast v6, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;

    move-object v5, v6

    goto :goto_6

    .line 356
    :cond_2
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v3

    if-eqz v8, :cond_9

    .line 355
    instance-of v8, v6, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_9

    .line 358
    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 359
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v9

    :goto_4
    if-eqz v8, :cond_8

    .line 356
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v3

    if-eqz v11, :cond_7

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v1, :cond_3

    move-object v6, v8

    goto :goto_5

    :cond_3
    if-nez v7, :cond_4

    .line 372
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v11, 0x10

    new-array v11, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v7, v11, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v6, :cond_6

    if-eqz v7, :cond_5

    .line 375
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v6, v2

    :cond_6
    if-eqz v7, :cond_7

    .line 378
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_7
    :goto_5
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_4

    :cond_8
    if-ne v10, v1, :cond_9

    goto :goto_3

    .line 390
    :cond_9
    :goto_6
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_3

    .line 393
    :cond_a
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_2

    .line 396
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 397
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto/16 :goto_1

    :cond_c
    move-object v4, v2

    goto/16 :goto_1

    :cond_d
    if-eqz v5, :cond_e

    .line 106
    iget-object v0, v5, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->localLookaheadScope:Landroidx/compose/ui/layout/LookaheadScopeImpl;

    if-nez v0, :cond_f

    :cond_e
    iget-object v0, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->localLookaheadScope:Landroidx/compose/ui/layout/LookaheadScopeImpl;

    :cond_f
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/layout/LookaheadScope;

    :goto_7
    iput-object v1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->closestLookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    return-void

    .line 340
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "visitAncestors called on an unattached node"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setIntermediateChangeActive(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->isIntermediateChangeActive:Z

    return-void
.end method

.method public final setMeasureBlock$ui_release(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntermediateMeasureScope;",
            "-",
            "Landroidx/compose/ui/layout/Measurable;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifierNode;->measureBlock:Lkotlin/jvm/functions/Function3;

    return-void
.end method

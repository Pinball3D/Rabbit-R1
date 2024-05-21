.class final Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProgressIndicator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ProgressIndicatorKt;->LinearProgressIndicator-2cYBFYY(Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $color:J

.field final synthetic $firstLineHead:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $firstLineTail:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $secondLineHead:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $secondLineTail:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $strokeCap:I

.field final synthetic $trackColor:J


# direct methods
.method constructor <init>(JILandroidx/compose/runtime/State;Landroidx/compose/runtime/State;JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;J",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$trackColor:J

    iput p3, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$strokeCap:I

    iput-object p4, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineHead:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineTail:Landroidx/compose/runtime/State;

    iput-wide p6, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$color:J

    iput-object p8, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineHead:Landroidx/compose/runtime/State;

    iput-object p9, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineTail:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 10

    const-string v0, "$this$Canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$trackColor:J

    iget v3, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$strokeCap:I

    .line 168
    invoke-static {p1, v1, v2, v0, v3}, Landroidx/compose/material3/ProgressIndicatorKt;->access$drawLinearIndicatorTrack-AZGd3zU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFI)V

    iget-object v1, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineHead:Landroidx/compose/runtime/State;

    .line 169
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineTail:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v9, 0x0

    cmpl-float v1, v1, v9

    if-lez v1, :cond_0

    iget-object v1, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineHead:Landroidx/compose/runtime/State;

    .line 171
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget-object v1, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineTail:Landroidx/compose/runtime/State;

    .line 172
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iget-wide v5, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$color:J

    iget v8, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$strokeCap:I

    move-object v2, p1

    move v7, v0

    .line 170
    invoke-static/range {v2 .. v8}, Landroidx/compose/material3/ProgressIndicatorKt;->access$drawLinearIndicator-qYKTg0g(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V

    :cond_0
    iget-object v1, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineHead:Landroidx/compose/runtime/State;

    .line 178
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineTail:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v9

    if-lez v1, :cond_1

    iget-object v1, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineHead:Landroidx/compose/runtime/State;

    .line 180
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget-object v1, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineTail:Landroidx/compose/runtime/State;

    .line 181
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iget-wide v5, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$color:J

    iget v8, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$strokeCap:I

    move-object v2, p1

    move v7, v0

    .line 179
    invoke-static/range {v2 .. v8}, Landroidx/compose/material3/ProgressIndicatorKt;->access$drawLinearIndicator-qYKTg0g(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V

    :cond_1
    return-void
.end method

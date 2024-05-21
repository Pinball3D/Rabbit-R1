.class final Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProgressIndicator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-DUhRLBM(FLandroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V
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
.field final synthetic $coercedProgress:F

.field final synthetic $color:J

.field final synthetic $stroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field final synthetic $trackColor:J


# direct methods
.method constructor <init>(FJLandroidx/compose/ui/graphics/drawscope/Stroke;J)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1;->$coercedProgress:F

    iput-wide p2, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1;->$trackColor:J

    iput-object p4, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1;->$stroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iput-wide p5, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1;->$color:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 299
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 7

    const-string v0, "$this$Canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x43870000    # 270.0f

    iget v0, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1;->$coercedProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v3, v0, v1

    iget-wide v0, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1;->$trackColor:J

    iget-object v4, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1;->$stroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 307
    invoke-static {p1, v0, v1, v4}, Landroidx/compose/material3/ProgressIndicatorKt;->access$drawCircularIndicatorTrack-bw27NRU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    iget-wide v4, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1;->$color:J

    iget-object v6, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1;->$stroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    move-object v1, p1

    .line 308
    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/ProgressIndicatorKt;->access$drawDeterminateCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    return-void
.end method

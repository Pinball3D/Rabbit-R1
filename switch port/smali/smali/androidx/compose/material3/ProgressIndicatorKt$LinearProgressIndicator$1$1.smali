.class final Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProgressIndicator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ProgressIndicatorKt;->LinearProgressIndicator-_5eSR-E(FLandroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V
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

.field final synthetic $strokeCap:I

.field final synthetic $trackColor:J


# direct methods
.method constructor <init>(JIFJ)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$trackColor:J

    iput p3, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$strokeCap:I

    iput p4, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$coercedProgress:F

    iput-wide p5, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$color:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 9

    const-string v0, "$this$Canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v7

    iget-wide v0, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$trackColor:J

    iget v2, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$strokeCap:I

    .line 87
    invoke-static {p1, v0, v1, v7, v2}, Landroidx/compose/material3/ProgressIndicatorKt;->access$drawLinearIndicatorTrack-AZGd3zU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFI)V

    const/4 v3, 0x0

    iget v4, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$coercedProgress:F

    iget-wide v5, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$color:J

    iget v8, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$strokeCap:I

    move-object v2, p1

    .line 88
    invoke-static/range {v2 .. v8}, Landroidx/compose/material3/ProgressIndicatorKt;->access$drawLinearIndicator-qYKTg0g(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V

    return-void
.end method

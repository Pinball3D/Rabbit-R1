.class public Landroidx/compose/ui/text/android/style/SkewXSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SkewXSpan.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/ui/text/android/style/SkewXSpan;",
        "Landroid/text/style/MetricAffectingSpan;",
        "skewX",
        "",
        "(F)V",
        "getSkewX",
        "()F",
        "updateDrawState",
        "",
        "textPaint",
        "Landroid/text/TextPaint;",
        "updateMeasureState",
        "ui-text_release"
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
.field private final skewX:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/android/style/SkewXSpan;->skewX:F

    return-void
.end method


# virtual methods
.method public final getSkewX()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/style/SkewXSpan;->skewX:F

    return p0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string/jumbo v0, "textPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/ui/text/android/style/SkewXSpan;->skewX:F

    .line 31
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v0

    add-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    const-string/jumbo v0, "textPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/ui/text/android/style/SkewXSpan;->skewX:F

    .line 35
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v0

    add-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    return-void
.end method

.class public final Landroidx/compose/ui/text/android/style/LineHeightSpan;
.super Ljava/lang/Object;
.source "LineHeightSpan.kt"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J8\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/ui/text/android/style/LineHeightSpan;",
        "Landroid/text/style/LineHeightSpan;",
        "lineHeight",
        "",
        "(F)V",
        "getLineHeight",
        "()F",
        "chooseHeight",
        "",
        "text",
        "",
        "start",
        "",
        "end",
        "spanstartVertical",
        "fontMetricsInt",
        "Landroid/graphics/Paint$FontMetricsInt;",
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
.field private final lineHeight:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightSpan;->lineHeight:F

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    const-string/jumbo p2, "text"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fontMetricsInt"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {p6}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpanKt;->lineHeight(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget p0, p0, Landroidx/compose/ui/text/android/style/LineHeightSpan;->lineHeight:F

    float-to-double p2, p0

    .line 51
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-float p0, p2

    float-to-int p0, p0

    int-to-float p2, p0

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 53
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-double p3, p1

    float-to-double p1, p2

    mul-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 54
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p1, p0

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    return-void
.end method

.method public final getLineHeight()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/style/LineHeightSpan;->lineHeight:F

    return p0
.end method

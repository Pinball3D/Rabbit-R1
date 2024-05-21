.class public final Landroidx/compose/ui/text/android/style/ShadowSpan;
.super Landroid/text/style/CharacterStyle;
.source "ShadowSpan.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/ui/text/android/style/ShadowSpan;",
        "Landroid/text/style/CharacterStyle;",
        "color",
        "",
        "offsetX",
        "",
        "offsetY",
        "radius",
        "(IFFF)V",
        "getColor",
        "()I",
        "getOffsetX",
        "()F",
        "getOffsetY",
        "getRadius",
        "updateDrawState",
        "",
        "tp",
        "Landroid/text/TextPaint;",
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
.field private final color:I

.field private final offsetX:F

.field private final offsetY:F

.field private final radius:F


# direct methods
.method public constructor <init>(IFFF)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->color:I

    iput p2, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetX:F

    iput p3, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetY:F

    iput p4, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->radius:F

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->color:I

    return p0
.end method

.method public final getOffsetX()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetX:F

    return p0
.end method

.method public final getOffsetY()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetY:F

    return p0
.end method

.method public final getRadius()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->radius:F

    return p0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    const-string/jumbo v0, "tp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->radius:F

    iget v1, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetX:F

    iget v2, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetY:F

    iget p0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->color:I

    .line 35
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

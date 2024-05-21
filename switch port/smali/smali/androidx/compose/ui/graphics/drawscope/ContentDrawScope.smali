.class public interface abstract Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
.super Ljava/lang/Object;
.source "ContentDrawScope.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/drawscope/DrawScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/drawscope/ContentDrawScope$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0004\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "drawContent",
        "",
        "ui-graphics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic access$drawImage-AZ2fEMs$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V
    .locals 0

    .line 25
    invoke-super/range {p0 .. p14}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawImage-AZ2fEMs(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    return-void
.end method

.method public static synthetic access$getCenter-F1C5BW0$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)J
    .locals 2

    .line 25
    invoke-super {p0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getCenter-F1C5BW0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$getSize-NH-jbRc$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)J
    .locals 2

    .line 25
    invoke-super {p0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$roundToPx--R2X_6o$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)I
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->roundToPx--R2X_6o(J)I

    move-result p0

    return p0
.end method

.method public static synthetic access$roundToPx-0680j_4$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)I
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->roundToPx-0680j_4(F)I

    move-result p0

    return p0
.end method

.method public static synthetic access$toDp-GaN1DYA$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)F
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toDp-GaN1DYA(J)F

    move-result p0

    return p0
.end method

.method public static synthetic access$toDp-u2uoSUM$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)F
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toDp-u2uoSUM(F)F

    move-result p0

    return p0
.end method

.method public static synthetic access$toDp-u2uoSUM$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;I)F
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toDp-u2uoSUM(I)F

    move-result p0

    return p0
.end method

.method public static synthetic access$toDpSize-k-rfVVM$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)J
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toDpSize-k-rfVVM(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$toPx--R2X_6o$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)F
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx--R2X_6o(J)F

    move-result p0

    return p0
.end method

.method public static synthetic access$toPx-0680j_4$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)F
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx-0680j_4(F)F

    move-result p0

    return p0
.end method

.method public static synthetic access$toRect$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toRect(Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$toSize-XkaWNTQ$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)J
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toSize-XkaWNTQ(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$toSp-0xMU5do$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)J
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toSp-0xMU5do(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)J
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toSp-kPz2Gy4(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;I)J
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toSp-kPz2Gy4(I)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public abstract drawContent()V
.end method

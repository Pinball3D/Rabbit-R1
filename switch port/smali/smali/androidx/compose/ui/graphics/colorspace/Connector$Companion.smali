.class public final Landroidx/compose/ui/graphics/colorspace/Connector$Companion;
.super Ljava/lang/Object;
.source "Connector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/colorspace/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J/\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0014\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008\u0015R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/colorspace/Connector$Companion;",
        "",
        "()V",
        "OklabToSrgbPerceptual",
        "Landroidx/compose/ui/graphics/colorspace/Connector;",
        "getOklabToSrgbPerceptual$ui_graphics_release",
        "()Landroidx/compose/ui/graphics/colorspace/Connector;",
        "SrgbIdentity",
        "getSrgbIdentity$ui_graphics_release",
        "SrgbToOklabPerceptual",
        "getSrgbToOklabPerceptual$ui_graphics_release",
        "computeTransform",
        "",
        "source",
        "Landroidx/compose/ui/graphics/colorspace/ColorSpace;",
        "destination",
        "intent",
        "Landroidx/compose/ui/graphics/colorspace/RenderIntent;",
        "computeTransform-YBCOT_4",
        "(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)[F",
        "identity",
        "identity$ui_graphics_release",
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
.method private constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$computeTransform-YBCOT_4(Landroidx/compose/ui/graphics/colorspace/Connector$Companion;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)[F
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;->computeTransform-YBCOT_4(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)[F

    move-result-object p0

    return-object p0
.end method

.method private final computeTransform-YBCOT_4(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)[F
    .locals 4

    .line 292
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getAbsolute-uksYyKA()I

    move-result p0

    invoke-static {p3, p0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->equals-impl0(II)Z

    move-result p0

    const/4 p3, 0x0

    if-nez p0, :cond_0

    return-object p3

    .line 294
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getModel-xdoWZVw()J

    move-result-wide v0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getRgb-xdoWZVw()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result p0

    .line 295
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getModel-xdoWZVw()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getRgb-xdoWZVw()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    return-object p3

    :cond_1
    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-object p3

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, p2

    :goto_1
    const-string p2, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb"

    .line 300
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    if-eqz p0, :cond_5

    .line 301
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object p0

    goto :goto_2

    :cond_5
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object p0

    :goto_2
    if-eqz v0, :cond_6

    .line 302
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object p1

    goto :goto_3

    :cond_6
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object p1

    :goto_3
    const/4 p2, 0x3

    new-array p2, p2, [F

    const/4 p3, 0x0

    .line 304
    aget v0, p0, p3

    aget v1, p1, p3

    div-float/2addr v0, v1

    aput v0, p2, p3

    const/4 p3, 0x1

    .line 305
    aget v0, p0, p3

    aget v1, p1, p3

    div-float/2addr v0, v1

    aput v0, p2, p3

    const/4 p3, 0x2

    .line 306
    aget p0, p0, p3

    aget p1, p1, p3

    div-float/2addr p0, p1

    aput p0, p2, p3

    return-object p2
.end method


# virtual methods
.method public final getOklabToSrgbPerceptual$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 0

    .line 336
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/Connector;->access$getOklabToSrgbPerceptual$cp()Landroidx/compose/ui/graphics/colorspace/Connector;

    move-result-object p0

    return-object p0
.end method

.method public final getSrgbIdentity$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 0

    .line 333
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/Connector;->access$getSrgbIdentity$cp()Landroidx/compose/ui/graphics/colorspace/Connector;

    move-result-object p0

    return-object p0
.end method

.method public final getSrgbToOklabPerceptual$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 0

    .line 334
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/Connector;->access$getSrgbToOklabPerceptual$cp()Landroidx/compose/ui/graphics/colorspace/Connector;

    move-result-object p0

    return-object p0
.end method

.method public final identity$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 1

    const-string/jumbo p0, "source"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getRelative-uksYyKA()I

    move-result p0

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Connector$Companion$identity$1;

    invoke-direct {v0, p1, p0}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion$identity$1;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)V

    check-cast v0, Landroidx/compose/ui/graphics/colorspace/Connector;

    return-object v0
.end method

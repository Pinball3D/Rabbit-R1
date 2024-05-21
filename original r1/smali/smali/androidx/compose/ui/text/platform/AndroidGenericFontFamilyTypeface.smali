.class public final Landroidx/compose/ui/text/platform/AndroidGenericFontFamilyTypeface;
.super Ljava/lang/Object;
.source "AndroidGenericFontFamilyTypeface.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/platform/AndroidTypeface;


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "This path for preloading loading fonts is not supported."
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J-\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\t0\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J-\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0002\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/ui/text/platform/AndroidGenericFontFamilyTypeface;",
        "Landroidx/compose/ui/text/platform/AndroidTypeface;",
        "fontFamily",
        "Landroidx/compose/ui/text/font/GenericFontFamily;",
        "(Landroidx/compose/ui/text/font/GenericFontFamily;)V",
        "Landroidx/compose/ui/text/font/FontFamily;",
        "getFontFamily",
        "()Landroidx/compose/ui/text/font/FontFamily;",
        "nativeTypeface",
        "Landroid/graphics/Typeface;",
        "buildStyledTypeface",
        "kotlin.jvm.PlatformType",
        "fontWeight",
        "Landroidx/compose/ui/text/font/FontWeight;",
        "fontStyle",
        "Landroidx/compose/ui/text/font/FontStyle;",
        "buildStyledTypeface-FO1MlWM",
        "(Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;",
        "getNativeTypeface",
        "synthesis",
        "Landroidx/compose/ui/text/font/FontSynthesis;",
        "getNativeTypeface-PYhJU0U",
        "(Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;",
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
.field private final fontFamily:Landroidx/compose/ui/text/font/FontFamily;

.field private final nativeTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/font/GenericFontFamily;)V
    .locals 1

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/text/font/FontFamily;

    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidGenericFontFamilyTypeface;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 46
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/GenericFontFamily;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidGenericFontFamilyTypeface;->nativeTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method private final buildStyledTypeface-FO1MlWM(Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;
    .locals 2

    .line 55
    sget-object v0, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->INSTANCE:Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidGenericFontFamilyTypeface;->nativeTypeface:Landroid/graphics/Typeface;

    .line 57
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight;->getWeight()I

    move-result p1

    .line 58
    sget-object v1, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getItalic-_-LCdwA()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result p2

    .line 55
    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFontFamily()Landroidx/compose/ui/text/font/FontFamily;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidGenericFontFamilyTypeface;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    return-object p0
.end method

.method public getNativeTypeface-PYhJU0U(Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;
    .locals 0

    const-string p3, "fontWeight"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/platform/AndroidGenericFontFamilyTypeface;->buildStyledTypeface-FO1MlWM(Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object p0

    const-string p1, "buildStyledTypeface(fontWeight, fontStyle)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

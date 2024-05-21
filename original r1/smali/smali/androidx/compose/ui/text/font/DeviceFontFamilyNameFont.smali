.class final Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;
.super Landroidx/compose/ui/text/font/AndroidFont;
.source "DeviceFontFamilyNameFont.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B(\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u001f\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;",
        "Landroidx/compose/ui/text/font/AndroidFont;",
        "familyName",
        "Landroidx/compose/ui/text/font/DeviceFontFamilyName;",
        "weight",
        "Landroidx/compose/ui/text/font/FontWeight;",
        "style",
        "Landroidx/compose/ui/text/font/FontStyle;",
        "variationSettings",
        "Landroidx/compose/ui/text/font/FontVariation$Settings;",
        "(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Ljava/lang/String;",
        "getStyle-_-LCdwA",
        "()I",
        "I",
        "getWeight",
        "()Landroidx/compose/ui/text/font/FontWeight;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "loadCached",
        "Landroid/graphics/Typeface;",
        "context",
        "Landroid/content/Context;",
        "toString",
        "",
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
.field private final familyName:Ljava/lang/String;

.field private final style:I

.field private final weight:Landroidx/compose/ui/text/font/FontWeight;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;)V
    .locals 3

    const-string v0, "familyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "weight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "variationSettings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;->getOptionalLocal-PKNRLFQ()I

    move-result v0

    .line 87
    sget-object v1, Landroidx/compose/ui/text/font/NamedFontLoader;->INSTANCE:Landroidx/compose/ui/text/font/NamedFontLoader;

    check-cast v1, Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, v0, v1, p4, v2}, Landroidx/compose/ui/text/font/AndroidFont;-><init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Landroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->familyName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    iput p3, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->style:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 102
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->familyName:Ljava/lang/String;

    .line 104
    check-cast p1, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    iget-object v3, p1, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->familyName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/compose/ui/text/font/DeviceFontFamilyName;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 105
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 106
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->getStyle-_-LCdwA()I

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->getStyle-_-LCdwA()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 107
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->getVariationSettings()Landroidx/compose/ui/text/font/FontVariation$Settings;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->getVariationSettings()Landroidx/compose/ui/text/font/FontVariation$Settings;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getStyle-_-LCdwA()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->style:I

    return p0
.end method

.method public getWeight()Landroidx/compose/ui/text/font/FontWeight;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->familyName:Ljava/lang/String;

    .line 113
    invoke-static {v0}, Landroidx/compose/ui/text/font/DeviceFontFamilyName;->hashCode-impl(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->getStyle-_-LCdwA()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/font/FontStyle;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->getVariationSettings()Landroidx/compose/ui/text/font/FontVariation$Settings;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontVariation$Settings;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final loadCached(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Landroidx/compose/ui/text/font/PlatformTypefacesKt;->PlatformTypefaces()Landroidx/compose/ui/text/font/PlatformTypefaces;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->familyName:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    .line 94
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->getStyle-_-LCdwA()I

    move-result v4

    .line 95
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->getVariationSettings()Landroidx/compose/ui/text/font/FontVariation$Settings;

    move-result-object v5

    move-object v6, p1

    .line 91
    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/text/font/PlatformTypefaces;->optionalOnDeviceFontFamilyByName-78DK7lM(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Font(familyName=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->familyName:Ljava/lang/String;

    invoke-static {v1}, Landroidx/compose/ui/text/font/DeviceFontFamilyName;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->getStyle-_-LCdwA()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/text/font/FontStyle;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

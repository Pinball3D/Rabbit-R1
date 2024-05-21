.class public final Landroidx/compose/ui/text/font/AndroidFileFont;
.super Landroidx/compose/ui/text/font/AndroidPreloadedFont;
.source "AndroidPreloadedFont.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B,\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0010\u00a2\u0006\u0002\u0008\u0015J\u0008\u0010\u0016\u001a\u00020\u000cH\u0016R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/AndroidFileFont;",
        "Landroidx/compose/ui/text/font/AndroidPreloadedFont;",
        "file",
        "Ljava/io/File;",
        "weight",
        "Landroidx/compose/ui/text/font/FontWeight;",
        "style",
        "Landroidx/compose/ui/text/font/FontStyle;",
        "variationSettings",
        "Landroidx/compose/ui/text/font/FontVariation$Settings;",
        "(Ljava/io/File;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "cacheKey",
        "",
        "getCacheKey",
        "()Ljava/lang/String;",
        "getFile",
        "()Ljava/io/File;",
        "doLoad",
        "Landroid/graphics/Typeface;",
        "context",
        "Landroid/content/Context;",
        "doLoad$ui_text_release",
        "toString",
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
.field private final cacheKey:Ljava/lang/String;

.field private final file:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "weight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "variationSettings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p2, p3, p4, v0}, Landroidx/compose/ui/text/font/AndroidPreloadedFont;-><init>(Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/text/font/AndroidFileFont;->file:Ljava/io/File;

    .line 127
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/font/AndroidFileFont;->doLoad$ui_text_release(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/font/AndroidFileFont;->setTypeface$ui_text_release(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 113
    sget-object p2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_1

    .line 114
    sget-object p2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result p3

    :cond_1
    move v3, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    .line 111
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/font/AndroidFileFont;-><init>(Ljava/io/File;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/AndroidFileFont;-><init>(Ljava/io/File;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;)V

    return-void
.end method


# virtual methods
.method public doLoad$ui_text_release(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    .line 120
    sget-object v0, Landroidx/compose/ui/text/font/TypefaceBuilderCompat;->INSTANCE:Landroidx/compose/ui/text/font/TypefaceBuilderCompat;

    iget-object v1, p0, Landroidx/compose/ui/text/font/AndroidFileFont;->file:Ljava/io/File;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/AndroidFileFont;->getVariationSettings()Landroidx/compose/ui/text/font/FontVariation$Settings;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Landroidx/compose/ui/text/font/TypefaceBuilderCompat;->createFromFile(Ljava/io/File;Landroid/content/Context;Landroidx/compose/ui/text/font/FontVariation$Settings;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/AndroidFileFont;->cacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/AndroidFileFont;->file:Ljava/io/File;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Font(file="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/text/font/AndroidFileFont;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/AndroidFileFont;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/AndroidFileFont;->getStyle-_-LCdwA()I

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

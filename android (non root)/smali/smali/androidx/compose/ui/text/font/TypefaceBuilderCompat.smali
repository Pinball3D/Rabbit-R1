.class final Landroidx/compose/ui/text/font/TypefaceBuilderCompat;
.super Ljava/lang/Object;
.source "AndroidPreloadedFont.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidPreloadedFont.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidPreloadedFont.kt\nandroidx/compose/ui/text/font/TypefaceBuilderCompat\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,234:1\n151#2,3:235\n33#2,4:238\n154#2,2:242\n38#2:244\n156#2:245\n37#3,2:246\n*S KotlinDebug\n*F\n+ 1 AndroidPreloadedFont.kt\nandroidx/compose/ui/text/font/TypefaceBuilderCompat\n*L\n229#1:235,3\n229#1:238,4\n229#1:242,2\n229#1:244\n229#1:245\n231#1:246,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J$\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J$\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J!\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014*\u00020\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0003\u00a2\u0006\u0002\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/TypefaceBuilderCompat;",
        "",
        "()V",
        "createFromAssets",
        "Landroid/graphics/Typeface;",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "path",
        "",
        "context",
        "Landroid/content/Context;",
        "variationSettings",
        "Landroidx/compose/ui/text/font/FontVariation$Settings;",
        "createFromFile",
        "file",
        "Ljava/io/File;",
        "createFromFileDescriptor",
        "fileDescriptor",
        "Landroid/os/ParcelFileDescriptor;",
        "toVariationSettings",
        "",
        "Landroid/graphics/fonts/FontVariationAxis;",
        "(Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)[Landroid/graphics/fonts/FontVariationAxis;",
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


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/font/TypefaceBuilderCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/font/TypefaceBuilderCompat;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/TypefaceBuilderCompat;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/TypefaceBuilderCompat;->INSTANCE:Landroidx/compose/ui/text/font/TypefaceBuilderCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final toVariationSettings(Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)[Landroid/graphics/fonts/FontVariationAxis;
    .locals 7

    if-eqz p2, :cond_0

    .line 221
    invoke-static {p2}, Landroidx/compose/ui/unit/AndroidDensity_androidKt;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;

    move-result-object p0

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontVariation$Settings;->getNeedsDensity$ui_text_release()Z

    move-result p0

    if-nez p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    .line 224
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/DensityKt;->Density(FF)Landroidx/compose/ui/unit/Density;

    move-result-object p0

    .line 229
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontVariation$Settings;->getSettings()Ljava/util/List;

    move-result-object p1

    .line 236
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 240
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 242
    move-object v4, p2

    check-cast v4, Ljava/util/Collection;

    check-cast v3, Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 230
    new-instance v5, Landroid/graphics/fonts/FontVariationAxis;

    invoke-interface {v3}, Landroidx/compose/ui/text/font/FontVariation$Setting;->getAxisName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, p0}, Landroidx/compose/ui/text/font/FontVariation$Setting;->toVariationValue(Landroidx/compose/ui/unit/Density;)F

    move-result v3

    invoke-direct {v5, v6, v3}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    .line 242
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 245
    :cond_1
    check-cast p2, Ljava/util/List;

    check-cast p2, Ljava/util/Collection;

    new-array p0, v1, [Landroid/graphics/fonts/FontVariationAxis;

    .line 247
    invoke-interface {p2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/fonts/FontVariationAxis;

    return-object p0

    .line 227
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required density, but not provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final createFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/content/Context;Landroidx/compose/ui/text/font/FontVariation$Settings;)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "assetManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "variationSettings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 180
    :cond_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, p4, p3}, Landroidx/compose/ui/text/font/TypefaceBuilderCompat;->toVariationSettings(Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public final createFromFile(Ljava/io/File;Landroid/content/Context;Landroidx/compose/ui/text/font/FontVariation$Settings;)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "variationSettings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 195
    :cond_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/File;)V

    .line 196
    invoke-direct {p0, p3, p2}, Landroidx/compose/ui/text/font/TypefaceBuilderCompat;->toVariationSettings(Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public final createFromFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/content/Context;Landroidx/compose/ui/text/font/FontVariation$Settings;)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "fileDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "variationSettings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 210
    :cond_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    .line 211
    invoke-direct {p0, p3, p2}, Landroidx/compose/ui/text/font/TypefaceBuilderCompat;->toVariationSettings(Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;

    move-result-object p0

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

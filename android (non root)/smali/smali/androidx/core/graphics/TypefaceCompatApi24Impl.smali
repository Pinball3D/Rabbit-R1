.class Landroidx/core/graphics/TypefaceCompatApi24Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi24Impl.java"


# static fields
.field private static final ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String; = "addFontWeightStyle"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi24Impl"

.field private static final sAddFontWeightStyle:Ljava/lang/reflect/Method;

.field private static final sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field private static final sFontFamily:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sFontFamilyCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    :try_start_0
    const-string v0, "android.graphics.FontFamily"

    .line 68
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string v3, "addFontWeightStyle"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    .line 70
    const-class v5, Ljava/nio/ByteBuffer;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/util/List;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x4

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 72
    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 73
    const-class v5, Landroid/graphics/Typeface;

    const-string v7, "createFromFamiliesWithDefault"

    new-array v6, v6, [Ljava/lang/Class;

    .line 75
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v6, v1

    .line 74
    invoke-virtual {v5, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TypefaceCompatApi24Impl"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    sput-object v2, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamily:Ljava/lang/Class;

    sput-object v3, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    sput-object v1, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private static addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    const/4 p2, 0x0

    aput-object p2, v2, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v2, p2

    .line 111
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 113
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamily:Ljava/lang/Class;

    const/4 v2, 0x1

    .line 121
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 122
    invoke-static {v1, v2, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object p0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    .line 123
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static isUsable()Z
    .locals 3

    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-string v1, "TypefaceCompatApi24Impl"

    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    .line 94
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static newFamily()Ljava/lang/Object;
    .locals 2

    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 6

    .line 166
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->newFamily()Ljava/lang/Object;

    move-result-object p0

    const/4 p4, 0x0

    if-nez p0, :cond_0

    return-object p4

    .line 170
    :cond_0
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    .line 172
    invoke-virtual {v2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v3

    invoke-static {p1, p3, v3}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_1

    return-object p4

    .line 176
    :cond_1
    invoke-virtual {v2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v4

    invoke-virtual {v2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v5

    invoke-virtual {v2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v2

    invoke-static {p0, v3, v4, v5, v2}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v2

    if-nez v2, :cond_2

    return-object p4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_3
    invoke-static {p0}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 8

    .line 134
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->newFamily()Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 138
    :cond_0
    new-instance v1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 140
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p3, v3

    .line 141
    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 142
    invoke-virtual {v1, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    if-nez v6, :cond_1

    .line 144
    invoke-static {p1, p2, v5}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 145
    invoke-virtual {v1, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v6, :cond_2

    return-object v0

    .line 150
    :cond_2
    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v5

    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v7

    .line 151
    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v4

    .line 150
    invoke-static {p0, v6, v5, v7, v4}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v4

    if-nez v4, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    :cond_4
    invoke-static {p0}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v0

    .line 159
    :cond_5
    invoke-static {p0, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method createWeightStyle(Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 1

    .line 189
    :try_start_0
    invoke-static {p2, p3, p4}, Landroidx/core/graphics/WeightTypefaceApi21;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createWeightStyle(Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_0
    return-object v0
.end method

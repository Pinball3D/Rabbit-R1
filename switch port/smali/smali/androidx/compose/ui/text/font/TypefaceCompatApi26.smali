.class final Landroidx/compose/ui/text/font/TypefaceCompatApi26;
.super Ljava/lang/Object;
.source "PlatformTypefaces.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0014\u0010\r\u001a\u00020\u000e*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0003R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/TypefaceCompatApi26;",
        "",
        "()V",
        "threadLocalPaint",
        "Ljava/lang/ThreadLocal;",
        "Landroid/graphics/Paint;",
        "setFontVariationSettings",
        "Landroid/graphics/Typeface;",
        "typeface",
        "variationSettings",
        "Landroidx/compose/ui/text/font/FontVariation$Settings;",
        "context",
        "Landroid/content/Context;",
        "toAndroidString",
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


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/font/TypefaceCompatApi26;

.field private static threadLocalPaint:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/font/TypefaceCompatApi26;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/TypefaceCompatApi26;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/TypefaceCompatApi26;->INSTANCE:Landroidx/compose/ui/text/font/TypefaceCompatApi26;

    .line 244
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/TypefaceCompatApi26;->threadLocalPaint:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final toAndroidString(Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 268
    invoke-static {p2}, Landroidx/compose/ui/unit/AndroidDensity_androidKt;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;

    move-result-object p0

    .line 269
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontVariation$Settings;->getSettings()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance p1, Landroidx/compose/ui/text/font/TypefaceCompatApi26$toAndroidString$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/text/font/TypefaceCompatApi26$toAndroidString$1;-><init>(Landroidx/compose/ui/unit/Density;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/text/TempListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final setFontVariationSettings(Landroid/graphics/Typeface;Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-string/jumbo v0, "variationSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 253
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontVariation$Settings;->getSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    sget-object v0, Landroidx/compose/ui/text/font/TypefaceCompatApi26;->threadLocalPaint:Ljava/lang/ThreadLocal;

    .line 256
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 258
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroidx/compose/ui/text/font/TypefaceCompatApi26;->threadLocalPaint:Ljava/lang/ThreadLocal;

    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 261
    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 262
    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/text/font/TypefaceCompatApi26;->toAndroidString(Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 263
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

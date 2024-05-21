.class public final Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt;
.super Ljava/lang/Object;
.source "AndroidFontLoader.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\u001d\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007"
    }
    d2 = {
        "load",
        "Landroid/graphics/Typeface;",
        "Landroidx/compose/ui/text/font/ResourceFont;",
        "context",
        "Landroid/content/Context;",
        "loadAsync",
        "(Landroidx/compose/ui/text/font/ResourceFont;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ui-text_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$load(Landroidx/compose/ui/text/font/ResourceFont;Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt;->load(Landroidx/compose/ui/text/font/ResourceFont;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadAsync(Landroidx/compose/ui/text/font/ResourceFont;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt;->loadAsync(Landroidx/compose/ui/text/font/ResourceFont;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final load(Landroidx/compose/ui/text/font/ResourceFont;Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 73
    sget-object v0, Landroidx/compose/ui/text/font/ResourceFontHelper;->INSTANCE:Landroidx/compose/ui/text/font/ResourceFontHelper;

    invoke-virtual {v0, p1, p0}, Landroidx/compose/ui/text/font/ResourceFontHelper;->load(Landroid/content/Context;Landroidx/compose/ui/text/font/ResourceFont;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private static final loadAsync(Landroidx/compose/ui/text/font/ResourceFont;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/ResourceFont;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Typeface;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;-><init>(Landroidx/compose/ui/text/font/ResourceFont;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

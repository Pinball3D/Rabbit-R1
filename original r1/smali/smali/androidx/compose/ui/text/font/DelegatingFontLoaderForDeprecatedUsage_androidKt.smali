.class public final Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage_androidKt;
.super Ljava/lang/Object;
.source "DelegatingFontLoaderForDeprecatedUsage.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "createFontFamilyResolver",
        "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "fontResourceLoader",
        "Landroidx/compose/ui/text/font/Font$ResourceLoader;",
        "context",
        "Landroid/content/Context;",
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
.method public static final createFontFamilyResolver(Landroidx/compose/ui/text/font/Font$ResourceLoader;)Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .locals 9
    .annotation runtime Lkotlin/Deprecated;
        message = "This exists to bridge existing Font.ResourceLoader APIs, and should be removed with them"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "createFontFamilyResolver()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "fontResourceLoader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    new-instance v1, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;

    invoke-direct {v1, p0}, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;-><init>(Landroidx/compose/ui/text/font/Font$ResourceLoader;)V

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/text/font/PlatformFontLoader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;-><init>(Landroidx/compose/ui/text/font/PlatformFontLoader;Landroidx/compose/ui/text/font/PlatformResolveInterceptor;Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    return-object v0
.end method

.method public static final createFontFamilyResolver(Landroidx/compose/ui/text/font/Font$ResourceLoader;Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .locals 9
    .annotation runtime Lkotlin/Deprecated;
        message = "This exists to bridge existing Font.ResourceLoader subclasses to be used as aFontFamily.ResourceLoader during upgrade."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "createFontFamilyResolver()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "fontResourceLoader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 49
    new-instance v1, Landroidx/compose/ui/text/font/DelegatingFontLoaderForBridgeUsage;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "context.applicationContext"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, p1}, Landroidx/compose/ui/text/font/DelegatingFontLoaderForBridgeUsage;-><init>(Landroidx/compose/ui/text/font/Font$ResourceLoader;Landroid/content/Context;)V

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/text/font/PlatformFontLoader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v1, v0

    .line 48
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;-><init>(Landroidx/compose/ui/text/font/PlatformFontLoader;Landroidx/compose/ui/text/font/PlatformResolveInterceptor;Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    return-object v0
.end method

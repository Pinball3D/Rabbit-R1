.class public final Landroidx/compose/ui/platform/AndroidFontResourceLoader;
.super Ljava/lang/Object;
.source "AndroidFontResourceLoader.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/font/Font$ResourceLoader;


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "Replaced with PlatformFontLoader during the introduction of async fonts, all usages should be replaced"
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "PlatformFontLoader"
        imports = {}
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/ui/platform/AndroidFontResourceLoader;",
        "Landroidx/compose/ui/text/font/Font$ResourceLoader;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "load",
        "Landroid/graphics/Typeface;",
        "font",
        "Landroidx/compose/ui/text/font/Font;",
        "ui_release"
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
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidFontResourceLoader;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public load(Landroidx/compose/ui/text/font/Font;)Landroid/graphics/Typeface;
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Replaced by FontFamily.Resolver, this method should not be called"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "FontFamily.Resolver.resolve(font, )"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "font"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of v0, p1, Landroidx/compose/ui/text/font/ResourceFont;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Landroidx/compose/ui/platform/AndroidFontResourceLoaderHelper;->INSTANCE:Landroidx/compose/ui/platform/AndroidFontResourceLoaderHelper;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidFontResourceLoader;->context:Landroid/content/Context;

    check-cast p1, Landroidx/compose/ui/text/font/ResourceFont;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/ResourceFont;->getResId()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidFontResourceLoaderHelper;->create(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown font type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic load(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidFontResourceLoader;->load(Landroidx/compose/ui/text/font/Font;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.class final Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FontFamilyResolver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->preload(Landroidx/compose/ui/text/font/FontFamily;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/text/font/TypefaceRequest;",
        "Landroidx/compose/ui/text/font/TypefaceResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/text/font/TypefaceResult;",
        "typeRequest",
        "Landroidx/compose/ui/text/font/TypefaceRequest;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/ui/text/font/TypefaceResult;
    .locals 4

    const-string/jumbo v0, "typeRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 59
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->access$getFontListFontFamilyTypefaceAdapter$p(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 61
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->getPlatformFontLoader$ui_text_release()Landroidx/compose/ui/text/font/PlatformFontLoader;

    move-result-object v1

    .line 59
    sget-object v2, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2$1;->INSTANCE:Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 63
    invoke-static {v3}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->access$getCreateDefaultTypeface$p(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    .line 59
    invoke-virtual {v0, p1, v1, v2, v3}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->resolve(Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/PlatformFontLoader;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/font/TypefaceResult;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 64
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->access$getPlatformFamilyTypefaceAdapter$p(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 66
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->getPlatformFontLoader$ui_text_release()Landroidx/compose/ui/text/font/PlatformFontLoader;

    move-result-object v1

    .line 64
    sget-object v2, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2$2;->INSTANCE:Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 68
    invoke-static {p0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->access$getCreateDefaultTypeface$p(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    .line 64
    invoke-virtual {v0, p1, v1, v2, p0}, Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;->resolve(Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/PlatformFontLoader;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/font/TypefaceResult;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not load font"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Landroidx/compose/ui/text/font/TypefaceRequest;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2;->invoke(Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/ui/text/font/TypefaceResult;

    move-result-object p0

    return-object p0
.end method

.class final Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SpannableExtensions.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setFontAttributes(Landroid/text/Spannable;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Lkotlin/jvm/functions/Function4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/text/SpanStyle;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "spanStyle",
        "Landroidx/compose/ui/text/SpanStyle;",
        "start",
        "",
        "end",
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
.field final synthetic $resolveTypeface:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "Landroidx/compose/ui/text/font/FontSynthesis;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_setFontAttributes:Landroid/text/Spannable;


# direct methods
.method constructor <init>(Landroid/text/Spannable;Lkotlin/jvm/functions/Function4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "-",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "-",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "-",
            "Landroidx/compose/ui/text/font/FontSynthesis;",
            "+",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;->$this_setFontAttributes:Landroid/text/Spannable;

    iput-object p2, p0, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;->$resolveTypeface:Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 298
    check-cast p1, Landroidx/compose/ui/text/SpanStyle;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;->invoke(Landroidx/compose/ui/text/SpanStyle;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/text/SpanStyle;II)V
    .locals 5

    const-string/jumbo v0, "spanStyle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;->$this_setFontAttributes:Landroid/text/Spannable;

    .line 303
    new-instance v1, Landroidx/compose/ui/text/android/style/TypefaceSpan;

    iget-object p0, p0, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;->$resolveTypeface:Lkotlin/jvm/functions/Function4;

    .line 305
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v2

    .line 306
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    .line 307
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontStyle;->unbox-impl()I

    move-result v4

    goto :goto_0

    :cond_1
    sget-object v4, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result v4

    :goto_0
    invoke-static {v4}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v4

    .line 308
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontSynthesis;->unbox-impl()I

    move-result p1

    goto :goto_1

    :cond_2
    sget-object p1, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getAll-GVVA2EU()I

    move-result p1

    :goto_1
    invoke-static {p1}, Landroidx/compose/ui/text/font/FontSynthesis;->box-impl(I)Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object p1

    .line 304
    invoke-interface {p0, v2, v3, v4, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    .line 303
    invoke-direct {v1, p0}, Landroidx/compose/ui/text/android/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 p0, 0x21

    .line 302
    invoke-interface {v0, v1, p2, p3, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

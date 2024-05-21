.class public final Landroidx/compose/ui/text/font/FontFamilyKt;
.super Ljava/lang/Object;
.source "FontFamily.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u001a!\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005\"\u00020\u0006H\u0007\u00a2\u0006\u0002\u0010\u0007\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "FontFamily",
        "Landroidx/compose/ui/text/font/FontFamily;",
        "typeface",
        "Landroidx/compose/ui/text/font/Typeface;",
        "fonts",
        "",
        "Landroidx/compose/ui/text/font/Font;",
        "([Landroidx/compose/ui/text/font/Font;)Landroidx/compose/ui/text/font/FontFamily;",
        "",
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
.method public static final FontFamily(Landroidx/compose/ui/text/font/Typeface;)Landroidx/compose/ui/text/font/FontFamily;
    .locals 1

    const-string/jumbo v0, "typeface"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    new-instance v0, Landroidx/compose/ui/text/font/LoadedFontFamily;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/font/LoadedFontFamily;-><init>(Landroidx/compose/ui/text/font/Typeface;)V

    check-cast v0, Landroidx/compose/ui/text/font/FontFamily;

    return-object v0
.end method

.method public static final FontFamily(Ljava/util/List;)Landroidx/compose/ui/text/font/FontFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/font/Font;",
            ">;)",
            "Landroidx/compose/ui/text/font/FontFamily;"
        }
    .end annotation

    const-string v0, "fonts"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    new-instance v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/font/FontListFontFamily;-><init>(Ljava/util/List;)V

    check-cast v0, Landroidx/compose/ui/text/font/FontFamily;

    return-object v0
.end method

.method public static final varargs FontFamily([Landroidx/compose/ui/text/font/Font;)Landroidx/compose/ui/text/font/FontFamily;
    .locals 1

    const-string v0, "fonts"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    new-instance v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/font/FontListFontFamily;-><init>(Ljava/util/List;)V

    check-cast v0, Landroidx/compose/ui/text/font/FontFamily;

    return-object v0
.end method

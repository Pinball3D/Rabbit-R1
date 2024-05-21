.class public final Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI23;
.super Ljava/lang/Object;
.source "AndroidLocaleDelegate.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI23;",
        "Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;",
        "()V",
        "current",
        "Landroidx/compose/ui/text/intl/LocaleList;",
        "getCurrent",
        "()Landroidx/compose/ui/text/intl/LocaleList;",
        "parseLanguageTag",
        "Landroidx/compose/ui/text/intl/PlatformLocale;",
        "languageTag",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent()Landroidx/compose/ui/text/intl/LocaleList;
    .locals 4

    .line 46
    new-instance p0, Landroidx/compose/ui/text/intl/LocaleList;

    new-instance v0, Landroidx/compose/ui/text/intl/Locale;

    new-instance v1, Landroidx/compose/ui/text/intl/AndroidLocale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "getDefault()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroidx/compose/ui/text/intl/AndroidLocale;-><init>(Ljava/util/Locale;)V

    check-cast v1, Landroidx/compose/ui/text/intl/PlatformLocale;

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/intl/Locale;-><init>(Landroidx/compose/ui/text/intl/PlatformLocale;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/intl/LocaleList;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public parseLanguageTag(Ljava/lang/String;)Landroidx/compose/ui/text/intl/PlatformLocale;
    .locals 1

    const-string p0, "languageTag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance p0, Landroidx/compose/ui/text/intl/AndroidLocale;

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    const-string v0, "forLanguageTag(languageTag)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/intl/AndroidLocale;-><init>(Ljava/util/Locale;)V

    check-cast p0, Landroidx/compose/ui/text/intl/PlatformLocale;

    return-object p0
.end method

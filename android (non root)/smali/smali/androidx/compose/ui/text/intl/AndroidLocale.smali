.class public final Landroidx/compose/ui/text/intl/AndroidLocale;
.super Ljava/lang/Object;
.source "AndroidLocaleDelegate.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/intl/PlatformLocale;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000f\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0014\u0010\r\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/ui/text/intl/AndroidLocale;",
        "Landroidx/compose/ui/text/intl/PlatformLocale;",
        "javaLocale",
        "Ljava/util/Locale;",
        "(Ljava/util/Locale;)V",
        "getJavaLocale",
        "()Ljava/util/Locale;",
        "language",
        "",
        "getLanguage",
        "()Ljava/lang/String;",
        "region",
        "getRegion",
        "script",
        "getScript",
        "toLanguageTag",
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


# instance fields
.field private final javaLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const-string v0, "javaLocale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/intl/AndroidLocale;->javaLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final getJavaLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/intl/AndroidLocale;->javaLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/text/intl/AndroidLocale;->javaLocale:Ljava/util/Locale;

    .line 29
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "javaLocale.language"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/text/intl/AndroidLocale;->javaLocale:Ljava/util/Locale;

    .line 35
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v0, "javaLocale.country"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/text/intl/AndroidLocale;->javaLocale:Ljava/util/Locale;

    .line 32
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0

    const-string v0, "javaLocale.script"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/text/intl/AndroidLocale;->javaLocale:Ljava/util/Locale;

    .line 37
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "javaLocale.toLanguageTag()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

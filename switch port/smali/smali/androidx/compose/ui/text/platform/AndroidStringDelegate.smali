.class public final Landroidx/compose/ui/text/platform/AndroidStringDelegate;
.super Ljava/lang/Object;
.source "AndroidStringDelegate.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/PlatformStringDelegate;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidStringDelegate.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidStringDelegate.android.kt\nandroidx/compose/ui/text/platform/AndroidStringDelegate\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/ui/text/platform/AndroidStringDelegate;",
        "Landroidx/compose/ui/text/PlatformStringDelegate;",
        "()V",
        "capitalize",
        "",
        "string",
        "locale",
        "Landroidx/compose/ui/text/intl/PlatformLocale;",
        "decapitalize",
        "toLowerCase",
        "toUpperCase",
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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public capitalize(Ljava/lang/String;Landroidx/compose/ui/text/intl/PlatformLocale;)Ljava/lang/String;
    .locals 2

    const-string/jumbo p0, "string"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "locale"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    check-cast p2, Landroidx/compose/ui/text/intl/AndroidLocale;

    invoke-virtual {p2}, Landroidx/compose/ui/text/intl/AndroidLocale;->getJavaLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/text/CharsKt;->titlecase(CLjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    .line 34
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public decapitalize(Ljava/lang/String;Landroidx/compose/ui/text/intl/PlatformLocale;)Ljava/lang/String;
    .locals 1

    const-string/jumbo p0, "string"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "locale"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    check-cast p2, Landroidx/compose/ui/text/intl/AndroidLocale;

    invoke-virtual {p2}, Landroidx/compose/ui/text/intl/AndroidLocale;->getJavaLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/text/CharsKt;->lowercase(CLjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public toLowerCase(Ljava/lang/String;Landroidx/compose/ui/text/intl/PlatformLocale;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "string"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "locale"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    check-cast p2, Landroidx/compose/ui/text/intl/AndroidLocale;

    invoke-virtual {p2}, Landroidx/compose/ui/text/intl/AndroidLocale;->getJavaLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toUpperCase(Ljava/lang/String;Landroidx/compose/ui/text/intl/PlatformLocale;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "string"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "locale"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    check-cast p2, Landroidx/compose/ui/text/intl/AndroidLocale;

    invoke-virtual {p2}, Landroidx/compose/ui/text/intl/AndroidLocale;->getJavaLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

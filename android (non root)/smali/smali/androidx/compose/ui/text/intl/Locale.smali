.class public final Landroidx/compose/ui/text/intl/Locale;
.super Ljava/lang/Object;
.source "Locale.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/intl/Locale$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0006\u0010\u0016\u001a\u00020\u0003J\u0008\u0010\u0017\u001a\u00020\u0003H\u0016R\u0011\u0010\u0008\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\nR\u0011\u0010\u000f\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/ui/text/intl/Locale;",
        "",
        "languageTag",
        "",
        "(Ljava/lang/String;)V",
        "platformLocale",
        "Landroidx/compose/ui/text/intl/PlatformLocale;",
        "(Landroidx/compose/ui/text/intl/PlatformLocale;)V",
        "language",
        "getLanguage",
        "()Ljava/lang/String;",
        "getPlatformLocale$ui_text_release",
        "()Landroidx/compose/ui/text/intl/PlatformLocale;",
        "region",
        "getRegion",
        "script",
        "getScript",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toLanguageTag",
        "toString",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/text/intl/Locale$Companion;


# instance fields
.field private final platformLocale:Landroidx/compose/ui/text/intl/PlatformLocale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/intl/Locale$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/intl/Locale$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/intl/Locale;->Companion:Landroidx/compose/ui/text/intl/Locale$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/intl/PlatformLocale;)V
    .locals 1

    const-string v0, "platformLocale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Landroidx/compose/ui/text/intl/PlatformLocale;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "languageTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->getPlatformLocaleDelegate()Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;->parseLanguageTag(Ljava/lang/String;)Landroidx/compose/ui/text/intl/PlatformLocale;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/intl/Locale;-><init>(Landroidx/compose/ui/text/intl/PlatformLocale;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 75
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/intl/Locale;

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 77
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Landroidx/compose/ui/text/intl/Locale;

    invoke-virtual {p1}, Landroidx/compose/ui/text/intl/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Landroidx/compose/ui/text/intl/PlatformLocale;

    .line 54
    invoke-interface {p0}, Landroidx/compose/ui/text/intl/PlatformLocale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPlatformLocale$ui_text_release()Landroidx/compose/ui/text/intl/PlatformLocale;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Landroidx/compose/ui/text/intl/PlatformLocale;

    return-object p0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Landroidx/compose/ui/text/intl/PlatformLocale;

    .line 64
    invoke-interface {p0}, Landroidx/compose/ui/text/intl/PlatformLocale;->getRegion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getScript()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Landroidx/compose/ui/text/intl/PlatformLocale;

    .line 59
    invoke-interface {p0}, Landroidx/compose/ui/text/intl/PlatformLocale;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 81
    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toLanguageTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Landroidx/compose/ui/text/intl/PlatformLocale;

    .line 71
    invoke-interface {p0}, Landroidx/compose/ui/text/intl/PlatformLocale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 83
    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

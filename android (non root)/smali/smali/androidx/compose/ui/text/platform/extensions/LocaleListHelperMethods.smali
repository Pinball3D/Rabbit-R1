.class public final Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;
.super Ljava/lang/Object;
.source "LocaleExtensions.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocaleExtensions.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocaleExtensions.android.kt\nandroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,50:1\n1549#2:51\n1620#2,3:52\n1549#2:57\n1620#2,3:58\n37#3,2:55\n37#3,2:61\n*S KotlinDebug\n*F\n+ 1 LocaleExtensions.android.kt\nandroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods\n*L\n40#1:51\n40#1:52,3\n47#1:57\n47#1:58,3\n40#1:55,2\n47#1:61,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0007J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;",
        "",
        "()V",
        "localeSpan",
        "localeList",
        "Landroidx/compose/ui/text/intl/LocaleList;",
        "setTextLocales",
        "",
        "textPaint",
        "Landroidx/compose/ui/text/platform/AndroidTextPaint;",
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
.field public static final INSTANCE:Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;

    invoke-direct {v0}, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->INSTANCE:Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final localeSpan(Landroidx/compose/ui/text/intl/LocaleList;)Ljava/lang/Object;
    .locals 1

    const-string p0, "localeList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    check-cast p1, Ljava/lang/Iterable;

    .line 51
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/Collection;

    .line 52
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Landroidx/compose/ui/text/intl/Locale;

    .line 40
    invoke-static {v0}, Landroidx/compose/ui/text/platform/extensions/LocaleExtensions_androidKt;->toJavaLocale(Landroidx/compose/ui/text/intl/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 53
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_0
    check-cast p0, Ljava/util/List;

    .line 51
    check-cast p0, Ljava/util/Collection;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/Locale;

    .line 56
    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 40
    check-cast p0, [Ljava/util/Locale;

    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Locale;

    new-instance p1, Landroid/os/LocaleList;

    invoke-direct {p1, p0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 39
    new-instance p0, Landroid/text/style/LocaleSpan;

    invoke-direct {p0, p1}, Landroid/text/style/LocaleSpan;-><init>(Landroid/os/LocaleList;)V

    return-object p0
.end method

.method public final setTextLocales(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/intl/LocaleList;)V
    .locals 1

    const-string/jumbo p0, "textPaint"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "localeList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    check-cast p2, Ljava/lang/Iterable;

    .line 57
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/Collection;

    .line 58
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 59
    check-cast v0, Landroidx/compose/ui/text/intl/Locale;

    .line 47
    invoke-static {v0}, Landroidx/compose/ui/text/platform/extensions/LocaleExtensions_androidKt;->toJavaLocale(Landroidx/compose/ui/text/intl/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 59
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    check-cast p0, Ljava/util/List;

    .line 57
    check-cast p0, Ljava/util/Collection;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/util/Locale;

    .line 62
    invoke-interface {p0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 47
    check-cast p0, [Ljava/util/Locale;

    array-length p2, p0

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Locale;

    .line 46
    new-instance p2, Landroid/os/LocaleList;

    invoke-direct {p2, p0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    return-void
.end method

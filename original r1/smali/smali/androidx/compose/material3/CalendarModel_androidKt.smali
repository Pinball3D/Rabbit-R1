.class public final Landroidx/compose/material3/CalendarModel_androidKt;
.super Ljava/lang/Object;
.source "CalendarModel.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCalendarModel.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CalendarModel.android.kt\nandroidx/compose/material3/CalendarModel_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,76:1\n76#2:77\n*S KotlinDebug\n*F\n+ 1 CalendarModel.android.kt\nandroidx/compose/material3/CalendarModel_androidKt\n*L\n74#1:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0001\u001a\r\u0010\u0002\u001a\u00020\u0003H\u0001\u00a2\u0006\u0002\u0010\u0004\u001a\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003H\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "CalendarModel",
        "Landroidx/compose/material3/CalendarModel;",
        "defaultLocale",
        "Ljava/util/Locale;",
        "(Landroidx/compose/runtime/Composer;I)Ljava/util/Locale;",
        "formatWithSkeleton",
        "",
        "utcTimeMillis",
        "",
        "skeleton",
        "locale",
        "material3_release"
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
.method public static final CalendarModel()Landroidx/compose/material3/CalendarModel;
    .locals 1

    .line 33
    new-instance v0, Landroidx/compose/material3/CalendarModelImpl;

    invoke-direct {v0}, Landroidx/compose/material3/CalendarModelImpl;-><init>()V

    check-cast v0, Landroidx/compose/material3/CalendarModel;

    return-object v0
.end method

.method public static final defaultLocale(Landroidx/compose/runtime/Composer;I)Ljava/util/Locale;
    .locals 3

    const-string v0, "C(defaultLocale)73@2608L7:CalendarModel.android.kt#uh7d8r"

    const v1, 0x355db040

    .line 73
    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.defaultLocale (CalendarModel.android.kt:72)"

    invoke-static {v1, p1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 74
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/CompositionLocal;

    const v0, 0x789c5f52

    const-string v1, "CC:CompositionLocal.kt#9igjgp"

    .line 77
    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast p1, Landroid/content/res/Configuration;

    .line 74
    invoke-static {p1}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v0, "getDefault()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 73
    :cond_2
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object p1
.end method

.method public static final formatWithSkeleton(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "skeleton"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {p3, p2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 60
    sget-object v0, Landroidx/compose/material3/CalendarModelImpl;->Companion:Landroidx/compose/material3/CalendarModelImpl$Companion;

    const-string v1, "pattern"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/compose/material3/CalendarModelImpl$Companion;->formatWithPattern(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic formatWithSkeleton$default(JLjava/lang/String;Ljava/util/Locale;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string p4, "m epoch)\n * "

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/CalendarModel_androidKt;->formatWithSkeleton(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

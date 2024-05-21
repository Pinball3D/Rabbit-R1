.class public final Landroidx/compose/ui/text/intl/PlatformLocaleKt;
.super Ljava/lang/Object;
.source "PlatformLocale.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "platformLocaleDelegate",
        "Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;",
        "getPlatformLocaleDelegate",
        "()Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;",
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


# static fields
.field private static final platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    invoke-static {}, Landroidx/compose/ui/text/intl/AndroidPlatformLocale_androidKt;->createPlatformLocaleDelegate()Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    return-void
.end method

.method public static final getPlatformLocaleDelegate()Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    return-object v0
.end method

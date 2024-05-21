.class public final Landroidx/compose/ui/text/intl/AndroidPlatformLocale_androidKt;
.super Ljava/lang/Object;
.source "AndroidPlatformLocale.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0000\u00a8\u0006\u0002"
    }
    d2 = {
        "createPlatformLocaleDelegate",
        "Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;",
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
.method public static final createPlatformLocaleDelegate()Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;
    .locals 1

    .line 23
    new-instance v0, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    invoke-direct {v0}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;-><init>()V

    check-cast v0, Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    return-object v0
.end method

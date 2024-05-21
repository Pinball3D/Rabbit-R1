.class final Landroidx/media3/exoplayer/offline/DownloadNotificationHelper$Api31;
.super Ljava/lang/Object;
.source "DownloadNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setForegroundServiceBehavior(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setForegroundServiceBehavior(I)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

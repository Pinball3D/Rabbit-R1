.class final Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper$Api31;
.super Ljava/lang/Object;
.source "DownloadNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setForegroundServiceBehavior(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setForegroundServiceBehavior(I)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.class public final Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;
.super Ljava/lang/Object;
.source "DownloadNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper$Api31;
    }
.end annotation


# static fields
.field private static final NULL_STRING_ID:I


# instance fields
.field private final notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    .line 212
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 236
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, 0x0

    if-nez p5, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 237
    :goto_0
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 239
    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez p4, :cond_1

    goto :goto_1

    .line 241
    :cond_1
    new-instance p2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p2, p4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    .line 240
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 242
    invoke-virtual {p1, p6, p7, p8}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 243
    invoke-virtual {p1, p9}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 244
    invoke-virtual {p1, p10}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 245
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 246
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper$Api31;->setForegroundServiceBehavior(Landroidx/core/app/NotificationCompat$Builder;)V

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 248
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildDownloadCompletedNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 6

    .line 184
    sget v5, Lcom/google/android/exoplayer2/core/R$string;->exo_download_completed:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 185
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public buildDownloadFailedNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 6

    .line 202
    sget v5, Lcom/google/android/exoplayer2/core/R$string;->exo_download_failed:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 203
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public buildProgressNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 64
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildProgressNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;I)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public buildProgressNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;I)Landroid/app/Notification;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;I)",
            "Landroid/app/Notification;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v2

    .line 93
    :goto_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    move-object/from16 v10, p5

    .line 94
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/offline/Download;

    .line 95
    iget v12, v11, Lcom/google/android/exoplayer2/offline/Download;->state:I

    if-eqz v12, :cond_4

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    const/4 v13, 0x5

    if-eq v12, v13, :cond_0

    const/4 v13, 0x7

    if-eq v12, v13, :cond_1

    goto :goto_2

    :cond_0
    move v7, v2

    goto :goto_2

    .line 105
    :cond_1
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/offline/Download;->getPercentDownloaded()F

    move-result v4

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v12, v4, v12

    if-eqz v12, :cond_2

    add-float/2addr v0, v4

    move v9, v1

    .line 110
    :cond_2
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/offline/Download;->getBytesDownloaded()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v4, v11, v13

    if-lez v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0x1

    move v4, v2

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    .line 125
    sget v3, Lcom/google/android/exoplayer2/core/R$string;->exo_download_downloading:I

    :goto_3
    move v15, v3

    :goto_4
    move v3, v2

    goto :goto_6

    :cond_6
    if-eqz v5, :cond_9

    if-eqz p6, :cond_9

    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_7

    .line 131
    sget v3, Lcom/google/android/exoplayer2/core/R$string;->exo_download_paused_for_wifi:I

    :goto_5
    move v15, v3

    move v3, v1

    goto :goto_6

    :cond_7
    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_8

    .line 133
    sget v3, Lcom/google/android/exoplayer2/core/R$string;->exo_download_paused_for_network:I

    goto :goto_5

    .line 135
    :cond_8
    sget v3, Lcom/google/android/exoplayer2/core/R$string;->exo_download_paused:I

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_a

    .line 138
    sget v3, Lcom/google/android/exoplayer2/core/R$string;->exo_download_removing:I

    goto :goto_3

    :cond_a
    move v15, v1

    goto :goto_4

    :goto_6
    if-eqz v3, :cond_d

    const/16 v3, 0x64

    if-eqz v4, :cond_c

    int-to-float v4, v8

    div-float/2addr v0, v4

    float-to-int v0, v0

    if-eqz v9, :cond_b

    if-eqz v6, :cond_b

    move v1, v2

    :cond_b
    move/from16 v17, v0

    move/from16 v18, v1

    goto :goto_7

    :cond_c
    move/from16 v17, v1

    move/from16 v18, v2

    :goto_7
    move/from16 v16, v3

    goto :goto_8

    :cond_d
    move/from16 v16, v1

    move/from16 v17, v16

    move/from16 v18, v17

    :goto_8
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    .line 157
    invoke-direct/range {v10 .. v20}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

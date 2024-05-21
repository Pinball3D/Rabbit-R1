.class public abstract Landroidx/media3/exoplayer/offline/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;,
        Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_DOWNLOAD:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD"

.field public static final ACTION_INIT:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.INIT"

.field public static final ACTION_PAUSE_DOWNLOADS:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.PAUSE_DOWNLOADS"

.field public static final ACTION_REMOVE_ALL_DOWNLOADS:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS"

.field public static final ACTION_REMOVE_DOWNLOAD:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD"

.field private static final ACTION_RESTART:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.RESTART"

.field public static final ACTION_RESUME_DOWNLOADS:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.RESUME_DOWNLOADS"

.field public static final ACTION_SET_REQUIREMENTS:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.SET_REQUIREMENTS"

.field public static final ACTION_SET_STOP_REASON:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON"

.field public static final DEFAULT_FOREGROUND_NOTIFICATION_UPDATE_INTERVAL:J = 0x3e8L

.field public static final FOREGROUND_NOTIFICATION_ID_NONE:I = 0x0

.field public static final KEY_CONTENT_ID:Ljava/lang/String; = "content_id"

.field public static final KEY_DOWNLOAD_REQUEST:Ljava/lang/String; = "download_request"

.field public static final KEY_FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final KEY_REQUIREMENTS:Ljava/lang/String; = "requirements"

.field public static final KEY_STOP_REASON:Ljava/lang/String; = "stop_reason"

.field private static final TAG:Ljava/lang/String; = "DownloadService"

.field private static final downloadManagerHelpers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channelDescriptionResourceId:I

.field private final channelId:Ljava/lang/String;

.field private final channelNameResourceId:I

.field private downloadManagerHelper:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

.field private final foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

.field private isDestroyed:Z

.field private isStopped:Z

.field private lastStartId:I

.field private startedInForeground:Z

.field private taskRemoved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelpers:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 217
    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/offline/DownloadService;-><init>(IJ)V

    return-void
.end method

.method protected constructor <init>(IJ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 231
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/offline/DownloadService;-><init>(IJLjava/lang/String;II)V

    return-void
.end method

.method protected constructor <init>(IJLjava/lang/String;II)V
    .locals 1

    .line 266
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelId:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelNameResourceId:I

    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelDescriptionResourceId:I

    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;-><init>(Landroidx/media3/exoplayer/offline/DownloadService;IJ)V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    iput-object p4, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelId:Ljava/lang/String;

    iput p5, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelNameResourceId:I

    iput p6, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelDescriptionResourceId:I

    :goto_0
    return-void
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/offline/DownloadService;)Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelper:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/offline/DownloadService;Ljava/util/List;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadService;->notifyDownloads(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/offline/DownloadService;Landroidx/media3/exoplayer/offline/Download;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadService;->notifyDownloadChanged(Landroidx/media3/exoplayer/offline/Download;)V

    return-void
.end method

.method static synthetic access$500(I)Z
    .locals 0

    .line 54
    invoke-static {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->needsStartedService(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->notifyDownloadRemoved()V

    return-void
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->onIdle()V

    return-void
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/offline/DownloadService;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->isStopped()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 54
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;IZ)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Landroidx/media3/exoplayer/offline/DownloadRequest;",
            "IZ)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD"

    .line 316
    invoke-static {p0, p1, v0, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "download_request"

    .line 317
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "stop_reason"

    .line 318
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;Z)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Landroidx/media3/exoplayer/offline/DownloadRequest;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 296
    invoke-static {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;IZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildPauseDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.PAUSE_DOWNLOADS"

    .line 372
    invoke-static {p0, p1, v0, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildRemoveAllDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS"

    .line 346
    invoke-static {p0, p1, v0, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildRemoveDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD"

    .line 332
    invoke-static {p0, p1, v0, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "content_id"

    .line 333
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildResumeDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.RESUME_DOWNLOADS"

    .line 359
    invoke-static {p0, p1, v0, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetRequirementsIntent(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/scheduler/Requirements;Z)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Landroidx/media3/exoplayer/scheduler/Requirements;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.SET_REQUIREMENTS"

    .line 412
    invoke-static {p0, p1, v0, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "requirements"

    .line 413
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetStopReasonIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON"

    .line 392
    invoke-static {p0, p1, v0, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "content_id"

    .line 393
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "stop_reason"

    .line 394
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static clearDownloadManagerHelpers()V
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelpers:Ljava/util/HashMap;

    .line 577
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 865
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 860
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "foreground"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private isStopped()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->isStopped:Z

    return p0
.end method

.method private static needsStartedService(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private notifyDownloadChanged(Landroidx/media3/exoplayer/offline/Download;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_1

    .line 809
    iget p1, p1, Landroidx/media3/exoplayer/offline/Download;->state:I

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadService;->needsStartedService(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    .line 810
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->startPeriodicUpdates()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    .line 812
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyDownloadRemoved()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz p0, :cond_0

    .line 820
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->invalidate()V

    :cond_0
    return-void
.end method

.method private notifyDownloads(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/Download;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 793
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 794
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/Download;

    iget v1, v1, Landroidx/media3/exoplayer/offline/Download;->state:I

    invoke-static {v1}, Landroidx/media3/exoplayer/offline/DownloadService;->needsStartedService(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    .line 795
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->startPeriodicUpdates()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private onIdle()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->stopPeriodicUpdates()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelper:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    .line 836
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->updateScheduler()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 844
    :cond_1
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->taskRemoved:Z

    if-eqz v0, :cond_2

    .line 845
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->stopSelf()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->isStopped:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->isStopped:Z

    iget v1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->lastStartId:I

    .line 848
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/offline/DownloadService;->stopSelfResult(I)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->isStopped:Z

    :goto_0
    return-void
.end method

.method public static sendAddDownload(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Landroidx/media3/exoplayer/offline/DownloadRequest;",
            "IZ)V"
        }
    .end annotation

    .line 449
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;IZ)Landroid/content/Intent;

    move-result-object p1

    .line 450
    invoke-static {p0, p1, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static sendAddDownload(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Landroidx/media3/exoplayer/offline/DownloadRequest;",
            "Z)V"
        }
    .end annotation

    .line 429
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;Z)Landroid/content/Intent;

    move-result-object p1

    .line 430
    invoke-static {p0, p1, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static sendPauseDownloads(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;Z)V"
        }
    .end annotation

    .line 502
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->buildPauseDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object p1

    .line 503
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static sendRemoveAllDownloads(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;Z)V"
        }
    .end annotation

    .line 476
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->buildRemoveAllDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object p1

    .line 477
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static sendRemoveDownload(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 463
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->buildRemoveDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 464
    invoke-static {p0, p1, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static sendResumeDownloads(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;Z)V"
        }
    .end annotation

    .line 489
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->buildResumeDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object p1

    .line 490
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static sendSetRequirements(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/scheduler/Requirements;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Landroidx/media3/exoplayer/scheduler/Requirements;",
            "Z)V"
        }
    .end annotation

    .line 540
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->buildSetRequirementsIntent(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/scheduler/Requirements;Z)Landroid/content/Intent;

    move-result-object p1

    .line 541
    invoke-static {p0, p1, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static sendSetStopReason(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 522
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->buildSetStopReasonIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object p1

    .line 523
    invoke-static {p0, p1, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;)V"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.INIT"

    .line 552
    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startForeground(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;)V"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.INIT"

    const/4 v1, 0x1

    .line 565
    invoke-static {p0, p1, v0, v1}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 566
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static startService(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 870
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 872
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract getDownloadManager()Landroidx/media3/exoplayer/offline/DownloadManager;
.end method

.method protected abstract getForegroundNotification(Ljava/util/List;I)Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/Download;",
            ">;I)",
            "Landroid/app/Notification;"
        }
    .end annotation
.end method

.method protected abstract getScheduler()Landroidx/media3/exoplayer/scheduler/Scheduler;
.end method

.method protected final invalidateForegroundNotification()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->isDestroyed:Z

    if-nez p0, :cond_0

    .line 782
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->invalidate()V

    :cond_0
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 715
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onCreate()V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelNameResourceId:I

    iget v2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelDescriptionResourceId:I

    const/4 v3, 0x2

    .line 583
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/media3/common/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;III)V

    .line 590
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelpers:Ljava/util/HashMap;

    .line 591
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v4

    .line 595
    :goto_0
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x1f

    if-ge v2, v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    .line 598
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->getScheduler()Landroidx/media3/exoplayer/scheduler/Scheduler;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    move-object v8, v2

    .line 599
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->getDownloadManager()Landroidx/media3/exoplayer/offline/DownloadManager;

    move-result-object v6

    .line 600
    invoke-virtual {v6}, Landroidx/media3/exoplayer/offline/DownloadManager;->resumeDownloads()V

    .line 601
    new-instance v2, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    .line 603
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v10, 0x0

    move-object v4, v2

    move-object v9, v0

    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/offline/DownloadManager;ZLandroidx/media3/exoplayer/scheduler/Scheduler;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadService$1;)V

    .line 604
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iput-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelper:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    .line 607
    invoke-virtual {v2, p0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->attachService(Landroidx/media3/exoplayer/offline/DownloadService;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->isDestroyed:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelper:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    .line 703
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->detachService(Landroidx/media3/exoplayer/offline/DownloadService;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz p0, :cond_0

    .line 705
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->stopPeriodicUpdates()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    iput p3, p0, Landroidx/media3/exoplayer/offline/DownloadService;->lastStartId:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->taskRemoved:Z

    const-string p3, "androidx.media3.exoplayer.downloadService.action.RESTART"

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 617
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_id"

    .line 618
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Landroidx/media3/exoplayer/offline/DownloadService;->startedInForeground:Z

    const-string v4, "foreground"

    .line 620
    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, p2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v0

    :goto_1
    or-int/2addr v3, v4

    iput-boolean v3, p0, Landroidx/media3/exoplayer/offline/DownloadService;->startedInForeground:Z

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    move-object v2, v1

    :goto_2
    const-string v3, "androidx.media3.exoplayer.downloadService.action.INIT"

    if-nez v1, :cond_3

    move-object v1, v3

    :cond_3
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelper:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    .line 627
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    invoke-static {v4}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->access$100(Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;)Landroidx/media3/exoplayer/offline/DownloadManager;

    move-result-object v4

    .line 628
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string p3, "androidx.media3.exoplayer.downloadService.action.PAUSE_DOWNLOADS"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v6, 0x8

    goto/16 :goto_3

    :sswitch_1
    const-string p3, "androidx.media3.exoplayer.downloadService.action.SET_REQUIREMENTS"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v6, 0x7

    goto :goto_3

    :sswitch_2
    const-string p3, "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x6

    goto :goto_3

    :sswitch_3
    const-string p3, "androidx.media3.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v6, 0x5

    goto :goto_3

    :sswitch_4
    const-string p3, "androidx.media3.exoplayer.downloadService.action.RESUME_DOWNLOADS"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    goto :goto_3

    :cond_8
    const/4 v6, 0x4

    goto :goto_3

    :sswitch_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_3

    :cond_9
    const/4 v6, 0x3

    goto :goto_3

    :sswitch_6
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    goto :goto_3

    :cond_a
    const/4 v6, 0x2

    goto :goto_3

    :sswitch_7
    const-string p3, "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    goto :goto_3

    :cond_b
    move v6, v0

    goto :goto_3

    :sswitch_8
    const-string p3, "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c

    goto :goto_3

    :cond_c
    move v6, p2

    :goto_3
    const-string p3, "stop_reason"

    const-string v3, "DownloadService"

    packed-switch v6, :pswitch_data_0

    .line 679
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Ignored unrecognized action: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 658
    :pswitch_0
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->pauseDownloads()V

    goto :goto_4

    .line 671
    :pswitch_1
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const-string p3, "requirements"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/scheduler/Requirements;

    if-nez p1, :cond_d

    const-string p1, "Ignored SET_REQUIREMENTS: Missing requirements extra"

    .line 673
    invoke-static {v3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 675
    :cond_d
    invoke-virtual {v4, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->setRequirements(Landroidx/media3/exoplayer/scheduler/Requirements;)V

    goto :goto_4

    .line 636
    :pswitch_2
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "download_request"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/DownloadRequest;

    if-nez v1, :cond_e

    const-string p1, "Ignored ADD_DOWNLOAD: Missing download_request extra"

    .line 638
    invoke-static {v3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 640
    :cond_e
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 641
    invoke-virtual {v4, v1, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->addDownload(Landroidx/media3/exoplayer/offline/DownloadRequest;I)V

    goto :goto_4

    .line 652
    :pswitch_3
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->removeAllDownloads()V

    goto :goto_4

    .line 655
    :pswitch_4
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->resumeDownloads()V

    goto :goto_4

    :pswitch_5
    if-nez v2, :cond_f

    const-string p1, "Ignored REMOVE_DOWNLOAD: Missing content_id extra"

    .line 646
    invoke-static {v3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 648
    :cond_f
    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/offline/DownloadManager;->removeDownload(Ljava/lang/String;)V

    goto :goto_4

    .line 661
    :pswitch_6
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string p1, "Ignored SET_STOP_REASON: Missing stop_reason extra"

    .line 662
    invoke-static {v3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 664
    :cond_10
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 665
    invoke-virtual {v4, v2, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->setStopReason(Ljava/lang/String;I)V

    .line 683
    :goto_4
    :pswitch_7
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_11

    iget-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->startedInForeground:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz p1, :cond_11

    .line 685
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->showNotificationIfNotAlready()V

    :cond_11
    iput-boolean p2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->isStopped:Z

    .line 689
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 690
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->onIdle()V

    :cond_12
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7b47cdc8 -> :sswitch_8
        -0x47112489 -> :sswitch_7
        -0x274df87d -> :sswitch_6
        -0xe367804 -> :sswitch_5
        0x1f2a425 -> :sswitch_4
        0x1bab7dfe -> :sswitch_3
        0x3175ed72 -> :sswitch_2
        0x3267e259 -> :sswitch_1
        0x6815b736 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->taskRemoved:Z

    return-void
.end method

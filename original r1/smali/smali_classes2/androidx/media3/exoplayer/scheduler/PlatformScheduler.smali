.class public final Landroidx/media3/exoplayer/scheduler/PlatformScheduler;
.super Ljava/lang/Object;
.source "PlatformScheduler.java"

# interfaces
.implements Landroidx/media3/exoplayer/scheduler/Scheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/scheduler/PlatformScheduler$PlatformSchedulerService;
    }
.end annotation


# static fields
.field private static final KEY_REQUIREMENTS:Ljava/lang/String; = "requirements"

.field private static final KEY_SERVICE_ACTION:Ljava/lang/String; = "service_action"

.field private static final KEY_SERVICE_PACKAGE:Ljava/lang/String; = "service_package"

.field private static final SUPPORTED_REQUIREMENTS:I

.field private static final TAG:Ljava/lang/String; = "PlatformScheduler"


# instance fields
.field private final jobId:I

.field private final jobScheduler:Landroid/app/job/JobScheduler;

.field private final jobServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v0, v0, 0xf

    sput v0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->SUPPORTED_REQUIREMENTS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput p2, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->jobId:I

    .line 77
    new-instance p2, Landroid/content/ComponentName;

    const-class v0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler$PlatformSchedulerService;

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->jobServiceComponentName:Landroid/content/ComponentName;

    const-string p2, "jobscheduler"

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    iput-object p1, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->jobScheduler:Landroid/app/job/JobScheduler;

    return-void
.end method

.method private static buildJobInfo(ILandroid/content/ComponentName;Landroidx/media3/exoplayer/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Landroid/app/job/JobInfo;
    .locals 3

    sget v0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->SUPPORTED_REQUIREMENTS:I

    .line 109
    invoke-virtual {p2, v0}, Landroidx/media3/exoplayer/scheduler/Requirements;->filterRequirements(I)Landroidx/media3/exoplayer/scheduler/Requirements;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring unsupported requirements: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Landroidx/media3/exoplayer/scheduler/Requirements;->getRequirements()I

    move-result v0

    invoke-virtual {p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->getRequirements()I

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformScheduler"

    .line 111
    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 118
    invoke-virtual {p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->isUnmeteredNetworkRequired()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    .line 119
    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->isNetworkRequired()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 121
    invoke-virtual {v0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 123
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->isIdleRequired()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 124
    invoke-virtual {p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->isChargingRequired()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 125
    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p0, v1, :cond_3

    invoke-virtual {p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->isStorageNotLowRequired()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 126
    invoke-virtual {v0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 128
    :cond_3
    invoke-virtual {v0, p1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 130
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    const-string p1, "service_action"

    .line 131
    invoke-virtual {p0, p1, p3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "service_package"

    .line 132
    invoke-virtual {p0, p1, p4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "requirements"

    .line 133
    invoke-virtual {p2}, Landroidx/media3/exoplayer/scheduler/Requirements;->getRequirements()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 134
    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 136
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->jobScheduler:Landroid/app/job/JobScheduler;

    iget p0, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->jobId:I

    .line 92
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->cancel(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public getSupportedRequirements(Landroidx/media3/exoplayer/scheduler/Requirements;)Landroidx/media3/exoplayer/scheduler/Requirements;
    .locals 0

    sget p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->SUPPORTED_REQUIREMENTS:I

    .line 98
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/scheduler/Requirements;->filterRequirements(I)Landroidx/media3/exoplayer/scheduler/Requirements;

    move-result-object p0

    return-object p0
.end method

.method public schedule(Landroidx/media3/exoplayer/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->jobId:I

    iget-object v1, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->jobServiceComponentName:Landroid/content/ComponentName;

    .line 85
    invoke-static {v0, v1, p1, p3, p2}, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->buildJobInfo(ILandroid/content/ComponentName;Landroidx/media3/exoplayer/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Landroid/app/job/JobInfo;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;->jobScheduler:Landroid/app/job/JobScheduler;

    .line 86
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

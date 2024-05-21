.class public final Landroidx/work/ForegroundInfo;
.super Ljava/lang/Object;
.source "ForegroundInfo.java"


# instance fields
.field private final mForegroundServiceType:I

.field private final mNotification:Landroid/app/Notification;

.field private final mNotificationId:I


# direct methods
.method public constructor <init>(ILandroid/app/Notification;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "notificationId",
            "notification"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    return-void
.end method

.method public constructor <init>(ILandroid/app/Notification;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "notificationId",
            "notification",
            "foregroundServiceType"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/work/ForegroundInfo;->mNotificationId:I

    iput-object p2, p0, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    iput p3, p0, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    check-cast p1, Landroidx/work/ForegroundInfo;

    iget v1, p0, Landroidx/work/ForegroundInfo;->mNotificationId:I

    .line 99
    iget v2, p1, Landroidx/work/ForegroundInfo;->mNotificationId:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget v1, p0, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    .line 100
    iget v2, p1, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-object p0, p0, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    .line 101
    iget-object p1, p1, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public getForegroundServiceType()I
    .locals 0

    iget p0, p0, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    return p0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 0

    iget-object p0, p0, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    return-object p0
.end method

.method public getNotificationId()I
    .locals 0

    iget p0, p0, Landroidx/work/ForegroundInfo;->mNotificationId:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/work/ForegroundInfo;->mNotificationId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ForegroundInfo{mNotificationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/work/ForegroundInfo;->mNotificationId:I

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mForegroundServiceType="

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNotification="

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

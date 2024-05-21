.class Landroidx/work/impl/background/systemalarm/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/background/systemalarm/Alarms$Api19Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Alarms"

    .line 48
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/Alarms;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAlarm(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkGenerationalId;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "workDatabase",
            "id"
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->systemIdInfoDao()Landroidx/work/impl/model/SystemIdInfoDao;

    move-result-object p1

    .line 89
    invoke-interface {p1, p2}, Landroidx/work/impl/model/SystemIdInfoDao;->getSystemIdInfo(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/model/SystemIdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget v0, v0, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    invoke-static {p0, p2, v0}, Landroidx/work/impl/background/systemalarm/Alarms;->cancelExactAlarm(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;I)V

    .line 92
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    sget-object v0, Landroidx/work/impl/background/systemalarm/Alarms;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing SystemIdInfo for workSpecId ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {p1, p2}, Landroidx/work/impl/model/SystemIdInfoDao;->removeSystemIdInfo(Landroidx/work/impl/model/WorkGenerationalId;)V

    :cond_0
    return-void
.end method

.method private static cancelExactAlarm(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "alarmId"
        }
    .end annotation

    const-string v0, "alarm"

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 103
    invoke-static {p0, p1}, Landroidx/work/impl/background/systemalarm/CommandHandler;->createDelayMetIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x24000000

    .line 108
    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemalarm/Alarms;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cancelling existing alarm with (workSpecId, systemId) ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public static setAlarm(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkGenerationalId;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "workDatabase",
            "id",
            "triggerAtMillis"
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->systemIdInfoDao()Landroidx/work/impl/model/SystemIdInfoDao;

    move-result-object v0

    .line 64
    invoke-interface {v0, p2}, Landroidx/work/impl/model/SystemIdInfoDao;->getSystemIdInfo(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/model/SystemIdInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    iget p1, v1, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    invoke-static {p0, p2, p1}, Landroidx/work/impl/background/systemalarm/Alarms;->cancelExactAlarm(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;I)V

    .line 67
    iget p1, v1, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    invoke-static {p0, p2, p1, p3, p4}, Landroidx/work/impl/background/systemalarm/Alarms;->setExactAlarm(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;IJ)V

    goto :goto_0

    .line 69
    :cond_0
    new-instance v1, Landroidx/work/impl/utils/IdGenerator;

    invoke-direct {v1, p1}, Landroidx/work/impl/utils/IdGenerator;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 70
    invoke-virtual {v1}, Landroidx/work/impl/utils/IdGenerator;->nextAlarmManagerId()I

    move-result p1

    .line 71
    invoke-static {p2, p1}, Landroidx/work/impl/model/SystemIdInfoKt;->systemIdInfo(Landroidx/work/impl/model/WorkGenerationalId;I)Landroidx/work/impl/model/SystemIdInfo;

    move-result-object v1

    .line 72
    invoke-interface {v0, v1}, Landroidx/work/impl/model/SystemIdInfoDao;->insertSystemIdInfo(Landroidx/work/impl/model/SystemIdInfo;)V

    .line 73
    invoke-static {p0, p2, p1, p3, p4}, Landroidx/work/impl/background/systemalarm/Alarms;->setExactAlarm(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;IJ)V

    :goto_0
    return-void
.end method

.method private static setExactAlarm(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "alarmId",
            "triggerAtMillis"
        }
    .end annotation

    const-string v0, "alarm"

    .line 123
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 128
    invoke-static {p0, p1}, Landroidx/work/impl/background/systemalarm/CommandHandler;->createDelayMetIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0xc000000

    .line 129
    invoke-static {p0, p2, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 132
    invoke-static {v0, p1, p3, p4, p0}, Landroidx/work/impl/background/systemalarm/Alarms$Api19Impl;->setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

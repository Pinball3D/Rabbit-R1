.class Landroidx/core/app/NotificationCompatBuilder$Api20Impl;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api20Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAction(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 0

    .line 661
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method static addExtras(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;
    .locals 0

    .line 654
    invoke-virtual {p0, p1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object p0

    return-object p0
.end method

.method static addRemoteInput(Landroid/app/Notification$Action$Builder;Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;
    .locals 0

    .line 648
    invoke-virtual {p0, p1}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    move-result-object p0

    return-object p0
.end method

.method static build(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;
    .locals 0

    .line 666
    invoke-virtual {p0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method static createBuilder(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;
    .locals 1

    .line 642
    new-instance v0, Landroid/app/Notification$Action$Builder;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .locals 0

    .line 671
    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static setGroup(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0

    .line 676
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setGroupSummary(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;
    .locals 0

    .line 682
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setLocalOnly(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;
    .locals 0

    .line 687
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setSortKey(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0

    .line 692
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

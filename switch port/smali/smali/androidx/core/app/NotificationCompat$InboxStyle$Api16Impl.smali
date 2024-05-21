.class Landroidx/core/app/NotificationCompat$InboxStyle$Api16Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$InboxStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addLine(Landroid/app/Notification$InboxStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 0

    .line 5563
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object p0

    return-object p0
.end method

.method static createInboxStyle(Landroid/app/Notification$Builder;)Landroid/app/Notification$InboxStyle;
    .locals 1

    .line 5545
    new-instance v0, Landroid/app/Notification$InboxStyle;

    invoke-direct {v0, p0}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    return-object v0
.end method

.method static setBigContentTitle(Landroid/app/Notification$InboxStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 0

    .line 5551
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object p0

    return-object p0
.end method

.method static setSummaryText(Landroid/app/Notification$InboxStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 0

    .line 5557
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object p0

    return-object p0
.end method

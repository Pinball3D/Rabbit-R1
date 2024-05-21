.class Landroidx/core/app/NotificationCompat$Builder$Api24Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createBigContentView(Landroid/app/Notification$Builder;)Landroid/widget/RemoteViews;
    .locals 0

    .line 2692
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static createContentView(Landroid/app/Notification$Builder;)Landroid/widget/RemoteViews;
    .locals 0

    .line 2682
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static createHeadsUpContentView(Landroid/app/Notification$Builder;)Landroid/widget/RemoteViews;
    .locals 0

    .line 2687
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 0

    .line 2677
    invoke-static {p0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

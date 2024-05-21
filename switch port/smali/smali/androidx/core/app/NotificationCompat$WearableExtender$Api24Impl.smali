.class Landroidx/core/app/NotificationCompat$WearableExtender$Api24Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$WearableExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setAllowGeneratedReplies(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;
    .locals 0

    .line 7810
    invoke-virtual {p0, p1}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    move-result-object p0

    return-object p0
.end method

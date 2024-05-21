.class Landroidx/core/app/NotificationCompat$Api24Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAllowGeneratedReplies(Landroid/app/Notification$Action;)Z
    .locals 0

    .line 9786
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result p0

    return p0
.end method

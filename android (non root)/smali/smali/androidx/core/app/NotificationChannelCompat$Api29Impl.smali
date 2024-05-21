.class Landroidx/core/app/NotificationChannelCompat$Api29Impl;
.super Ljava/lang/Object;
.source "NotificationChannelCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationChannelCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canBubble(Landroid/app/NotificationChannel;)Z
    .locals 0

    .line 667
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result p0

    return p0
.end method

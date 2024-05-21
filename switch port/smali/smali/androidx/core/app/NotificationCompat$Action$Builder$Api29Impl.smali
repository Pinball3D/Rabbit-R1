.class Landroidx/core/app/NotificationCompat$Action$Builder$Api29Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Action$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isContextual(Landroid/app/Notification$Action;)Z
    .locals 0

    .line 6434
    invoke-virtual {p0}, Landroid/app/Notification$Action;->isContextual()Z

    move-result p0

    return p0
.end method

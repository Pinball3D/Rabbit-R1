.class Landroidx/core/app/ServiceCompat$Api34Impl;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api34Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V
    .locals 1

    if-eqz p3, :cond_1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x40000fff    # 2.0009763f

    and-int/2addr p3, v0

    .line 240
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_1

    .line 238
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    :goto_1
    return-void
.end method

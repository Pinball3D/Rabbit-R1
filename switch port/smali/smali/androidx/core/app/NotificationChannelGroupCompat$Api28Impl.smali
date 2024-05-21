.class Landroidx/core/app/NotificationChannelGroupCompat$Api28Impl;
.super Ljava/lang/Object;
.source "NotificationChannelGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationChannelGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDescription(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;
    .locals 0

    .line 273
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static isBlocked(Landroid/app/NotificationChannelGroup;)Z
    .locals 0

    .line 268
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p0

    return p0
.end method

.method static setDescription(Landroid/app/NotificationChannelGroup;Ljava/lang/String;)V
    .locals 0

    .line 279
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannelGroup;->setDescription(Ljava/lang/String;)V

    return-void
.end method

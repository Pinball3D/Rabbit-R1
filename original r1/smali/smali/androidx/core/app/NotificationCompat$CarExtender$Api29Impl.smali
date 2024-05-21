.class Landroidx/core/app/NotificationCompat$CarExtender$Api29Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEditChoicesBeforeSending(Landroid/app/RemoteInput;)I
    .locals 0

    .line 8367
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result p0

    return p0
.end method

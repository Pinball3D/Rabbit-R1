.class Landroidx/core/app/NotificationCompat$Api29Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAllowSystemGeneratedContextualActions(Landroid/app/Notification;)Z
    .locals 0

    .line 9857
    invoke-virtual {p0}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result p0

    return p0
.end method

.method static getBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;
    .locals 0

    .line 9877
    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    return-object p0
.end method

.method static getEditChoicesBeforeSending(Landroid/app/RemoteInput;)I
    .locals 0

    .line 9872
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result p0

    return p0
.end method

.method static getLocusId(Landroid/app/Notification;)Landroid/content/LocusId;
    .locals 0

    .line 9862
    invoke-virtual {p0}, Landroid/app/Notification;->getLocusId()Landroid/content/LocusId;

    move-result-object p0

    return-object p0
.end method

.method static isContextual(Landroid/app/Notification$Action;)Z
    .locals 0

    .line 9867
    invoke-virtual {p0}, Landroid/app/Notification$Action;->isContextual()Z

    move-result p0

    return p0
.end method

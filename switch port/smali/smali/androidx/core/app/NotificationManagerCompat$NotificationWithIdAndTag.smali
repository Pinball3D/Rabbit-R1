.class public Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationWithIdAndTag"
.end annotation


# instance fields
.field final mId:I

.field mNotification:Landroid/app/Notification;

.field final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/app/Notification;)V
    .locals 1

    const/4 v0, 0x0

    .line 330
    invoke-direct {p0, v0, p1, p2}, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;-><init>(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;->mTag:Ljava/lang/String;

    iput p2, p0, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;->mId:I

    iput-object p3, p0, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;->mNotification:Landroid/app/Notification;

    return-void
.end method

.class Landroidx/core/app/NotificationCompat$Action$Builder$Api23Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Action$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getIcon(Landroid/app/Notification$Action;)Landroid/graphics/drawable/Icon;
    .locals 0

    .line 6389
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

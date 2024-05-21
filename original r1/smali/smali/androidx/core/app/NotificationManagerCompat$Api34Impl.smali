.class Landroidx/core/app/NotificationManagerCompat$Api34Impl;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api34Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canUseFullScreenIntent(Landroid/app/NotificationManager;)Z
    .locals 0

    .line 1413
    invoke-virtual {p0}, Landroid/app/NotificationManager;->canUseFullScreenIntent()Z

    move-result p0

    return p0
.end method

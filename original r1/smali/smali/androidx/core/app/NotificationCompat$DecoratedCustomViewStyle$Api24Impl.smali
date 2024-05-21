.class Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle$Api24Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createDecoratedCustomViewStyle()Landroid/app/Notification$DecoratedCustomViewStyle;
    .locals 1

    .line 5798
    new-instance v0, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {v0}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    return-object v0
.end method

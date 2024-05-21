.class Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle$Api16Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setStyle(Landroid/app/Notification$Builder;Ljava/lang/Object;)Landroid/app/Notification$Builder;
    .locals 0

    .line 5782
    check-cast p1, Landroid/app/Notification$Style;

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

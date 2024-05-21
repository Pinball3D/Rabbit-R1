.class Landroidx/core/app/NotificationCompatBuilder$Api23Impl;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createBuilder(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;
    .locals 1

    .line 749
    new-instance v0, Landroid/app/Notification$Action$Builder;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method static setLargeIcon(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 0

    .line 760
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setSmallIcon(Landroid/app/Notification$Builder;Ljava/lang/Object;)Landroid/app/Notification$Builder;
    .locals 0

    .line 755
    check-cast p1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

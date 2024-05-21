.class Landroidx/core/app/NotificationCompatBuilder$Api16Impl;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static build(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 0

    .line 594
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static setPriority(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;
    .locals 0

    .line 589
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setSubText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0

    .line 579
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setUsesChronometer(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;
    .locals 0

    .line 584
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

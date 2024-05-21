.class Landroidx/core/app/NotificationCompatBuilder$Api31Impl;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setAuthenticationRequired(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;
    .locals 0

    .line 921
    invoke-virtual {p0, p1}, Landroid/app/Notification$Action$Builder;->setAuthenticationRequired(Z)Landroid/app/Notification$Action$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setForegroundServiceBehavior(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;
    .locals 0

    .line 927
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

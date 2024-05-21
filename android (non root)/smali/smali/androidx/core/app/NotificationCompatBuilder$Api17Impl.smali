.class Landroidx/core/app/NotificationCompatBuilder$Api17Impl;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setShowWhen(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;
    .locals 0

    .line 610
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

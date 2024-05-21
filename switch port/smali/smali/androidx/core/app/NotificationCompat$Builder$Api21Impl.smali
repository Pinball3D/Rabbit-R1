.class Landroidx/core/app/NotificationCompat$Builder$Api21Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static build(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;
    .locals 0

    .line 2642
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method static createBuilder()Landroid/media/AudioAttributes$Builder;
    .locals 1

    .line 2620
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    return-object v0
.end method

.method static setContentType(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;
    .locals 0

    .line 2626
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setLegacyStreamType(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;
    .locals 0

    .line 2637
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setUsage(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;
    .locals 0

    .line 2631
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    return-object p0
.end method

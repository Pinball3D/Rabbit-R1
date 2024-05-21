.class Landroidx/core/app/NotificationCompat$CallStyle$Api28Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$CallStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addPerson(Landroid/app/Notification$Builder;Landroid/app/Person;)Landroid/app/Notification$Builder;
    .locals 0

    .line 5345
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method static castToParcelable(Landroid/app/Person;)Landroid/os/Parcelable;
    .locals 0

    return-object p0
.end method

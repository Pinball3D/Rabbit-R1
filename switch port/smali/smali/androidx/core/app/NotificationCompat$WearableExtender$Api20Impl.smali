.class Landroidx/core/app/NotificationCompat$WearableExtender$Api20Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$WearableExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api20Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addExtras(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;
    .locals 0

    .line 7759
    invoke-virtual {p0, p1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object p0

    return-object p0
.end method

.method static addRemoteInput(Landroid/app/Notification$Action$Builder;Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;
    .locals 0

    .line 7765
    invoke-virtual {p0, p1}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    move-result-object p0

    return-object p0
.end method

.method static build(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;
    .locals 0

    .line 7770
    invoke-virtual {p0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method static createBuilder(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;
    .locals 1

    .line 7753
    new-instance v0, Landroid/app/Notification$Action$Builder;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static getActionCompatFromAction(Ljava/util/ArrayList;I)Landroidx/core/app/NotificationCompat$Action;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Parcelable;",
            ">;I)",
            "Landroidx/core/app/NotificationCompat$Action;"
        }
    .end annotation

    .line 7778
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$Action;

    .line 7777
    invoke-static {p0}, Landroidx/core/app/NotificationCompat;->getActionCompatFromAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object p0

    return-object p0
.end method

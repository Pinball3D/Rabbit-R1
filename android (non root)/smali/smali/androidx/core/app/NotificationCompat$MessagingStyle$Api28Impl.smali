.class Landroidx/core/app/NotificationCompat$MessagingStyle$Api28Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createMessagingStyle(Landroid/app/Person;)Landroid/app/Notification$MessagingStyle;
    .locals 1

    .line 4635
    new-instance v0, Landroid/app/Notification$MessagingStyle;

    invoke-direct {v0, p0}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    return-object v0
.end method

.method static setGroupConversation(Landroid/app/Notification$MessagingStyle;Z)Landroid/app/Notification$MessagingStyle;
    .locals 0

    .line 4641
    invoke-virtual {p0, p1}, Landroid/app/Notification$MessagingStyle;->setGroupConversation(Z)Landroid/app/Notification$MessagingStyle;

    move-result-object p0

    return-object p0
.end method

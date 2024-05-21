.class Landroidx/core/app/NotificationCompat$MessagingStyle$Api24Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addMessage(Landroid/app/Notification$MessagingStyle;Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .locals 0

    .line 4596
    invoke-virtual {p0, p1}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    move-result-object p0

    return-object p0
.end method

.method static createMessagingStyle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .locals 1

    .line 4589
    new-instance v0, Landroid/app/Notification$MessagingStyle;

    invoke-direct {v0, p0}, Landroid/app/Notification$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static setConversationTitle(Landroid/app/Notification$MessagingStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .locals 0

    .line 4602
    invoke-virtual {p0, p1}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-result-object p0

    return-object p0
.end method

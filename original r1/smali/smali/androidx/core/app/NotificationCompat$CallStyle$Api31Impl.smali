.class Landroidx/core/app/NotificationCompat$CallStyle$Api31Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$CallStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static forIncomingCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .locals 0

    .line 5367
    invoke-static {p0, p1, p2}, Landroid/app/Notification$CallStyle;->forIncomingCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    move-result-object p0

    return-object p0
.end method

.method static forOngoingCall(Landroid/app/Person;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .locals 0

    .line 5373
    invoke-static {p0, p1}, Landroid/app/Notification$CallStyle;->forOngoingCall(Landroid/app/Person;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    move-result-object p0

    return-object p0
.end method

.method static forScreeningCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .locals 0

    .line 5379
    invoke-static {p0, p1, p2}, Landroid/app/Notification$CallStyle;->forScreeningCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    move-result-object p0

    return-object p0
.end method

.method static setAnswerButtonColorHint(Landroid/app/Notification$CallStyle;I)Landroid/app/Notification$CallStyle;
    .locals 0

    .line 5403
    invoke-virtual {p0, p1}, Landroid/app/Notification$CallStyle;->setAnswerButtonColorHint(I)Landroid/app/Notification$CallStyle;

    move-result-object p0

    return-object p0
.end method

.method static setAuthenticationRequired(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;
    .locals 0

    .line 5415
    invoke-virtual {p0, p1}, Landroid/app/Notification$Action$Builder;->setAuthenticationRequired(Z)Landroid/app/Notification$Action$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setDeclineButtonColorHint(Landroid/app/Notification$CallStyle;I)Landroid/app/Notification$CallStyle;
    .locals 0

    .line 5409
    invoke-virtual {p0, p1}, Landroid/app/Notification$CallStyle;->setDeclineButtonColorHint(I)Landroid/app/Notification$CallStyle;

    move-result-object p0

    return-object p0
.end method

.method static setIsVideo(Landroid/app/Notification$CallStyle;Z)Landroid/app/Notification$CallStyle;
    .locals 0

    .line 5385
    invoke-virtual {p0, p1}, Landroid/app/Notification$CallStyle;->setIsVideo(Z)Landroid/app/Notification$CallStyle;

    move-result-object p0

    return-object p0
.end method

.method static setVerificationIcon(Landroid/app/Notification$CallStyle;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$CallStyle;
    .locals 0

    .line 5391
    invoke-virtual {p0, p1}, Landroid/app/Notification$CallStyle;->setVerificationIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$CallStyle;

    move-result-object p0

    return-object p0
.end method

.method static setVerificationText(Landroid/app/Notification$CallStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$CallStyle;
    .locals 0

    .line 5397
    invoke-virtual {p0, p1}, Landroid/app/Notification$CallStyle;->setVerificationText(Ljava/lang/CharSequence;)Landroid/app/Notification$CallStyle;

    move-result-object p0

    return-object p0
.end method

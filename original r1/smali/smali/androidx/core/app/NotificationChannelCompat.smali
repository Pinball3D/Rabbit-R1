.class public Landroidx/core/app/NotificationChannelCompat;
.super Ljava/lang/Object;
.source "NotificationChannelCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationChannelCompat$Api26Impl;,
        Landroidx/core/app/NotificationChannelCompat$Api30Impl;,
        Landroidx/core/app/NotificationChannelCompat$Api29Impl;,
        Landroidx/core/app/NotificationChannelCompat$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "miscellaneous"

.field private static final DEFAULT_LIGHT_COLOR:I = 0x0

.field private static final DEFAULT_SHOW_BADGE:Z = true


# instance fields
.field mAudioAttributes:Landroid/media/AudioAttributes;

.field private mBypassDnd:Z

.field private mCanBubble:Z

.field mConversationId:Ljava/lang/String;

.field mDescription:Ljava/lang/String;

.field mGroupId:Ljava/lang/String;

.field final mId:Ljava/lang/String;

.field mImportance:I

.field private mImportantConversation:Z

.field mLightColor:I

.field mLights:Z

.field private mLockscreenVisibility:I

.field mName:Ljava/lang/CharSequence;

.field mParentId:Ljava/lang/String;

.field mShowBadge:Z

.field mSound:Landroid/net/Uri;

.field mVibrationEnabled:Z

.field mVibrationPattern:[J


# direct methods
.method constructor <init>(Landroid/app/NotificationChannel;)V
    .locals 2

    .line 285
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->getId(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->getImportance(Landroid/app/NotificationChannel;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/core/app/NotificationChannelCompat;-><init>(Ljava/lang/String;I)V

    .line 287
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->getName(Landroid/app/NotificationChannel;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    .line 288
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->getDescription(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    .line 289
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->getGroup(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    .line 290
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->canShowBadge(Landroid/app/NotificationChannel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    .line 291
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->getSound(Landroid/app/NotificationChannel;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    .line 292
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->getAudioAttributes(Landroid/app/NotificationChannel;)Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 293
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->shouldShowLights(Landroid/app/NotificationChannel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mLights:Z

    .line 294
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->getLightColor(Landroid/app/NotificationChannel;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    .line 295
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->shouldVibrate(Landroid/app/NotificationChannel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    .line 296
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->getVibrationPattern(Landroid/app/NotificationChannel;)[J

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationPattern:[J

    .line 298
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api30Impl;->getParentChannelId(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    .line 299
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api30Impl;->getConversationId(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    .line 302
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->canBypassDnd(Landroid/app/NotificationChannel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mBypassDnd:Z

    .line 303
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->getLockscreenVisibility(Landroid/app/NotificationChannel;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationChannelCompat;->mLockscreenVisibility:I

    .line 305
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api29Impl;->canBubble(Landroid/app/NotificationChannel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mCanBubble:Z

    .line 308
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api30Impl;->isImportantConversation(Landroid/app/NotificationChannel;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/core/app/NotificationChannelCompat;->mImportantConversation:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    .line 61
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    .line 276
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    iput p2, p0, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    .line 279
    sget-object p1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object p1, p0, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method


# virtual methods
.method public canBubble()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/NotificationChannelCompat;->mCanBubble:Z

    return p0
.end method

.method public canBypassDnd()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/NotificationChannelCompat;->mBypassDnd:Z

    return p0
.end method

.method public canShowBadge()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    return p0
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getImportance()I
    .locals 0

    iget p0, p0, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    return p0
.end method

.method public getLightColor()I
    .locals 0

    iget p0, p0, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    return p0
.end method

.method public getLockscreenVisibility()I
    .locals 0

    iget p0, p0, Landroidx/core/app/NotificationChannelCompat;->mLockscreenVisibility:I

    return p0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method getNotificationChannel()Landroid/app/NotificationChannel;
    .locals 3

    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    iget v2, p0, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    .line 321
    invoke-static {v0, v1, v2}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->createNotificationChannel(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    .line 322
    invoke-static {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setDescription(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    .line 323
    invoke-static {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setGroup(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    .line 324
    invoke-static {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setShowBadge(Landroid/app/NotificationChannel;Z)V

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 325
    invoke-static {v0, v1, v2}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setSound(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->mLights:Z

    .line 326
    invoke-static {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->enableLights(Landroid/app/NotificationChannel;Z)V

    iget v1, p0, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    .line 327
    invoke-static {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setLightColor(Landroid/app/NotificationChannel;I)V

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationPattern:[J

    .line 328
    invoke-static {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setVibrationPattern(Landroid/app/NotificationChannel;[J)V

    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    .line 329
    invoke-static {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->enableVibration(Landroid/app/NotificationChannel;Z)V

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 331
    invoke-static {v0, v1, p0}, Landroidx/core/app/NotificationChannelCompat$Api30Impl;->setConversationId(Landroid/app/NotificationChannel;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getParentChannelId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    return-object p0
.end method

.method public getSound()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    return-object p0
.end method

.method public getVibrationPattern()[J
    .locals 0

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationPattern:[J

    return-object p0
.end method

.method public isImportantConversation()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/NotificationChannelCompat;->mImportantConversation:Z

    return p0
.end method

.method public shouldShowLights()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/NotificationChannelCompat;->mLights:Z

    return p0
.end method

.method public shouldVibrate()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    return p0
.end method

.method public toBuilder()Landroidx/core/app/NotificationChannelCompat$Builder;
    .locals 3

    .line 341
    new-instance v0, Landroidx/core/app/NotificationChannelCompat$Builder;

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    iget v2, p0, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    .line 342
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    .line 343
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setDescription(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    .line 344
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    .line 345
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setShowBadge(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 346
    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->mLights:Z

    .line 347
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setLightsEnabled(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    .line 348
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setLightColor(I)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    .line 349
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setVibrationEnabled(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationPattern:[J

    .line 350
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setVibrationPattern([J)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    .line 351
    invoke-virtual {v0, v1, p0}, Landroidx/core/app/NotificationChannelCompat$Builder;->setConversationId(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object p0

    return-object p0
.end method

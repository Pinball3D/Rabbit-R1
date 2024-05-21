.class public final Landroidx/core/app/NotificationCompat$TvExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroidx/core/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvExtender"
.end annotation


# static fields
.field static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field static final EXTRA_CONTENT_INTENT:Ljava/lang/String; = "content_intent"

.field static final EXTRA_DELETE_INTENT:Ljava/lang/String; = "delete_intent"

.field private static final EXTRA_FLAGS:Ljava/lang/String; = "flags"

.field static final EXTRA_SUPPRESS_SHOW_OVER_APPS:Ljava/lang/String; = "suppressShowOverApps"

.field static final EXTRA_TV_EXTENDER:Ljava/lang/String; = "android.tv.EXTENSIONS"

.field private static final FLAG_AVAILABLE_ON_TV:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TvExtender"


# instance fields
.field private mChannelId:Ljava/lang/String;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mSuppressShowOverApps:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 1

    .line 8436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8444
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 8445
    :cond_0
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.tv.EXTENSIONS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "flags"

    .line 8447
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mFlags:I

    const-string v0, "channel_id"

    .line 8448
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mChannelId:Ljava/lang/String;

    const-string/jumbo v0, "suppressShowOverApps"

    .line 8449
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mSuppressShowOverApps:Z

    const-string v0, "content_intent"

    .line 8450
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    const-string v0, "delete_intent"

    .line 8451
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    :cond_1
    return-void
.end method


# virtual methods
.method public extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 3

    .line 8471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "flags"

    iget v2, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mFlags:I

    .line 8473
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "channel_id"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mChannelId:Ljava/lang/String;

    .line 8474
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "suppressShowOverApps"

    iget-boolean v2, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mSuppressShowOverApps:Z

    .line 8475
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    const-string v2, "content_intent"

    .line 8477
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_1

    const-string v1, "delete_intent"

    .line 8481
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8485
    :cond_1
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "android.tv.EXTENSIONS"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public isAvailableOnTv()Z
    .locals 1

    iget p0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuppressShowOverApps()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mSuppressShowOverApps:Z

    return p0
.end method

.method public setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$TvExtender;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$TvExtender;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$TvExtender;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setSuppressShowOverApps(Z)Landroidx/core/app/NotificationCompat$TvExtender;
    .locals 0

    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mSuppressShowOverApps:Z

    return-object p0
.end method

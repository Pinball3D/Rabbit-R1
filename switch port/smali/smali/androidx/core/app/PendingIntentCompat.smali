.class public final Landroidx/core/app/PendingIntentCompat;
.super Ljava/lang/Object;
.source "PendingIntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/PendingIntentCompat$Api16Impl;,
        Landroidx/core/app/PendingIntentCompat$Api26Impl;,
        Landroidx/core/app/PendingIntentCompat$GatedCallback;,
        Landroidx/core/app/PendingIntentCompat$Api23Impl;,
        Landroidx/core/app/PendingIntentCompat$Flags;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addMutabilityFlags(ZI)I
    .locals 0

    if-eqz p0, :cond_0

    const/high16 p0, 0x2000000

    goto :goto_0

    :cond_0
    const/high16 p0, 0x4000000

    :goto_0
    or-int/2addr p0, p1

    return p0
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Z)Landroid/app/PendingIntent;
    .locals 0

    .line 81
    invoke-static {p5, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 80
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/app/PendingIntentCompat$Api16Impl;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .locals 0

    .line 100
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 99
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Z)Landroid/app/PendingIntent;
    .locals 0

    .line 140
    invoke-static {p5, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 139
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/app/PendingIntentCompat$Api16Impl;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .locals 0

    .line 119
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 118
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getBroadcast(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .locals 0

    .line 162
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 161
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getForegroundService(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .locals 0

    .line 179
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 178
    invoke-static {p0, p1, p2, p3}, Landroidx/core/app/PendingIntentCompat$Api26Impl;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .locals 0

    .line 198
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 197
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static send(Landroid/app/PendingIntent;ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 217
    new-instance v0, Landroidx/core/app/PendingIntentCompat$GatedCallback;

    invoke-direct {v0, p2}, Landroidx/core/app/PendingIntentCompat$GatedCallback;-><init>(Landroid/app/PendingIntent$OnFinished;)V

    .line 218
    :try_start_0
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->getCallback()Landroid/app/PendingIntent$OnFinished;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/PendingIntent;->send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 219
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->complete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 217
    :try_start_1
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static send(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 242
    invoke-static/range {v0 .. v7}, Landroidx/core/app/PendingIntentCompat;->send(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static send(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 267
    new-instance v0, Landroidx/core/app/PendingIntentCompat$GatedCallback;

    invoke-direct {v0, p4}, Landroidx/core/app/PendingIntentCompat$GatedCallback;-><init>(Landroid/app/PendingIntent$OnFinished;)V

    .line 269
    :try_start_0
    invoke-static/range {p0 .. p7}, Landroidx/core/app/PendingIntentCompat$Api23Impl;->send(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 282
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->complete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 267
    :try_start_1
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

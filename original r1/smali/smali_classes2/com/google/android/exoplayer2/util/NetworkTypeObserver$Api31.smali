.class final Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31;
.super Ljava/lang/Object;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31$DisplayInfoCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disambiguate4gAnd5gNsa(Landroid/content/Context;Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V
    .locals 2

    :try_start_0
    const-string v0, "phone"

    .line 231
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 232
    new-instance v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31$DisplayInfoCallback;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31$DisplayInfoCallback;-><init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 236
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x5

    .line 239
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->access$200(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;I)V

    :goto_0
    return-void
.end method

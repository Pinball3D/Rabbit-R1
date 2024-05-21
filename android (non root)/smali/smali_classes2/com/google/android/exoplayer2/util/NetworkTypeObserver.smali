.class public final Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
.super Ljava/lang/Object;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31;,
        Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;,
        Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;
    }
.end annotation


# static fields
.field private static staticInstance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;


# instance fields
.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field private networkType:I

.field private final networkTypeLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->mainHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->networkType:I

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;-><init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;Lcom/google/android/exoplayer2/util/NetworkTypeObserver$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)I
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getNetworkTypeFromConnectivityManager(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->updateNetworkType(I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
    .locals 2

    const-class v0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->staticInstance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->staticInstance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    :cond_0
    sget-object p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->staticInstance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getMobileNetworkType(Landroid/net/NetworkInfo;)I
    .locals 1

    .line 180
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    .line 201
    :pswitch_1
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_0

    const/16 p0, 0x9

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x5

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getNetworkTypeFromConnectivityManager(Landroid/content/Context;)I
    .locals 2

    const-string v0, "connectivity"

    .line 150
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 155
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    .line 160
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v0, :cond_4

    const/4 v0, 0x4

    if-eq v1, v0, :cond_5

    const/4 v0, 0x5

    if-eq v1, v0, :cond_5

    const/4 p0, 0x6

    if-eq v1, p0, :cond_3

    const/16 p0, 0x9

    if-eq v1, p0, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    const/4 p0, 0x7

    return p0

    :cond_3
    return v0

    :cond_4
    const/4 p0, 0x2

    return p0

    .line 171
    :cond_5
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getMobileNetworkType(Landroid/net/NetworkInfo;)I

    move-result p0

    return p0

    :catch_0
    :cond_6
    :goto_0
    return v0
.end method

.method private removeClearedReferences()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 122
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 123
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 124
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized resetForTests()V
    .locals 2

    const-class v0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->staticInstance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateNetworkType(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    .line 130
    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->networkType:I

    if-ne v1, p1, :cond_0

    .line 132
    monitor-exit v0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->networkType:I

    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 136
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 137
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;

    if-eqz v2, :cond_1

    .line 139
    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;->onNetworkTypeChanged(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 141
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 135
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getNetworkType()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    .line 116
    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->networkType:I

    .line 117
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method synthetic lambda$register$0$com-google-android-exoplayer2-util-NetworkTypeObserver(Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getNetworkType()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;->onNetworkTypeChanged(I)V

    return-void
.end method

.method public register(Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->removeClearedReferences()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 108
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->mainHandler:Landroid/os/Handler;

    .line 111
    new-instance v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

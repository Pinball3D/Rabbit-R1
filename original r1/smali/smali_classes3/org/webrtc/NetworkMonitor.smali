.class public Lorg/webrtc/NetworkMonitor;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/NetworkMonitor$InstanceHolder;,
        Lorg/webrtc/NetworkMonitor$NetworkObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"


# instance fields
.field private volatile currentConnectionType:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

.field private final nativeNetworkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private networkChangeDetector:Lorg/webrtc/NetworkChangeDetector;

.field private networkChangeDetectorFactory:Lorg/webrtc/NetworkChangeDetectorFactory;

.field private final networkChangeDetectorLock:Ljava/lang/Object;

.field private final networkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/webrtc/NetworkMonitor$NetworkObserver;",
            ">;"
        }
    .end annotation
.end field

.field private numObservers:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/webrtc/NetworkMonitor$1;

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor$1;-><init>(Lorg/webrtc/NetworkMonitor;)V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetectorFactory:Lorg/webrtc/NetworkChangeDetectorFactory;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/NetworkMonitor;->numObservers:I

    .line 71
    sget-object v0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/NetworkMonitor$1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/webrtc/NetworkMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/NetworkMonitor;Lorg/webrtc/NetworkChangeDetector$ConnectionType;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->updateCurrentConnectionType(Lorg/webrtc/NetworkChangeDetector$ConnectionType;)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/NetworkMonitor;Lorg/webrtc/NetworkChangeDetector$NetworkInformation;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfNetworkConnect(Lorg/webrtc/NetworkChangeDetector$NetworkInformation;)V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/NetworkMonitor;J)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfNetworkDisconnect(J)V

    return-void
.end method

.method static synthetic access$400(Lorg/webrtc/NetworkMonitor;Ljava/util/List;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfNetworkPreference(Ljava/util/List;I)V

    return-void
.end method

.method public static addNetworkObserver(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/webrtc/NetworkMonitor;->addObserver(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V

    return-void
.end method

.method private static androidSdkInt()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static assertIsTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 95
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method static createAndSetAutoDetectForTest(Landroid/content/Context;)Lorg/webrtc/NetworkMonitorAutoDetect;
    .locals 1

    .line 343
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    .line 345
    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;->createNetworkChangeDetector(Landroid/content/Context;)Lorg/webrtc/NetworkChangeDetector;

    move-result-object p0

    .line 346
    iput-object p0, v0, Lorg/webrtc/NetworkMonitor;->networkChangeDetector:Lorg/webrtc/NetworkChangeDetector;

    .line 347
    check-cast p0, Lorg/webrtc/NetworkMonitorAutoDetect;

    return-object p0
.end method

.method private createNetworkChangeDetector(Landroid/content/Context;)Lorg/webrtc/NetworkChangeDetector;
    .locals 2

    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetectorFactory:Lorg/webrtc/NetworkChangeDetectorFactory;

    .line 181
    new-instance v1, Lorg/webrtc/NetworkMonitor$2;

    invoke-direct {v1, p0}, Lorg/webrtc/NetworkMonitor$2;-><init>(Lorg/webrtc/NetworkMonitor;)V

    invoke-interface {v0, v1, p1}, Lorg/webrtc/NetworkChangeDetectorFactory;->create(Lorg/webrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)Lorg/webrtc/NetworkChangeDetector;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentConnectionType()Lorg/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0
.end method

.method public static getInstance()Lorg/webrtc/NetworkMonitor;
    .locals 1

    .line 90
    sget-object v0, Lorg/webrtc/NetworkMonitor$InstanceHolder;->instance:Lorg/webrtc/NetworkMonitor;

    return-object v0
.end method

.method private getNativeNetworkObserversSync()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 269
    monitor-enter v0

    .line 270
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 271
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static isOnline()Z
    .locals 2

    .line 308
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0}, Lorg/webrtc/NetworkMonitor;->getCurrentConnectionType()Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object v0

    .line 309
    sget-object v1, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private native nativeNotifyConnectionTypeChanged(J)V
.end method

.method private native nativeNotifyOfActiveNetworkList(J[Lorg/webrtc/NetworkChangeDetector$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkConnect(JLorg/webrtc/NetworkChangeDetector$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkDisconnect(JJ)V
.end method

.method private native nativeNotifyOfNetworkPreference(JLorg/webrtc/NetworkChangeDetector$ConnectionType;I)V
.end method

.method private networkBindingSupported()Z
    .locals 1

    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    .line 166
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetector:Lorg/webrtc/NetworkChangeDetector;

    if-eqz p0, :cond_0

    .line 167
    invoke-interface {p0}, Lorg/webrtc/NetworkChangeDetector;->supportNetworkCallback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyObserversOfConnectionTypeChange(Lorg/webrtc/NetworkChangeDetector$ConnectionType;)V
    .locals 3

    .line 213
    invoke-direct {p0}, Lorg/webrtc/NetworkMonitor;->getNativeNetworkObserversSync()Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 215
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/webrtc/NetworkMonitor;->nativeNotifyConnectionTypeChanged(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 219
    monitor-enter v0

    .line 220
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/NetworkMonitor$NetworkObserver;

    .line 223
    invoke-interface {v0, p1}, Lorg/webrtc/NetworkMonitor$NetworkObserver;->onConnectionTypeChanged(Lorg/webrtc/NetworkChangeDetector$ConnectionType;)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 221
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private notifyObserversOfNetworkConnect(Lorg/webrtc/NetworkChangeDetector$NetworkInformation;)V
    .locals 3

    .line 229
    invoke-direct {p0}, Lorg/webrtc/NetworkMonitor;->getNativeNetworkObserversSync()Ljava/util/List;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 231
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1}, Lorg/webrtc/NetworkMonitor;->nativeNotifyOfNetworkConnect(JLorg/webrtc/NetworkChangeDetector$NetworkInformation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyObserversOfNetworkDisconnect(J)V
    .locals 3

    .line 236
    invoke-direct {p0}, Lorg/webrtc/NetworkMonitor;->getNativeNetworkObserversSync()Ljava/util/List;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 238
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1, p2}, Lorg/webrtc/NetworkMonitor;->nativeNotifyOfNetworkDisconnect(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyObserversOfNetworkPreference(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/webrtc/NetworkChangeDetector$ConnectionType;",
            ">;I)V"
        }
    .end annotation

    .line 244
    invoke-direct {p0}, Lorg/webrtc/NetworkMonitor;->getNativeNetworkObserversSync()Ljava/util/List;

    move-result-object v0

    .line 245
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    .line 246
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 247
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1, p2}, Lorg/webrtc/NetworkMonitor;->nativeNotifyOfNetworkPreference(JLorg/webrtc/NetworkChangeDetector$ConnectionType;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static removeNetworkObserver(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/webrtc/NetworkMonitor;->removeObserver(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V

    return-void
.end method

.method private startMonitoring(Landroid/content/Context;J)V
    .locals 3

    const-string v0, "NetworkMonitor"

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start monitoring with native observer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lorg/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 129
    :goto_0
    invoke-virtual {p0, p1}, Lorg/webrtc/NetworkMonitor;->startMonitoring(Landroid/content/Context;)V

    iget-object p1, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 132
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 133
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-direct {p0, p2, p3}, Lorg/webrtc/NetworkMonitor;->updateObserverActiveNetworkList(J)V

    iget-object p1, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    .line 138
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfConnectionTypeChange(Lorg/webrtc/NetworkChangeDetector$ConnectionType;)V

    return-void

    :catchall_0
    move-exception p0

    .line 134
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private stopMonitoring(J)V
    .locals 3

    const-string v0, "NetworkMonitor"

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stop monitoring with native observer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitor;->stopMonitoring()V

    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 158
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 159
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private updateCurrentConnectionType(Lorg/webrtc/NetworkChangeDetector$ConnectionType;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    .line 207
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfConnectionTypeChange(Lorg/webrtc/NetworkChangeDetector$ConnectionType;)V

    return-void
.end method

.method private updateObserverActiveNetworkList(J)V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    .line 254
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetector:Lorg/webrtc/NetworkChangeDetector;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 256
    :cond_0
    invoke-interface {v1}, Lorg/webrtc/NetworkChangeDetector;->getActiveNetworkList()Ljava/util/List;

    move-result-object v1

    .line 257
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 258
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/webrtc/NetworkChangeDetector$NetworkInformation;

    .line 264
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/NetworkChangeDetector$NetworkInformation;

    .line 265
    invoke-direct {p0, p1, p2, v0}, Lorg/webrtc/NetworkMonitor;->nativeNotifyOfActiveNetworkList(J[Lorg/webrtc/NetworkChangeDetector$NetworkInformation;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 257
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public addObserver(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 285
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 286
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getNetworkChangeDetector()Lorg/webrtc/NetworkChangeDetector;
    .locals 1

    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    .line 329
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetector:Lorg/webrtc/NetworkChangeDetector;

    .line 330
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 331
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getNumObservers()I
    .locals 1

    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    .line 336
    monitor-enter v0

    :try_start_0
    iget p0, p0, Lorg/webrtc/NetworkMonitor;->numObservers:I

    .line 337
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 338
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeObserver(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 301
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 302
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 303
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setNetworkChangeDetectorFactory(Lorg/webrtc/NetworkChangeDetectorFactory;)V
    .locals 1

    iget v0, p0, Lorg/webrtc/NetworkMonitor;->numObservers:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    invoke-static {v0}, Lorg/webrtc/NetworkMonitor;->assertIsTrue(Z)V

    iput-object p1, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetectorFactory:Lorg/webrtc/NetworkChangeDetectorFactory;

    return-void
.end method

.method public startMonitoring()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-static {}, Lorg/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/webrtc/NetworkMonitor;->startMonitoring(Landroid/content/Context;)V

    return-void
.end method

.method public startMonitoring(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    .line 105
    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/webrtc/NetworkMonitor;->numObservers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/webrtc/NetworkMonitor;->numObservers:I

    iget-object v1, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetector:Lorg/webrtc/NetworkChangeDetector;

    if-nez v1, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->createNetworkChangeDetector(Landroid/content/Context;)Lorg/webrtc/NetworkChangeDetector;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetector:Lorg/webrtc/NetworkChangeDetector;

    :cond_0
    iget-object p1, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetector:Lorg/webrtc/NetworkChangeDetector;

    .line 110
    invoke-interface {p1}, Lorg/webrtc/NetworkChangeDetector;->getCurrentConnectionType()Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    .line 111
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopMonitoring()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    .line 146
    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/webrtc/NetworkMonitor;->numObservers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/webrtc/NetworkMonitor;->numObservers:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetector:Lorg/webrtc/NetworkChangeDetector;

    .line 148
    invoke-interface {v1}, Lorg/webrtc/NetworkChangeDetector;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/NetworkMonitor;->networkChangeDetector:Lorg/webrtc/NetworkChangeDetector;

    .line 151
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

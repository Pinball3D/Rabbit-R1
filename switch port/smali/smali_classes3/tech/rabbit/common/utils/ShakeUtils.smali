.class public Ltech/rabbit/common/utils/ShakeUtils;
.super Ljava/lang/Object;
.source "ShakeUtils.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/common/utils/ShakeUtils$OnShakeListener;
    }
.end annotation


# static fields
.field private static final MIN_SHAKE_INTERVAL:I = 0x15e

.field private static final SHAKE_INTERVAL_MILLSECOND:I = 0x37

.field private static SPEED_SHAKE_MILLSECONDS:I = 0x190

.field private static volatile instance:Ltech/rabbit/common/utils/ShakeUtils;


# instance fields
.field private mLastShakeTime:J

.field private mLastUpdateTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mOnShakeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltech/rabbit/common/utils/ShakeUtils$OnShakeListener;",
            ">;"
        }
    .end annotation
.end field

.field private shakeEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/common/utils/ShakeUtils;->mOnShakeListeners:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastShakeTime:J

    iput-wide v0, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastUpdateTime:J

    const/4 v0, 0x0

    iput v0, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastX:F

    iput v0, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastY:F

    iput v0, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastZ:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltech/rabbit/common/utils/ShakeUtils;->shakeEnable:Z

    return-void
.end method

.method public static getInstance()Ltech/rabbit/common/utils/ShakeUtils;
    .locals 2

    sget-object v0, Ltech/rabbit/common/utils/ShakeUtils;->instance:Ltech/rabbit/common/utils/ShakeUtils;

    if-nez v0, :cond_1

    const-class v0, Ltech/rabbit/common/utils/ShakeUtils;

    .line 20
    monitor-enter v0

    :try_start_0
    sget-object v1, Ltech/rabbit/common/utils/ShakeUtils;->instance:Ltech/rabbit/common/utils/ShakeUtils;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Ltech/rabbit/common/utils/ShakeUtils;

    invoke-direct {v1}, Ltech/rabbit/common/utils/ShakeUtils;-><init>()V

    sput-object v1, Ltech/rabbit/common/utils/ShakeUtils;->instance:Ltech/rabbit/common/utils/ShakeUtils;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Ltech/rabbit/common/utils/ShakeUtils;->instance:Ltech/rabbit/common/utils/ShakeUtils;

    return-object v0
.end method

.method private startShake(D)V
    .locals 6

    iget-boolean v0, p0, Ltech/rabbit/common/utils/ShakeUtils;->shakeEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastShakeTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x15e

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return-void

    :cond_1
    iput-wide v0, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastShakeTime:J

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ltech/rabbit/common/utils/ShakeUtils;->mOnShakeListeners:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ltech/rabbit/common/utils/ShakeUtils;->mOnShakeListeners:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltech/rabbit/common/utils/ShakeUtils$OnShakeListener;

    invoke-interface {v1, p1, p2}, Ltech/rabbit/common/utils/ShakeUtils$OnShakeListener;->onShake(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public bindShakeListener(Ltech/rabbit/common/utils/ShakeUtils$OnShakeListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Ltech/rabbit/common/utils/ShakeUtils;->mOnShakeListeners:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x37

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    return-void

    .line 89
    :cond_1
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v4, v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    return-void

    :cond_2
    iput-wide v0, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastUpdateTime:J

    .line 95
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 96
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v1, v1, v4

    .line 97
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget p1, p1, v4

    iget v4, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastX:F

    sub-float v4, v0, v4

    iget v5, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastY:F

    sub-float v5, v1, v5

    iget v6, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastZ:F

    sub-float v6, p1, v6

    iput v0, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastX:F

    iput v1, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastY:F

    iput p1, p0, Ltech/rabbit/common/utils/ShakeUtils;->mLastZ:F

    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v6, v6

    add-float/2addr v4, v6

    float-to-double v0, v4

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    sget p1, Ltech/rabbit/common/utils/ShakeUtils;->SPEED_SHAKE_MILLSECONDS:I

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_3

    .line 110
    invoke-direct {p0, v0, v1}, Ltech/rabbit/common/utils/ShakeUtils;->startShake(D)V

    :cond_3
    return-void
.end method

.method public setShakeEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/common/utils/ShakeUtils;->shakeEnable:Z

    return-void
.end method

.method public setup(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sensor"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    const/4 v1, 0x2

    .line 60
    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ltech/rabbit/common/utils/ShakeUtils;->mOnShakeListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public unBindShakeListener(Ltech/rabbit/common/utils/ShakeUtils$OnShakeListener;)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/common/utils/ShakeUtils;->mOnShakeListeners:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

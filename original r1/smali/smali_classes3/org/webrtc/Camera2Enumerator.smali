.class public Lorg/webrtc/Camera2Enumerator;
.super Ljava/lang/Object;
.source "Camera2Enumerator.java"

# interfaces
.implements Lorg/webrtc/CameraEnumerator;


# static fields
.field private static final NANO_SECONDS_PER_SECOND:D = 1.0E9

.field private static final TAG:Ljava/lang/String; = "Camera2Enumerator"

.field private static final cachedSupportedFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final cameraManager:Landroid/hardware/camera2/CameraManager;

.field final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/webrtc/Camera2Enumerator;->cachedSupportedFormats:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/Camera2Enumerator;->context:Landroid/content/Context;

    const-string v0, "camera"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lorg/webrtc/Camera2Enumerator;->cameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method static convertFramerates([Landroid/util/Range;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 245
    new-instance v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    .line 246
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/2addr v5, p1

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v3, p1

    invoke-direct {v4, v5, v3}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;-><init>(II)V

    .line 245
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static convertSizes([Landroid/util/Size;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Lorg/webrtc/Size;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 235
    new-instance v4, Lorg/webrtc/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v4, v5, v3}, Lorg/webrtc/Size;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/webrtc/Camera2Enumerator;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 95
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Camera2Enumerator"

    const-string v0, "Camera access exception"

    .line 100
    invoke-static {p1, v0, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static getFpsUnitFactor([Landroid/util/Range;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 134
    array-length v0, p0

    const/16 v1, 0x3e8

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 137
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ge p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method static getSupportedFormats(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;",
            ">;"
        }
    .end annotation

    const-string v0, "camera"

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 171
    invoke-static {p0, p1}, Lorg/webrtc/Camera2Enumerator;->getSupportedFormats(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getSupportedFormats(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;",
            ">;"
        }
    .end annotation

    const-string v0, "Get supported formats for camera index "

    sget-object v1, Lorg/webrtc/Camera2Enumerator;->cachedSupportedFormats:Ljava/util/Map;

    .line 177
    monitor-enter v1

    .line 178
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v1

    return-object p0

    :cond_0
    const-string v2, "Camera2Enumerator"

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 194
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 196
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 197
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/util/Range;

    .line 199
    invoke-static {v4}, Lorg/webrtc/Camera2Enumerator;->getFpsUnitFactor([Landroid/util/Range;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/webrtc/Camera2Enumerator;->convertFramerates([Landroid/util/Range;I)Ljava/util/List;

    move-result-object v4

    .line 200
    invoke-static {p0}, Lorg/webrtc/Camera2Enumerator;->getSupportedSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    .line 203
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    .line 204
    iget v7, v7, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 207
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/webrtc/Size;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v8, 0x0

    .line 211
    :try_start_3
    const-class v10, Landroid/graphics/SurfaceTexture;

    new-instance v11, Landroid/util/Size;

    iget v12, v7, Lorg/webrtc/Size;->width:I

    iget v13, v7, Lorg/webrtc/Size;->height:I

    invoke-direct {v11, v12, v13}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v10, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J

    move-result-wide v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-wide v10, v8

    :goto_2
    cmp-long v8, v10, v8

    if-nez v8, :cond_2

    move v8, v6

    goto :goto_3

    :cond_2
    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    long-to-double v10, v10

    div-double/2addr v8, v10

    .line 218
    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    mul-int/lit16 v8, v8, 0x3e8

    .line 219
    :goto_3
    new-instance v9, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v10, v7, Lorg/webrtc/Size;->width:I

    iget v11, v7, Lorg/webrtc/Size;->height:I

    invoke-direct {v9, v10, v11, v5, v8}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;-><init>(IIII)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "Camera2Enumerator"

    .line 220
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Format: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lorg/webrtc/Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v7, v7, Lorg/webrtc/Size;->height:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "@"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/webrtc/Camera2Enumerator;->cachedSupportedFormats:Ljava/util/Map;

    .line 223
    invoke-interface {p0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-string p0, "Camera2Enumerator"

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get supported formats for camera index "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " done. Time spent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-long/2addr v5, v2

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ms."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    monitor-exit v1

    return-object v4

    :catch_1
    move-exception p0

    const-string p1, "Camera2Enumerator"

    const-string v0, "getCameraCharacteristics()"

    .line 189
    invoke-static {p1, v0, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 228
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method static getSupportedSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Lorg/webrtc/Size;",
            ">;"
        }
    .end annotation

    .line 141
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 142
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 143
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 144
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 146
    const-class p0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p0

    .line 147
    invoke-static {p0}, Lorg/webrtc/Camera2Enumerator;->convertSizes([Landroid/util/Size;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "camera"

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 116
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 117
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 118
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v1, "Camera2Enumerator"

    const-string v2, "Failed to check if camera2 is supported"

    .line 127
    invoke-static {v1, v2, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public createCapturer(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;)Lorg/webrtc/CameraVideoCapturer;
    .locals 1

    .line 90
    new-instance v0, Lorg/webrtc/Camera2Capturer;

    iget-object p0, p0, Lorg/webrtc/Camera2Enumerator;->context:Landroid/content/Context;

    invoke-direct {v0, p0, p1, p2}, Lorg/webrtc/Camera2Capturer;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;)V

    return-object v0
.end method

.method public getDeviceNames()[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/webrtc/Camera2Enumerator;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 53
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Camera2Enumerator"

    const-string v1, "Camera access exception"

    .line 58
    invoke-static {v0, v1, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedFormats(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/webrtc/Camera2Enumerator;->context:Landroid/content/Context;

    .line 84
    invoke-static {p0, p1}, Lorg/webrtc/Camera2Enumerator;->getSupportedFormats(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isBackFacing(Ljava/lang/String;)Z
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lorg/webrtc/Camera2Enumerator;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 76
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 77
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFrontFacing(Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lorg/webrtc/Camera2Enumerator;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 67
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 68
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

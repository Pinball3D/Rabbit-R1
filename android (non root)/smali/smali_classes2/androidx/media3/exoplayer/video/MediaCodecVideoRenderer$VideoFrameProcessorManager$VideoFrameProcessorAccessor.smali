.class final Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoFrameProcessorAccessor"
.end annotation


# static fields
.field private static buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

.field private static buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

.field private static scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static setRotationMethod:Ljava/lang/reflect/Method;

.field private static videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRotationEffect(F)Landroidx/media3/common/Effect;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2330
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->prepare()V

    sget-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 2331
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->setRotationMethod:Ljava/lang/reflect/Method;

    .line 2332
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    .line 2333
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/Effect;

    return-object p0
.end method

.method public static getFrameProcessorFactory()Landroidx/media3/common/VideoFrameProcessor$Factory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2337
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->prepare()V

    sget-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 2338
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    .line 2340
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/VideoFrameProcessor$Factory;

    return-object v0
.end method

.method private static prepare()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "scaleAndRotateTransformationBuilderConstructor",
            "setRotationMethod",
            "buildScaleAndRotateTransformationMethod",
            "videoFrameProcessorFactoryBuilderConstructor",
            "buildVideoFrameProcessorFactoryMethod"
        }
    .end annotation

    sget-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;

    const-string v1, "build"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->setRotationMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "androidx.media3.effect.ScaleAndRotateTransformation$Builder"

    .line 2355
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2357
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 2358
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    const-string v4, "setRotationDegrees"

    .line 2359
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->setRotationMethod:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Class;

    .line 2361
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

    :cond_1
    sget-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder"

    .line 2366
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2368
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;

    new-array v2, v2, [Ljava/lang/Class;

    .line 2370
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

    :cond_3
    return-void
.end method

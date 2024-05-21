.class public Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.super Ljava/lang/Object;
.source "FlutterRenderer.java"

# interfaces
.implements Lio/flutter/view/TextureRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;,
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;,
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;,
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;,
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;,
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;,
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;,
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$TextureFinalizerRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterRenderer"


# instance fields
.field private final flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field private final flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

.field private handler:Landroid/os/Handler;

.field private isDisplayingFlutterUi:Z

.field private isRenderingToImageViewCount:I

.field private final nextTextureId:Ljava/util/concurrent/atomic/AtomicLong;

.field private final onTrimMemoryListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->nextTextureId:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isDisplayingFlutterUi:Z

    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isRenderingToImageViewCount:I

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->handler:Landroid/os/Handler;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemoryListeners:Ljava/util/Set;

    .line 63
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$1;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 79
    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/FlutterJNI;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    return-void
.end method

.method static synthetic access$002(Lio/flutter/embedding/engine/renderer/FlutterRenderer;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isDisplayingFlutterUi:Z

    return p1
.end method

.method static synthetic access$300(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Lio/flutter/embedding/engine/FlutterJNI;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    return-object p0
.end method

.method static synthetic access$500(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->markTextureFrameAvailable(J)V

    return-void
.end method

.method static synthetic access$600(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->unregisterTexture(J)V

    return-void
.end method

.method static synthetic access$700(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private clearDeadListeners()V
    .locals 1

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemoryListeners:Ljava/util/Set;

    .line 124
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 125
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 127
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;

    if-nez v0, :cond_0

    .line 129
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private markTextureFrameAvailable(J)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 989
    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->markTextureFrameAvailable(J)V

    return-void
.end method

.method private registerImageTexture(JLio/flutter/view/TextureRegistry$ImageConsumer;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 984
    invoke-virtual {p0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->registerImageTexture(JLio/flutter/view/TextureRegistry$ImageConsumer;)V

    return-void
.end method

.method private registerTexture(JLio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 979
    invoke-virtual {p0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->registerTexture(JLio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;)V

    return-void
.end method

.method private unregisterTexture(J)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 994
    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->unregisterTexture(J)V

    return-void
.end method


# virtual methods
.method public SetRenderingToImageView(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isRenderingToImageViewCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isRenderingToImageViewCount:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isRenderingToImageViewCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isRenderingToImageViewCount:I

    :goto_0
    iget-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isRenderingToImageViewCount:I

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 100
    :goto_1
    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/FlutterJNI;->SetIsRenderingToImageView(Z)V

    return-void
.end method

.method public addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 108
    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    iget-boolean p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isDisplayingFlutterUi:Z

    if-eqz p0, :cond_0

    .line 111
    invoke-interface {p1}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiDisplayed()V

    :cond_0
    return-void
.end method

.method addOnTrimMemoryListener(Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->clearDeadListeners()V

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemoryListeners:Ljava/util/Set;

    .line 139
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createImageTexture()Lio/flutter/view/TextureRegistry$ImageTextureEntry;
    .locals 4

    .line 201
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;

    iget-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->nextTextureId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 202
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New ImageTextureEntry ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlutterRenderer"

    invoke-static {v2, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->id()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->registerImageTexture(JLio/flutter/view/TextureRegistry$ImageConsumer;)V

    return-object v0
.end method

.method public createSurfaceProducer()Lio/flutter/view/TextureRegistry$SurfaceProducer;
    .locals 4

    .line 166
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;

    iget-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->nextTextureId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 167
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New SurfaceProducer ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlutterRenderer"

    invoke-static {v2, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->id()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->registerImageTexture(JLio/flutter/view/TextureRegistry$ImageConsumer;)V

    return-object v0
.end method

.method public createSurfaceTexture()Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
    .locals 2

    const-string v0, "FlutterRenderer"

    const-string v1, "Creating a SurfaceTexture."

    .line 179
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 181
    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->registerSurfaceTexture(Landroid/graphics/SurfaceTexture;)Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    move-result-object p0

    return-object p0
.end method

.method public dispatchPointerDataPacket(Ljava/nio/ByteBuffer;I)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 974
    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchPointerDataPacket(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public dispatchSemanticsAction(IILjava/nio/ByteBuffer;I)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 1015
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(IILjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 969
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public isDisplayingFlutterUi()Z
    .locals 0

    iget-boolean p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isDisplayingFlutterUi:Z

    return p0
.end method

.method public isSoftwareRenderingEnabled()Z
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 999
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->getIsSoftwareRenderingEnabled()Z

    move-result p0

    return p0
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemoryListeners:Ljava/util/Set;

    .line 210
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 211
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 213
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p1}, Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;->onTrimMemory(I)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerSurfaceTexture(Landroid/graphics/SurfaceTexture;)Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
    .locals 3

    .line 190
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 191
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;

    iget-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->nextTextureId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 192
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2, p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;JLandroid/graphics/SurfaceTexture;)V

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "New SurfaceTexture ID: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->id()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FlutterRenderer"

    invoke-static {v1, p1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->id()J

    move-result-wide v1

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->textureWrapper()Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->registerTexture(JLio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;)V

    .line 195
    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->addOnTrimMemoryListener(Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;)V

    return-object v0
.end method

.method public removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 120
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    return-void
.end method

.method removeOnTrimMemoryListener(Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;)V
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemoryListeners:Ljava/util/Set;

    .line 148
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 149
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemoryListeners:Ljava/util/Set;

    .line 150
    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setAccessibilityFeatures(I)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 1004
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityFeatures(I)V

    return-void
.end method

.method public setSemanticsEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 1009
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    return-void
.end method

.method public setViewportMetrics(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)V
    .locals 22

    move-object/from16 v0, p1

    .line 890
    invoke-virtual/range {p1 .. p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->validate()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 893
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting viewport metrics\nSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nPadding - L: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", T: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", R: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", B: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingBottom:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\nInsets - L: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetLeft:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetTop:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetRight:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\nSystem Gesture Insets - L: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetLeft:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDisplay Features: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayFeatures:Ljava/util/List;

    .line 929
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlutterRenderer"

    .line 893
    invoke-static {v2, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayFeatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [I

    .line 932
    iget-object v2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayFeatures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v15, v2, [I

    .line 933
    iget-object v2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayFeatures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v14, v2, [I

    const/4 v2, 0x0

    .line 934
    :goto_0
    iget-object v3, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayFeatures:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 935
    iget-object v3, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayFeatures:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;

    mul-int/lit8 v4, v2, 0x4

    .line 936
    iget-object v5, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aput v5, v1, v4

    add-int/lit8 v5, v4, 0x1

    .line 937
    iget-object v6, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->bounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    aput v6, v1, v5

    add-int/lit8 v5, v4, 0x2

    .line 938
    iget-object v6, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->bounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aput v6, v1, v5

    add-int/lit8 v4, v4, 0x3

    .line 939
    iget-object v5, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    aput v5, v1, v4

    .line 940
    iget-object v4, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->type:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    iget v4, v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->encodedValue:I

    aput v4, v15, v2

    .line 941
    iget-object v3, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->state:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    iget v3, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->encodedValue:I

    aput v3, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p0

    iget-object v2, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 944
    iget v3, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->devicePixelRatio:F

    iget v4, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->width:I

    iget v5, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->height:I

    iget v6, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    iget v7, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    iget v8, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingBottom:I

    iget v9, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    iget v10, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetTop:I

    iget v11, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetRight:I

    iget v12, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    iget v13, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetLeft:I

    move-object/from16 v16, v14

    iget v14, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetTop:I

    move-object/from16 v21, v16

    move-object/from16 v16, v15

    iget v15, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetRight:I

    move-object/from16 v20, v16

    move-object/from16 p0, v2

    iget v2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetBottom:I

    move/from16 v16, v2

    iget v2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetLeft:I

    move/from16 v17, v2

    iget v0, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->physicalTouchSlop:I

    move/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v21}, Lio/flutter/embedding/engine/FlutterJNI;->setViewportMetrics(FIIIIIIIIIIIIIII[I[I[I)V

    return-void
.end method

.method public startRenderingToSurface(Landroid/view/Surface;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 813
    invoke-virtual {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->stopRenderingToSurface()V

    :cond_0
    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->surface:Landroid/view/Surface;

    if-eqz p2, :cond_1

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 820
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceWindowChanged(Landroid/view/Surface;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 823
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceCreated(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public stopRenderingToSurface()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 861
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceDestroyed()V

    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isDisplayingFlutterUi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 871
    invoke-interface {v0}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiNoLongerDisplayed()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isDisplayingFlutterUi:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->surface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public surfaceChanged(II)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 848
    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceChanged(II)V

    return-void
.end method

.method public swapSurface(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->surface:Landroid/view/Surface;

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 836
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceWindowChanged(Landroid/view/Surface;)V

    return-void
.end method

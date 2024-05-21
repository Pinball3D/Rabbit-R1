.class public Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;
.super Ljava/lang/Object;
.source "VideoPlayerPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;,
        Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;,
        Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlayerPlugin"


# instance fields
.field private flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

.field private final options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

.field private final videoPlayers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lio/flutter/plugins/videoplayer/VideoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Sbc3ko2bqgexay3P_sAYu5cfj50(Lio/flutter/embedding/engine/loader/FlutterLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Wm0JlBZbIyUKx88oYwWVKrNBLZg(Lio/flutter/embedding/engine/loader/FlutterLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 36
    new-instance v0, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    return-void
.end method

.method private constructor <init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 7

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 36
    new-instance v0, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    .line 43
    new-instance v0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 45
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v2

    .line 46
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v3

    .line 47
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$$ExternalSyntheticLambda3;

    invoke-direct {v4, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$$ExternalSyntheticLambda3;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$$ExternalSyntheticLambda4;

    invoke-direct {v5, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$$ExternalSyntheticLambda4;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    .line 49
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->textures()Lio/flutter/view/TextureRegistry;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;Lio/flutter/view/TextureRegistry;)V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 50
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->startListening(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method private disposeAllPlayers()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 102
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 103
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugins/videoplayer/VideoPlayer;

    invoke-virtual {v1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 105
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method

.method static synthetic lambda$registerWith$0(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;Lio/flutter/view/FlutterNativeView;)Z
    .locals 0

    .line 60
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->onDestroy()V

    const/4 p0, 0x0

    return p0
.end method

.method private onDestroy()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->disposeAllPlayers()V

    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 2

    .line 57
    new-instance v0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;

    invoke-direct {v0, p0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    .line 58
    new-instance v1, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;)V

    invoke-interface {p0, v1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addViewDestroyListener(Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method


# virtual methods
.method public create(Lio/flutter/plugins/videoplayer/Messages$CreateMessage;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage;
    .locals 10

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 122
    iget-object v0, v0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->textureRegistry:Lio/flutter/view/TextureRegistry;

    .line 123
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry;->createSurfaceTexture()Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    move-result-object v0

    .line 124
    new-instance v3, Lio/flutter/plugin/common/EventChannel;

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    iget-object v1, v1, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "flutter.io/videoPlayer/videoEvents"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->id()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getAsset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 132
    iget-object v1, v1, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->keyForAssetAndPackageName:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;

    .line 133
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getAsset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 135
    iget-object v1, v1, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->keyForAsset:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getAsset()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    :goto_0
    new-instance v9, Lio/flutter/plugins/videoplayer/VideoPlayer;

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    iget-object v2, v1, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->applicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "asset:///"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v8, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    move-object v1, v9

    move-object v4, v0

    invoke-direct/range {v1 .. v8}, Lio/flutter/plugins/videoplayer/VideoPlayer;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugins/videoplayer/VideoPlayerOptions;)V

    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getHttpHeaders()Ljava/util/Map;

    move-result-object v7

    .line 148
    new-instance v9, Lio/flutter/plugins/videoplayer/VideoPlayer;

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    iget-object v2, v1, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->applicationContext:Landroid/content/Context;

    .line 153
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getUri()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getFormatHint()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    move-object v1, v9

    move-object v4, v0

    invoke-direct/range {v1 .. v8}, Lio/flutter/plugins/videoplayer/VideoPlayer;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugins/videoplayer/VideoPlayerOptions;)V

    :goto_1
    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 158
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->id()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 160
    new-instance p0, Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;

    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;-><init>()V

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;->setTextureId(Ljava/lang/Long;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;->build()Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    move-result-object p0

    return-object p0
.end method

.method public dispose(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 164
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 165
    invoke-virtual {v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->dispose()V

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 166
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    return-void
.end method

.method public initialize()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->disposeAllPlayers()V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 8

    .line 80
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    .line 81
    new-instance v7, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 83
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 84
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v3

    .line 85
    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$$ExternalSyntheticLambda0;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;)V

    .line 86
    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$$ExternalSyntheticLambda1;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;)V

    .line 87
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getTextureRegistry()Lio/flutter/view/TextureRegistry;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;Lio/flutter/view/TextureRegistry;)V

    iput-object v7, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 88
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-virtual {v7, p0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->startListening(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    if-nez v0, :cond_0

    const-string v0, "VideoPlayerPlugin"

    const-string v1, "Detached from the engine before registering to it."

    .line 94
    invoke-static {v0, v1}, Lio/flutter/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 96
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->stopListening(Lio/flutter/plugin/common/BinaryMessenger;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 98
    invoke-virtual {p0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->initialize()V

    return-void
.end method

.method public pause(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V
    .locals 2

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 206
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 207
    invoke-virtual {p0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->pause()V

    return-void
.end method

.method public play(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V
    .locals 2

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 185
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 186
    invoke-virtual {p0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->play()V

    return-void
.end method

.method public position(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage;
    .locals 3

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 190
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 191
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;-><init>()V

    .line 193
    invoke-virtual {p0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->getPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;->setPosition(Ljava/lang/Long;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;->setTextureId(Ljava/lang/Long;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;->build()Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    move-result-object p1

    .line 196
    invoke-virtual {p0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->sendBufferingUpdate()V

    return-object p1
.end method

.method public seekTo(Lio/flutter/plugins/videoplayer/Messages$PositionMessage;)V
    .locals 2

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 201
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->getTextureId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 202
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->getPosition()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->seekTo(I)V

    return-void
.end method

.method public setLooping(Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;)V
    .locals 2

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 170
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->getTextureId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 171
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->getIsLooping()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setLooping(Z)V

    return-void
.end method

.method public setMixWithOthers(Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    .line 212
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->getMixWithOthers()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;->mixWithOthers:Z

    return-void
.end method

.method public setPlaybackSpeed(Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;)V
    .locals 2

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 180
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->getTextureId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 181
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->getSpeed()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setPlaybackSpeed(D)V

    return-void
.end method

.method public setVolume(Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;)V
    .locals 2

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 175
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->getTextureId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 176
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->getVolume()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setVolume(D)V

    return-void
.end method

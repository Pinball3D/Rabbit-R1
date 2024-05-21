.class final Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;
.super Ljava/lang/Object;
.source "VideoPlayerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlutterState"
.end annotation


# instance fields
.field final applicationContext:Landroid/content/Context;

.field final binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

.field final keyForAsset:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;

.field final keyForAssetAndPackageName:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;

.field final textureRegistry:Lio/flutter/view/TextureRegistry;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;Lio/flutter/view/TextureRegistry;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    iput-object p3, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->keyForAsset:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;

    iput-object p4, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->keyForAssetAndPackageName:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;

    iput-object p5, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->textureRegistry:Lio/flutter/view/TextureRegistry;

    return-void
.end method


# virtual methods
.method startListening(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 0

    .line 244
    invoke-static {p2, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;)V

    return-void
.end method

.method stopListening(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 0

    const/4 p0, 0x0

    .line 248
    invoke-static {p1, p0}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;)V

    return-void
.end method

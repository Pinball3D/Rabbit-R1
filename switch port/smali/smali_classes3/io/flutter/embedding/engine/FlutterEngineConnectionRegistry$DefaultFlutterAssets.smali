.class Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$DefaultFlutterAssets;
.super Ljava/lang/Object;
.source "FlutterEngineConnectionRegistry.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultFlutterAssets"
.end annotation


# instance fields
.field final flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;


# direct methods
.method private constructor <init>(Lio/flutter/embedding/engine/loader/FlutterLoader;)V
    .locals 0

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$DefaultFlutterAssets;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$1;)V
    .locals 0

    .line 650
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$DefaultFlutterAssets;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;)V

    return-void
.end method


# virtual methods
.method public getAssetFilePathByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$DefaultFlutterAssets;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 658
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAssetFilePathByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$DefaultFlutterAssets;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 663
    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAssetFilePathBySubpath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$DefaultFlutterAssets;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 667
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAssetFilePathBySubpath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$DefaultFlutterAssets;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 672
    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

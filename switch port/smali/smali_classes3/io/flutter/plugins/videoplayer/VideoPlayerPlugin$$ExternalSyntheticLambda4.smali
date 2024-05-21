.class public final synthetic Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugin/common/PluginRegistry$Registrar;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$$ExternalSyntheticLambda4;->f$0:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$$ExternalSyntheticLambda4;->f$0:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {p0, p1, p2}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->lookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

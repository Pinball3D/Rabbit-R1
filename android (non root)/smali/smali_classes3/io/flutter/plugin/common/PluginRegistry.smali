.class public interface abstract Lio/flutter/plugin/common/PluginRegistry;
.super Ljava/lang/Object;
.source "PluginRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/common/PluginRegistry$PluginRegistrantCallback;,
        Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;,
        Lio/flutter/plugin/common/PluginRegistry$WindowFocusChangedListener;,
        Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;,
        Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;,
        Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;,
        Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;,
        Lio/flutter/plugin/common/PluginRegistry$Registrar;
    }
.end annotation


# virtual methods
.method public abstract hasPlugin(Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registrarFor(Ljava/lang/String;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

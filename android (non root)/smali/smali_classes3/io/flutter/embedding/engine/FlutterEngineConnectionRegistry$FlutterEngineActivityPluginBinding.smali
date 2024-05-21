.class Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;
.super Ljava/lang/Object;
.source "FlutterEngineConnectionRegistry.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlutterEngineActivityPluginBinding"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final hiddenLifecycleReference:Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;

.field private final onActivityResultListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onNewIntentListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onRequestPermissionsResultListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onSaveInstanceStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding$OnSaveInstanceStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onUserLeaveHintListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onWindowFocusChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/plugin/common/PluginRegistry$WindowFocusChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onRequestPermissionsResultListeners:Ljava/util/Set;

    .line 684
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onActivityResultListeners:Ljava/util/Set;

    .line 688
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onNewIntentListeners:Ljava/util/Set;

    .line 692
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onUserLeaveHintListeners:Ljava/util/Set;

    .line 696
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onWindowFocusChangedListeners:Ljava/util/Set;

    .line 700
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onSaveInstanceStateListeners:Ljava/util/Set;

    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->activity:Landroid/app/Activity;

    .line 706
    new-instance p1, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;

    invoke-direct {p1, p2}, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;-><init>(Landroidx/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->hiddenLifecycleReference:Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;

    return-void
.end method


# virtual methods
.method public addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onActivityResultListeners:Ljava/util/Set;

    .line 755
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onNewIntentListeners:Ljava/util/Set;

    .line 782
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnSaveStateListener(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding$OnSaveInstanceStateListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onSaveInstanceStateListeners:Ljava/util/Set;

    .line 836
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnUserLeaveHintListener(Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onUserLeaveHintListeners:Ljava/util/Set;

    .line 806
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnWindowFocusChangedListener(Lio/flutter/plugin/common/PluginRegistry$WindowFocusChangedListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onWindowFocusChangedListeners:Ljava/util/Set;

    .line 818
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onRequestPermissionsResultListeners:Ljava/util/Set;

    .line 725
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public getLifecycle()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->hiddenLifecycleReference:Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;

    return-object p0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    .line 772
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onActivityResultListeners:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    .line 774
    invoke-interface {v2, p1, p2, p3}, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onNewIntentListeners:Ljava/util/Set;

    .line 798
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;

    .line 799
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;->onNewIntent(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 3

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onRequestPermissionsResultListeners:Ljava/util/Set;

    .line 744
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    .line 746
    invoke-interface {v2, p1, p2, p3}, Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onSaveInstanceStateListeners:Ljava/util/Set;

    .line 873
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding$OnSaveInstanceStateListener;

    .line 874
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding$OnSaveInstanceStateListener;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onSaveInstanceStateListeners:Ljava/util/Set;

    .line 862
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding$OnSaveInstanceStateListener;

    .line 863
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding$OnSaveInstanceStateListener;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onUserLeaveHint()V
    .locals 1

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onUserLeaveHintListeners:Ljava/util/Set;

    .line 851
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;

    .line 852
    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;->onUserLeaveHint()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onWindowFocusChanged(Z)V
    .locals 1

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onWindowFocusChangedListeners:Ljava/util/Set;

    .line 829
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$WindowFocusChangedListener;

    .line 830
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/PluginRegistry$WindowFocusChangedListener;->onWindowFocusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onActivityResultListeners:Ljava/util/Set;

    .line 761
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onNewIntentListeners:Ljava/util/Set;

    .line 788
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnSaveStateListener(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding$OnSaveInstanceStateListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onSaveInstanceStateListeners:Ljava/util/Set;

    .line 841
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnUserLeaveHintListener(Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onUserLeaveHintListeners:Ljava/util/Set;

    .line 812
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnWindowFocusChangedListener(Lio/flutter/plugin/common/PluginRegistry$WindowFocusChangedListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onWindowFocusChangedListeners:Ljava/util/Set;

    .line 824
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry$FlutterEngineActivityPluginBinding;->onRequestPermissionsResultListeners:Ljava/util/Set;

    .line 732
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

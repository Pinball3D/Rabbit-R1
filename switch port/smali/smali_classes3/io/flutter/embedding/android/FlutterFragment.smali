.class public Lio/flutter/embedding/android/FlutterFragment;
.super Landroidx/fragment/app/Fragment;
.source "FlutterFragment.java"

# interfaces
.implements Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;
.implements Landroid/content/ComponentCallbacks2;
.implements Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;,
        Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;,
        Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;,
        Lio/flutter/embedding/android/FlutterFragment$ActivityCallThrough;
    }
.end annotation


# static fields
.field protected static final ARG_APP_BUNDLE_PATH:Ljava/lang/String; = "app_bundle_path"

.field protected static final ARG_CACHED_ENGINE_GROUP_ID:Ljava/lang/String; = "cached_engine_group_id"

.field protected static final ARG_CACHED_ENGINE_ID:Ljava/lang/String; = "cached_engine_id"

.field protected static final ARG_DART_ENTRYPOINT:Ljava/lang/String; = "dart_entrypoint"

.field protected static final ARG_DART_ENTRYPOINT_ARGS:Ljava/lang/String; = "dart_entrypoint_args"

.field protected static final ARG_DART_ENTRYPOINT_URI:Ljava/lang/String; = "dart_entrypoint_uri"

.field protected static final ARG_DESTROY_ENGINE_WITH_FRAGMENT:Ljava/lang/String; = "destroy_engine_with_fragment"

.field protected static final ARG_ENABLE_STATE_RESTORATION:Ljava/lang/String; = "enable_state_restoration"

.field protected static final ARG_FLUTTERVIEW_RENDER_MODE:Ljava/lang/String; = "flutterview_render_mode"

.field protected static final ARG_FLUTTERVIEW_TRANSPARENCY_MODE:Ljava/lang/String; = "flutterview_transparency_mode"

.field protected static final ARG_FLUTTER_INITIALIZATION_ARGS:Ljava/lang/String; = "initialization_args"

.field protected static final ARG_HANDLE_DEEPLINKING:Ljava/lang/String; = "handle_deeplinking"

.field protected static final ARG_INITIAL_ROUTE:Ljava/lang/String; = "initial_route"

.field protected static final ARG_SHOULD_ATTACH_ENGINE_TO_ACTIVITY:Ljava/lang/String; = "should_attach_engine_to_activity"

.field protected static final ARG_SHOULD_AUTOMATICALLY_HANDLE_ON_BACK_PRESSED:Ljava/lang/String; = "should_automatically_handle_on_back_pressed"

.field protected static final ARG_SHOULD_DELAY_FIRST_ANDROID_VIEW_DRAW:Ljava/lang/String; = "should_delay_first_android_view_draw"

.field public static final FLUTTER_VIEW_ID:I

.field private static final TAG:Ljava/lang/String; = "FlutterFragment"


# instance fields
.field delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

.field private delegateFactory:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;

.field private final onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private final onWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xf1f2

    .line 110
    invoke-static {v0}, Lio/flutter/util/ViewUtils;->generateViewId(I)I

    move-result v0

    sput v0, Lio/flutter/embedding/android/FlutterFragment;->FLUTTER_VIEW_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1026
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 176
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterFragment$1;-><init>(Lio/flutter/embedding/android/FlutterFragment;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->onWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    iput-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegateFactory:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;

    .line 1018
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lio/flutter/embedding/android/FlutterFragment$2;-><init>(Lio/flutter/embedding/android/FlutterFragment;Z)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 1029
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/android/FlutterFragment;Ljava/lang/String;)Z
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static createDefault()Lio/flutter/embedding/android/FlutterFragment;
    .locals 1

    .line 208
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;

    invoke-direct {v0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;-><init>()V

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->build()Lio/flutter/embedding/android/FlutterFragment;

    move-result-object v0

    return-object v0
.end method

.method private stillAttachedForEvent(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    const/4 v1, 0x0

    const-string v2, " "

    const-string v3, "FlutterFragment "

    const-string v4, "FlutterFragment"

    if-nez v0, :cond_0

    .line 1695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " called after release."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1698
    :cond_0
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isAttached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " called after detach."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static withCachedEngine(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;
    .locals 2

    .line 521
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;-><init>(Ljava/lang/String;Lio/flutter/embedding/android/FlutterFragment$1;)V

    return-object v0
.end method

.method public static withNewEngine()Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 1

    .line 217
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;

    invoke-direct {v0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;-><init>()V

    return-object v0
.end method

.method public static withNewEngineInGroup(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;
    .locals 1

    .line 765
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public attachToEngineAutomatically()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public cleanUpFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 1

    .line 1543
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1544
    instance-of v0, p0, Lio/flutter/embedding/android/FlutterEngineConfigurator;

    if-eqz v0, :cond_0

    .line 1545
    check-cast p0, Lio/flutter/embedding/android/FlutterEngineConfigurator;

    invoke-interface {p0, p1}, Lio/flutter/embedding/android/FlutterEngineConfigurator;->cleanUpFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    :cond_0
    return-void
.end method

.method public configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 1

    .line 1529
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1530
    instance-of v0, p0, Lio/flutter/embedding/android/FlutterEngineConfigurator;

    if-eqz v0, :cond_0

    .line 1531
    check-cast p0, Lio/flutter/embedding/android/FlutterEngineConfigurator;

    invoke-interface {p0, p1}, Lio/flutter/embedding/android/FlutterEngineConfigurator;->configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    :cond_0
    return-void
.end method

.method public createDelegate(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;
    .locals 0

    .line 1015
    new-instance p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-direct {p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;-><init>(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)V

    return-object p0
.end method

.method public detachFromFlutterEngine()V
    .locals 2

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlutterFragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " connection to the engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1165
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " evicted by another attaching activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterFragment"

    .line 1160
    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDestroyView()V

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1170
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDetach()V

    :cond_0
    return-void
.end method

.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 0

    .line 100
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    return-object p0
.end method

.method public getAppBundlePath()Ljava/lang/String;
    .locals 1

    .line 1401
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "app_bundle_path"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCachedEngineGroupId()Ljava/lang/String;
    .locals 2

    .line 1316
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "cached_engine_group_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCachedEngineId()Ljava/lang/String;
    .locals 2

    .line 1305
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "cached_engine_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDartEntrypointArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1372
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "dart_entrypoint_args"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getDartEntrypointFunctionName()Ljava/lang/String;
    .locals 2

    .line 1359
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "dart_entrypoint"

    const-string v1, "main"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDartEntrypointLibraryUri()Ljava/lang/String;
    .locals 1

    .line 1386
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "dart_entrypoint_uri"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExclusiveAppComponent()Lio/flutter/embedding/android/ExclusiveAppComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/embedding/android/ExclusiveAppComponent<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    return-object p0
.end method

.method public getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1493
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p0

    return-object p0
.end method

.method public getFlutterShellArgs()Lio/flutter/embedding/engine/FlutterShellArgs;
    .locals 1

    .line 1292
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "initialization_args"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1293
    new-instance v0, Lio/flutter/embedding/engine/FlutterShellArgs;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 1294
    :goto_0
    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/FlutterShellArgs;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public getInitialRoute()Ljava/lang/String;
    .locals 1

    .line 1414
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "initial_route"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRenderMode()Lio/flutter/embedding/android/RenderMode;
    .locals 2

    .line 1429
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    invoke-virtual {v0}, Lio/flutter/embedding/android/RenderMode;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flutterview_render_mode"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1430
    invoke-static {p0}, Lio/flutter/embedding/android/RenderMode;->valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/RenderMode;

    move-result-object p0

    return-object p0
.end method

.method public getTransparencyMode()Lio/flutter/embedding/android/TransparencyMode;
    .locals 2

    .line 1445
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    .line 1446
    invoke-virtual {v0}, Lio/flutter/embedding/android/TransparencyMode;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flutterview_transparency_mode"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1447
    invoke-static {p0}, Lio/flutter/embedding/android/TransparencyMode;->valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/TransparencyMode;

    move-result-object p0

    return-object p0
.end method

.method isFlutterEngineInjected()Z
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1324
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost()Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "onActivityResult"

    .line 1250
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1251
    invoke-virtual {p0, p1, p2, p3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 1060
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegateFactory:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;

    .line 1061
    invoke-interface {v0, p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;->createDelegate(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1062
    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onAttach(Landroid/content/Context;)V

    .line 1063
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_automatically_handle_on_back_pressed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 1066
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const-string v0, "onBackPressed"

    .line 1233
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1234
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1071
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1072
    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    sget v4, Lio/flutter/embedding/android/FlutterFragment;->FLUTTER_VIEW_ID:I

    .line 1084
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->shouldDelayFirstAndroidViewDraw()Z

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1079
    invoke-virtual/range {v0 .. v5}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 1138
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 1141
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->requireView()Landroid/view/View;

    move-result-object v0

    .line 1142
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment;->onWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 1143
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    const-string v0, "onDestroyView"

    .line 1145
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1146
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDestroyView()V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1176
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1177
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    if-eqz v0, :cond_0

    .line 1179
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDetach()V

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1180
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    goto :goto_0

    .line 1183
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlutterFragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " onDetach called after release."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FlutterFragment"

    invoke-static {v0, p0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onFlutterSurfaceViewCreated(Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .locals 0

    return-void
.end method

.method public onFlutterTextureViewCreated(Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 0

    return-void
.end method

.method public onFlutterUiDisplayed()V
    .locals 1

    .line 1592
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1593
    instance-of v0, p0, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    if-eqz v0, :cond_0

    .line 1594
    check-cast p0, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-interface {p0}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiDisplayed()V

    :cond_0
    return-void
.end method

.method public onFlutterUiNoLongerDisplayed()V
    .locals 1

    .line 1611
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1612
    instance-of v0, p0, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    if-eqz v0, :cond_0

    .line 1613
    check-cast p0, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-interface {p0}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiNoLongerDisplayed()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "onNewIntent"

    .line 1218
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1219
    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1114
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-string v0, "onPause"

    .line 1115
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1116
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onPause()V

    :cond_0
    return-void
.end method

.method public onPostResume()V
    .locals 1

    const-string v0, "onPostResume"

    .line 1107
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1108
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onPostResume()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "onRequestPermissionsResult"

    .line 1201
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1202
    invoke-virtual {p0, p1, p2, p3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1097
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "onResume"

    .line 1098
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1099
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1152
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "onSaveInstanceState"

    .line 1153
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1154
    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1089
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    const-string v0, "onStart"

    .line 1090
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1091
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1122
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    const-string v0, "onStop"

    .line 1123
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1124
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onStop()V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const-string v0, "onTrimMemory"

    .line 1279
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1280
    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    const-string v0, "onUserLeaveHint"

    .line 1263
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1264
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1130
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1132
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->onWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public popSystemNavigator()Z
    .locals 3

    .line 1671
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_automatically_handle_on_back_pressed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 1677
    invoke-virtual {v1, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 1678
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    const/4 v0, 0x1

    .line 1679
    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    return v0

    :cond_0
    return v2
.end method

.method public provideFlutterEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 2

    .line 1476
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 1477
    instance-of v0, p1, Lio/flutter/embedding/android/FlutterEngineProvider;

    if-eqz v0, :cond_0

    const-string v0, "FlutterFragment"

    const-string v1, "Deferring to attached Activity to provide a FlutterEngine."

    .line 1479
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    check-cast p1, Lio/flutter/embedding/android/FlutterEngineProvider;

    .line 1481
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/flutter/embedding/android/FlutterEngineProvider;->provideFlutterEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public providePlatformPlugin(Landroid/app/Activity;Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/platform/PlatformPlugin;
    .locals 1

    if-eqz p1, :cond_0

    .line 1501
    new-instance p1, Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformChannel()Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    move-result-object p2

    invoke-direct {p1, v0, p2, p0}, Lio/flutter/plugin/platform/PlatformPlugin;-><init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method setDelegateFactory(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment;->delegateFactory:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;

    .line 1046
    invoke-interface {p1, p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;->createDelegate(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    return-void
.end method

.method public shouldAttachEngineToActivity()Z
    .locals 1

    .line 1557
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "should_attach_engine_to_activity"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method shouldDelayFirstAndroidViewDraw()Z
    .locals 1

    .line 1690
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "should_delay_first_android_view_draw"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldDestroyEngineWithHost()Z
    .locals 3

    .line 1337
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "destroy_engine_with_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1338
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getCachedEngineId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1344
    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public shouldDispatchAppLifecycleState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldHandleDeeplinking()Z
    .locals 1

    .line 1566
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "handle_deeplinking"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldRestoreAndSaveState()Z
    .locals 2

    .line 1619
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enable_state_restoration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1620
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1622
    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getCachedEngineId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateSystemUiOverlays()V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    if-eqz p0, :cond_0

    .line 1631
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->updateSystemUiOverlays()V

    :cond_0
    return-void
.end method

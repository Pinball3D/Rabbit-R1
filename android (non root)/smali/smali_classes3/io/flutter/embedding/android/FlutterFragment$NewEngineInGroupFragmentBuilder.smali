.class public Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;
.super Ljava/lang/Object;
.source "FlutterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewEngineInGroupFragmentBuilder"
.end annotation


# instance fields
.field private final cachedEngineGroupId:Ljava/lang/String;

.field private dartEntrypoint:Ljava/lang/String;

.field private final fragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/android/FlutterFragment;",
            ">;"
        }
    .end annotation
.end field

.field private handleDeeplinking:Z

.field private initialRoute:Ljava/lang/String;

.field private renderMode:Lio/flutter/embedding/android/RenderMode;

.field private shouldAttachEngineToActivity:Z

.field private shouldAutomaticallyHandleOnBackPressed:Z

.field private shouldDelayFirstAndroidViewDraw:Z

.field private transparencyMode:Lio/flutter/embedding/android/TransparencyMode;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/android/FlutterFragment;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "main"

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->dartEntrypoint:Ljava/lang/String;

    const-string v0, "/"

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->initialRoute:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->handleDeeplinking:Z

    .line 804
    sget-object v1, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    .line 805
    sget-object v1, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->shouldAttachEngineToActivity:Z

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->shouldAutomaticallyHandleOnBackPressed:Z

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->shouldDelayFirstAndroidViewDraw:Z

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    iput-object p2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->cachedEngineGroupId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 811
    const-class v0, Lio/flutter/embedding/android/FlutterFragment;

    invoke-direct {p0, v0, p1}, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/embedding/android/FlutterFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/flutter/embedding/android/FlutterFragment;",
            ">()TT;"
        }
    .end annotation

    const-string v0, "The FlutterFragment subclass sent in the constructor ("

    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 986
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/android/FlutterFragment;

    if-eqz v1, :cond_0

    .line 994
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->createArgs()Landroid/os/Bundle;

    move-result-object v0

    .line 995
    invoke-virtual {v1, v0}, Lio/flutter/embedding/android/FlutterFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1

    .line 988
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    .line 990
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") does not match the expected return type."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 999
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not instantiate FlutterFragment subclass ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    .line 1000
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createArgs()Landroid/os/Bundle;
    .locals 3

    .line 959
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cached_engine_group_id"

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->cachedEngineGroupId:Ljava/lang/String;

    .line 960
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dart_entrypoint"

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->dartEntrypoint:Ljava/lang/String;

    .line 961
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "initial_route"

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->initialRoute:Ljava/lang/String;

    .line 962
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "handle_deeplinking"

    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->handleDeeplinking:Z

    .line 963
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 966
    :cond_0
    sget-object v1, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    :goto_0
    invoke-virtual {v1}, Lio/flutter/embedding/android/RenderMode;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flutterview_render_mode"

    .line 964
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 969
    :cond_1
    sget-object v1, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    :goto_1
    invoke-virtual {v1}, Lio/flutter/embedding/android/TransparencyMode;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flutterview_transparency_mode"

    .line 967
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "should_attach_engine_to_activity"

    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->shouldAttachEngineToActivity:Z

    .line 970
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "destroy_engine_with_fragment"

    const/4 v2, 0x1

    .line 971
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "should_automatically_handle_on_back_pressed"

    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->shouldAutomaticallyHandleOnBackPressed:Z

    .line 972
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "should_delay_first_android_view_draw"

    iget-boolean p0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->shouldDelayFirstAndroidViewDraw:Z

    .line 974
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public dartEntrypoint(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->dartEntrypoint:Ljava/lang/String;

    return-object p0
.end method

.method public handleDeeplinking(Z)Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;
    .locals 0

    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->handleDeeplinking:Z

    return-object p0
.end method

.method public initialRoute(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->initialRoute:Ljava/lang/String;

    return-object p0
.end method

.method public renderMode(Lio/flutter/embedding/android/RenderMode;)Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    return-object p0
.end method

.method public shouldAttachEngineToActivity(Z)Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;
    .locals 0

    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->shouldAttachEngineToActivity:Z

    return-object p0
.end method

.method public shouldAutomaticallyHandleOnBackPressed(Z)Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;
    .locals 0

    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->shouldAutomaticallyHandleOnBackPressed:Z

    return-object p0
.end method

.method public shouldDelayFirstAndroidViewDraw(Z)Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;
    .locals 0

    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->shouldDelayFirstAndroidViewDraw:Z

    return-object p0
.end method

.method public transparencyMode(Lio/flutter/embedding/android/TransparencyMode;)Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    return-object p0
.end method

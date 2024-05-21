.class public Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;
.super Ljava/lang/Object;
.source "FlutterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewEngineIntentBuilder"
.end annotation


# instance fields
.field private final activityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/android/FlutterActivity;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundMode:Ljava/lang/String;

.field private dartEntrypointArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initialRoute:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/android/FlutterActivity;",
            ">;)V"
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;->initialRoute:Ljava/lang/String;

    .line 257
    sget-object v0, Lio/flutter/embedding/android/FlutterActivityLaunchConfigs;->DEFAULT_BACKGROUND_MODE:Ljava/lang/String;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;->backgroundMode:Ljava/lang/String;

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;->activityClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public backgroundMode(Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;)Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;
    .locals 0

    .line 308
    invoke-virtual {p1}, Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;->backgroundMode:Ljava/lang/String;

    return-object p0
.end method

.method public build(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 336
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;->activityClass:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "route"

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;->initialRoute:Ljava/lang/String;

    .line 338
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "background_mode"

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;->backgroundMode:Ljava/lang/String;

    .line 339
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "destroy_engine_with_activity"

    const/4 v1, 0x1

    .line 340
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;->dartEntrypointArgs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;->dartEntrypointArgs:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "dart_entrypoint_args"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    return-object p1
.end method

.method public dartEntrypointArgs(Ljava/util/List;)Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;->dartEntrypointArgs:Ljava/util/List;

    return-object p0
.end method

.method public initialRoute(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;->initialRoute:Ljava/lang/String;

    return-object p0
.end method

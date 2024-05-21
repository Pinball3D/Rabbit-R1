.class public Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;
.super Ljava/lang/Object;
.source "FlutterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewEngineInGroupIntentBuilder"
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

.field private final cachedEngineGroupId:Ljava/lang/String;

.field private dartEntrypoint:Ljava/lang/String;

.field private initialRoute:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/android/FlutterActivity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "main"

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;->dartEntrypoint:Ljava/lang/String;

    const-string v0, "/"

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;->initialRoute:Ljava/lang/String;

    .line 483
    sget-object v0, Lio/flutter/embedding/android/FlutterActivityLaunchConfigs;->DEFAULT_BACKGROUND_MODE:Ljava/lang/String;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;->backgroundMode:Ljava/lang/String;

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;->activityClass:Ljava/lang/Class;

    iput-object p2, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;->cachedEngineGroupId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public backgroundMode(Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;)Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;
    .locals 0

    .line 568
    invoke-virtual {p1}, Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;->backgroundMode:Ljava/lang/String;

    return-object p0
.end method

.method public build(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 581
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;->activityClass:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "dart_entrypoint"

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;->dartEntrypoint:Ljava/lang/String;

    .line 582
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "route"

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;->initialRoute:Ljava/lang/String;

    .line 583
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cached_engine_group_id"

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;->cachedEngineGroupId:Ljava/lang/String;

    .line 584
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "background_mode"

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;->backgroundMode:Ljava/lang/String;

    .line 585
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "destroy_engine_with_activity"

    const/4 v0, 0x1

    .line 586
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public dartEntrypoint(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;->dartEntrypoint:Ljava/lang/String;

    return-object p0
.end method

.method public initialRoute(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterActivity$NewEngineInGroupIntentBuilder;->initialRoute:Ljava/lang/String;

    return-object p0
.end method

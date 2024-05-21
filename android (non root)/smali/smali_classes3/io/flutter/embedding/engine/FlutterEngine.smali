.class public Lio/flutter/embedding/engine/FlutterEngine;
.super Ljava/lang/Object;
.source "FlutterEngine.java"

# interfaces
.implements Lio/flutter/util/ViewUtils$DisplayUpdater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterEngine"


# instance fields
.field private final accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

.field private final dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

.field private final deferredComponentChannel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

.field private final engineLifecycleListener:Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

.field private final engineLifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field private final lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

.field private final localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

.field private final localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

.field private final mouseCursorChannel:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

.field private final navigationChannel:Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

.field private final platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

.field private final platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

.field private final pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

.field private final processTextChannel:Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;

.field private final renderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field private final restorationChannel:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

.field private final settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

.field private final spellCheckChannel:Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;

.field private final systemChannel:Lio/flutter/embedding/engine/systemchannels/SystemChannel;

.field private final textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 233
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;Z)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 268
    invoke-direct/range {v0 .. v7}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 287
    invoke-direct/range {v0 .. v8}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZLio/flutter/embedding/engine/FlutterEngineGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZLio/flutter/embedding/engine/FlutterEngineGroup;)V
    .locals 7

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    .line 112
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngine$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/FlutterEngine$1;-><init>(Lio/flutter/embedding/engine/FlutterEngine;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListener:Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    .line 310
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 315
    :goto_0
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v1

    if-nez p3, :cond_0

    .line 318
    invoke-virtual {v1}, Lio/flutter/FlutterInjector;->getFlutterJNIFactory()Lio/flutter/embedding/engine/FlutterJNI$Factory;

    move-result-object p3

    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI$Factory;->provideFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 322
    new-instance v2, Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v2, p3, v0}, Lio/flutter/embedding/engine/dart/DartExecutor;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 323
    invoke-virtual {v2}, Lio/flutter/embedding/engine/dart/DartExecutor;->onAttachedToJNI()V

    .line 326
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->deferredComponentManager()Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object v0

    .line 328
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    invoke-direct {v3, v2, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 329
    new-instance v3, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    invoke-direct {v3, v2}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->deferredComponentChannel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 330
    new-instance v4, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    invoke-direct {v4, v2}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    .line 331
    new-instance v4, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    invoke-direct {v4, v2}, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v4, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    .line 332
    new-instance v5, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

    invoke-direct {v5, v2}, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v5, p0, Lio/flutter/embedding/engine/FlutterEngine;->mouseCursorChannel:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

    .line 333
    new-instance v5, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    invoke-direct {v5, v2}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v5, p0, Lio/flutter/embedding/engine/FlutterEngine;->navigationChannel:Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    .line 334
    new-instance v5, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    invoke-direct {v5, v2}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v5, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 335
    new-instance v5, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;Landroid/content/pm/PackageManager;)V

    iput-object v5, p0, Lio/flutter/embedding/engine/FlutterEngine;->processTextChannel:Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;

    .line 336
    new-instance v5, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    invoke-direct {v5, v2, p7}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;Z)V

    iput-object v5, p0, Lio/flutter/embedding/engine/FlutterEngine;->restorationChannel:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    .line 337
    new-instance p7, Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    invoke-direct {p7, v2}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/FlutterEngine;->settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    .line 338
    new-instance p7, Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;

    invoke-direct {p7, v2}, Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/FlutterEngine;->spellCheckChannel:Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;

    .line 339
    new-instance p7, Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    invoke-direct {p7, v2}, Lio/flutter/embedding/engine/systemchannels/SystemChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/FlutterEngine;->systemChannel:Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    .line 340
    new-instance p7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-direct {p7, v2}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/FlutterEngine;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    if-eqz v0, :cond_1

    .line 343
    invoke-interface {v0, v3}, Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;->setDeferredComponentChannel(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)V

    .line 346
    :cond_1
    new-instance p7, Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-direct {p7, p1, v4}, Lio/flutter/plugin/localization/LocalizationPlugin;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    if-nez p2, :cond_2

    .line 349
    invoke-virtual {v1}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object p2

    .line 352
    :cond_2
    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-nez v0, :cond_3

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;)V

    .line 354
    invoke-virtual {p2, p1, p5}, Lio/flutter/embedding/engine/loader/FlutterLoader;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_3
    iget-object p5, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListener:Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    .line 357
    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->addEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V

    .line 358
    invoke-virtual {p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformViewsController(Lio/flutter/plugin/platform/PlatformViewsController;)V

    .line 359
    invoke-virtual {p3, p7}, Lio/flutter/embedding/engine/FlutterJNI;->setLocalizationPlugin(Lio/flutter/plugin/localization/LocalizationPlugin;)V

    .line 360
    invoke-virtual {v1}, Lio/flutter/FlutterInjector;->deferredComponentManager()Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object p5

    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->setDeferredComponentManager(Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;)V

    .line 365
    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result p5

    if-nez p5, :cond_4

    .line 366
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngine;->attachToJni()V

    .line 371
    :cond_4
    new-instance p5, Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-direct {p5, p3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p5, p0, Lio/flutter/embedding/engine/FlutterEngine;->renderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iput-object p4, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 374
    invoke-virtual {p4}, Lio/flutter/plugin/platform/PlatformViewsController;->onAttachedToJNI()V

    .line 376
    new-instance p3, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4, p0, p2, p8}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/FlutterEngine;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterEngineGroup;)V

    iput-object p3, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    invoke-virtual {p7, p4}, Lio/flutter/plugin/localization/LocalizationPlugin;->sendLocalesToFlutter(Landroid/content/res/Configuration;)V

    if-eqz p6, :cond_5

    .line 384
    invoke-virtual {p2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->automaticallyRegisterPlugins()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 385
    invoke-static {p0}, Lio/flutter/embedding/engine/plugins/util/GeneratedPluginRegister;->registerGeneratedPlugins(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 388
    :cond_5
    invoke-static {p1, p0}, Lio/flutter/util/ViewUtils;->calculateMaximumDisplayMetrics(Landroid/content/Context;Lio/flutter/util/ViewUtils$DisplayUpdater;)V

    .line 390
    new-instance p1, Lio/flutter/plugin/text/ProcessTextPlugin;

    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getProcessTextChannel()Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/flutter/plugin/text/ProcessTextPlugin;-><init>(Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;)V

    .line 391
    invoke-virtual {p3, p1}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V
    .locals 7

    .line 248
    new-instance v4, Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-direct {v4}, Lio/flutter/plugin/platform/PlatformViewsController;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 168
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    .line 181
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;ZZ)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 212
    new-instance v4, Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-direct {v4}, Lio/flutter/plugin/platform/PlatformViewsController;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/FlutterEngine;)Ljava/util/Set;
    .locals 0

    .line 82
    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/platform/PlatformViewsController;
    .locals 0

    .line 82
    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/embedding/engine/systemchannels/RestorationChannel;
    .locals 0

    .line 82
    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->restorationChannel:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    return-object p0
.end method

.method private attachToJni()V
    .locals 2

    const-string v0, "FlutterEngine"

    const-string v1, "Attaching to JNI."

    .line 395
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 396
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->attachToNative()V

    .line 398
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngine;->isAttachedToJni()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 399
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "FlutterEngine failed to attach to its native Object reference."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isAttachedToJni()Z
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 405
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    .line 484
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "FlutterEngine"

    const-string v1, "Destroying."

    .line 462
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    .line 463
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    .line 464
    invoke-interface {v1}, Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;->onEngineWillDestroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    .line 467
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->destroy()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 468
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->onDetachedFromJNI()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 469
    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->onDetachedFromJNI()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListener:Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    .line 470
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->removeEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    .line 471
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setDeferredComponentManager(Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 472
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->detachFromNativeAndReleaseResources()V

    .line 473
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->deferredComponentManager()Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 474
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->deferredComponentManager()Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;->destroy()V

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->deferredComponentChannel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 475
    invoke-virtual {p0, v1}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->setDeferredComponentManager(Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;)V

    :cond_1
    return-void
.end method

.method public getAccessibilityChannel()Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    return-object p0
.end method

.method public getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object p0
.end method

.method public getBroadcastReceiverControlSurface()Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverControlSurface;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object p0
.end method

.method public getContentProviderControlSurface()Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderControlSurface;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object p0
.end method

.method public getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    return-object p0
.end method

.method public getDeferredComponentChannel()Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->deferredComponentChannel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    return-object p0
.end method

.method public getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    return-object p0
.end method

.method public getLocalizationChannel()Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    return-object p0
.end method

.method public getLocalizationPlugin()Lio/flutter/plugin/localization/LocalizationPlugin;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    return-object p0
.end method

.method public getMouseCursorChannel()Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->mouseCursorChannel:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

    return-object p0
.end method

.method public getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->navigationChannel:Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    return-object p0
.end method

.method public getPlatformChannel()Lio/flutter/embedding/engine/systemchannels/PlatformChannel;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    return-object p0
.end method

.method public getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    return-object p0
.end method

.method public getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object p0
.end method

.method public getProcessTextChannel()Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->processTextChannel:Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;

    return-object p0
.end method

.method public getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->renderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object p0
.end method

.method public getRestorationChannel()Lio/flutter/embedding/engine/systemchannels/RestorationChannel;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->restorationChannel:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    return-object p0
.end method

.method public getServiceControlSurface()Lio/flutter/embedding/engine/plugins/service/ServiceControlSurface;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object p0
.end method

.method public getSettingsChannel()Lio/flutter/embedding/engine/systemchannels/SettingsChannel;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    return-object p0
.end method

.method public getSpellCheckChannel()Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->spellCheckChannel:Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;

    return-object p0
.end method

.method public getSystemChannel()Lio/flutter/embedding/engine/systemchannels/SystemChannel;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->systemChannel:Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    return-object p0
.end method

.method public getTextInputChannel()Lio/flutter/embedding/engine/systemchannels/TextInputChannel;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    return-object p0
.end method

.method public removeEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    .line 492
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method spawn(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/lang/String;Ljava/util/List;Lio/flutter/plugin/platform/PlatformViewsController;ZZ)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/platform/PlatformViewsController;",
            "ZZ)",
            "Lio/flutter/embedding/engine/FlutterEngine;"
        }
    .end annotation

    move-object v0, p2

    .line 433
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngine;->isAttachedToJni()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    iget-object v1, v1, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 438
    iget-object v2, v0, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->dartEntrypointFunctionName:Ljava/lang/String;

    iget-object v0, v0, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->dartEntrypointLibrary:Ljava/lang/String;

    move-object v3, p3

    move-object v4, p4

    .line 439
    invoke-virtual {v1, v2, v0, p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->spawn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v6

    .line 444
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngine;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p1

    move-object/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZ)V

    return-object v0

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Spawn can only be called on a fully constructed FlutterEngine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDisplayMetrics(FFF)V
    .locals 1

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v0, 0x0

    .line 667
    invoke-virtual {p0, v0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->updateDisplayMetrics(IFFF)V

    return-void
.end method

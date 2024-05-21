.class public Lio/flutter/plugin/platform/PlatformPlugin;
.super Ljava/lang/Object;
.source "PlatformPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;
    }
.end annotation


# static fields
.field public static final DEFAULT_SYSTEM_UI:I = 0x500

.field private static final TAG:Ljava/lang/String; = "PlatformPlugin"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private currentTheme:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;

.field private mEnabledOverlays:I

.field final mPlatformMessageHandler:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

.field private final platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

.field private final platformPluginDelegate:Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, p2, v0}, Lio/flutter/plugin/platform/PlatformPlugin;-><init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lio/flutter/plugin/platform/PlatformPlugin$1;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/PlatformPlugin$1;-><init>(Lio/flutter/plugin/platform/PlatformPlugin;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mPlatformMessageHandler:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 167
    invoke-virtual {p2, v0}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->setPlatformMessageHandler(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;)V

    iput-object p3, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformPluginDelegate:Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;

    const/16 p1, 0x500

    iput p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mEnabledOverlays:I

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->playSystemSound(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/plugin/platform/PlatformPlugin;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromePreferredOrientations(I)V

    return-void
.end method

.method static synthetic access$1000(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->getClipboardData(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setClipboardData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lio/flutter/plugin/platform/PlatformPlugin;)Z
    .locals 0

    .line 35
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->clipboardHasStrings()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->share(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lio/flutter/plugin/platform/PlatformPlugin;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeApplicationSwitcherDescription(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V

    return-void
.end method

.method static synthetic access$300(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/util/List;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeEnabledSystemUIOverlays(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeEnabledSystemUIMode(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;)V

    return-void
.end method

.method static synthetic access$500(Lio/flutter/plugin/platform/PlatformPlugin;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeChangeListener()V

    return-void
.end method

.method static synthetic access$600(Lio/flutter/plugin/platform/PlatformPlugin;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->restoreSystemChromeSystemUIOverlays()V

    return-void
.end method

.method static synthetic access$700(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeSystemUIOverlayStyle(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V

    return-void
.end method

.method static synthetic access$800(Lio/flutter/plugin/platform/PlatformPlugin;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setFrameworkHandlesBack(Z)V

    return-void
.end method

.method static synthetic access$900(Lio/flutter/plugin/platform/PlatformPlugin;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->popSystemNavigator()V

    return-void
.end method

.method private clipboardHasStrings()Z
    .locals 2

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    const-string v0, "clipboard"

    .line 595
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    .line 599
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 602
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const-string v0, "text/*"

    .line 606
    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getClipboardData(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;
    .locals 7

    const-string v0, "PlatformPlugin"

    const-string v1, "Clipboard item contains a Uri with scheme \'"

    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    const-string v3, "clipboard"

    .line 522
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 524
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 528
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v4

    :cond_1
    if-eqz p1, :cond_3

    .line 530
    sget-object v3, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;->PLAIN_TEXT:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    return-object v4

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 531
    invoke-virtual {v2, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    .line 534
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_6

    .line 538
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_4

    const-string p0, "Clipboard item contained no textual content nor a URI to retrieve it from."

    .line 541
    invoke-static {v0, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 547
    :cond_4
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    .line 549
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 550
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'that is unhandled."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_5
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    .line 557
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "text/*"

    invoke-virtual {v1, v3, v5, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    .line 561
    invoke-virtual {p1, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v1, :cond_6

    .line 562
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v4, v2

    goto :goto_2

    :cond_6
    :goto_1
    return-object v2

    :catch_1
    move-exception p0

    :goto_2
    const-string p1, "Failed to close AssetFileDescriptor while trying to read text from URI."

    .line 579
    invoke-static {v0, p1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    :catch_2
    const-string p0, "Clipboard text was unable to be received from content URI."

    .line 576
    invoke-static {v0, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :catch_3
    move-exception p0

    const-string p1, "Attempted to get clipboard data that requires additional permission(s).\nSee the exception details for which permission(s) are required, and consider adding them to your Android Manifest as described in:\nhttps://developer.android.com/guide/topics/permissions/overview"

    .line 568
    invoke-static {v0, p1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4
.end method

.method private playSystemSound(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V
    .locals 1

    .line 183
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;->CLICK:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    .line 185
    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    return-void
.end method

.method private popSystemNavigator()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformPluginDelegate:Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;

    if-eqz v0, :cond_0

    .line 508
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;->popSystemNavigator()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    .line 513
    instance-of v0, p0, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz v0, :cond_1

    .line 514
    check-cast p0, Landroidx/activity/OnBackPressedDispatcherOwner;

    invoke-interface {p0}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private restoreSystemChromeSystemUIOverlays()V
    .locals 0

    .line 396
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->updateSystemUiOverlays()V

    return-void
.end method

.method private setClipboardData(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    const-string v0, "clipboard"

    .line 588
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    const-string v0, "text label?"

    .line 589
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 590
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method private setFrameworkHandlesBack(Z)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformPluginDelegate:Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;

    if-eqz p0, :cond_0

    .line 503
    invoke-interface {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;->setFrameworkHandlesBack(Z)V

    :cond_0
    return-void
.end method

.method private setSystemChromeApplicationSwitcherDescription(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V
    .locals 3

    .line 237
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;->label:Ljava/lang/String;

    const/4 v2, 0x0

    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;->color:I

    invoke-direct {v0, v1, v2, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;II)V

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    .line 239
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method private setSystemChromeChangeListener()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    .line 245
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 246
    new-instance v1, Lio/flutter/plugin/platform/PlatformPlugin$2;

    invoke-direct {v1, p0, v0}, Lio/flutter/plugin/platform/PlatformPlugin$2;-><init>(Lio/flutter/plugin/platform/PlatformPlugin;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method private setSystemChromeEnabledSystemUIMode(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;)V
    .locals 1

    .line 280
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->LEAN_BACK:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x706

    goto :goto_0

    .line 294
    :cond_0
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->IMMERSIVE:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    if-ne p1, v0, :cond_1

    const/16 p1, 0xf06

    goto :goto_0

    .line 310
    :cond_1
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->IMMERSIVE_STICKY:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    if-ne p1, v0, :cond_2

    const/16 p1, 0x1706

    goto :goto_0

    .line 325
    :cond_2
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->EDGE_TO_EDGE:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    if-ne p1, v0, :cond_3

    const/16 p1, 0x700

    :goto_0
    iput p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mEnabledOverlays:I

    .line 342
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->updateSystemUiOverlays()V

    :cond_3
    return-void
.end method

.method private setSystemChromeEnabledSystemUIOverlays(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiOverlay;",
            ">;)V"
        }
    .end annotation

    .line 358
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1706

    goto :goto_0

    :cond_0
    const/16 v0, 0x706

    :goto_0
    const/4 v1, 0x0

    .line 363
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 364
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiOverlay;

    .line 365
    sget-object v3, Lio/flutter/plugin/platform/PlatformPlugin$3;->$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay:[I

    invoke-virtual {v2}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiOverlay;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    and-int/lit16 v0, v0, -0x203

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iput v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mEnabledOverlays:I

    .line 377
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->updateSystemUiOverlays()V

    return-void
.end method

.method private setSystemChromePreferredOrientations(I)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    .line 217
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private setSystemChromeSystemUIOverlayStyle(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V
    .locals 7

    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    .line 403
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 405
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v2, v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 430
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->statusBarIconBrightness:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 431
    sget-object v1, Lio/flutter/plugin/platform/PlatformPlugin$3;->$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$Brightness:[I

    iget-object v6, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->statusBarIconBrightness:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    invoke-virtual {v6}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {v2, v5}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 445
    :cond_2
    :goto_0
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->statusBarColor:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 446
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->statusBarColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 452
    :cond_3
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemStatusBarContrastEnforced:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 453
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemStatusBarContrastEnforced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    .line 464
    :cond_4
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarIconBrightness:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    if-eqz v1, :cond_7

    .line 465
    sget-object v1, Lio/flutter/plugin/platform/PlatformPlugin$3;->$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$Brightness:[I

    iget-object v6, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarIconBrightness:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    invoke-virtual {v6}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    goto :goto_1

    .line 474
    :cond_5
    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    goto :goto_1

    .line 469
    :cond_6
    invoke-virtual {v2, v5}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    .line 479
    :cond_7
    :goto_1
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarColor:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 480
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 484
    :cond_8
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarDividerColor:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 485
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarDividerColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarDividerColor(I)V

    .line 492
    :cond_9
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarContrastEnforced:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 494
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarContrastEnforced:Ljava/lang/Boolean;

    .line 495
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 494
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    :cond_a
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->currentTheme:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;

    return-void
.end method

.method private share(Ljava/lang/String;)V
    .locals 2

    .line 610
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 611
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 612
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 613
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 615
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->setPlatformMessageHandler(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;)V

    return-void
.end method

.method public updateSystemUiOverlays()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    .line 389
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mEnabledOverlays:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->currentTheme:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeSystemUIOverlayStyle(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V

    :cond_0
    return-void
.end method

.method vibrateHapticFeedback(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;)V
    .locals 2

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 193
    sget-object v0, Lio/flutter/plugin/platform/PlatformPlugin$3;->$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$HapticFeedbackType:[I

    invoke-virtual {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    .line 205
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 195
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_0
    return-void
.end method

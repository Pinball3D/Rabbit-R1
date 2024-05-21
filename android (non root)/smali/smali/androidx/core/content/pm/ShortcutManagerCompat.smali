.class public Landroidx/core/content/pm/ShortcutManagerCompat;
.super Ljava/lang/Object;
.source "ShortcutManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/ShortcutManagerCompat$Api25Impl;,
        Landroidx/core/content/pm/ShortcutManagerCompat$ShortcutMatchFlags;
    }
.end annotation


# static fields
.field static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final DEFAULT_MAX_ICON_DIMENSION_DP:I = 0x60

.field private static final DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP:I = 0x30

.field public static final EXTRA_SHORTCUT_ID:Ljava/lang/String; = "android.intent.extra.shortcut.ID"

.field public static final FLAG_MATCH_CACHED:I = 0x8

.field public static final FLAG_MATCH_DYNAMIC:I = 0x2

.field public static final FLAG_MATCH_MANIFEST:I = 0x1

.field public static final FLAG_MATCH_PINNED:I = 0x4

.field static final INSTALL_SHORTCUT_PERMISSION:Ljava/lang/String; = "com.android.launcher.permission.INSTALL_SHORTCUT"

.field private static final SHORTCUT_LISTENER_INTENT_FILTER_ACTION:Ljava/lang/String; = "androidx.core.content.pm.SHORTCUT_LISTENER"

.field private static final SHORTCUT_LISTENER_META_DATA_KEY:Ljava/lang/String; = "androidx.core.content.pm.shortcut_listener_impl"

.field private static volatile sShortcutInfoChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 324
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 332
    invoke-virtual {v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_0
    const-class v3, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 339
    :cond_1
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 340
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 341
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    return v0
.end method

.method static convertUriIconToBitmapIcon(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z
    .locals 5

    .line 554
    iget-object v0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 557
    :cond_0
    iget-object v0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iget v0, v0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    return v2

    .line 561
    :cond_1
    iget-object v4, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v4, p0}, Landroidx/core/graphics/drawable/IconCompat;->getUriInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    .line 565
    :cond_2
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    if-ne v0, v3, :cond_4

    .line 570
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    goto :goto_0

    .line 571
    :cond_4
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    :goto_0
    iput-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return v2
.end method

.method static convertUriIconsToBitmapIcons(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 579
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 580
    invoke-static {p0, v1}, Landroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconToBitmapIcon(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static createShortcutResultIntent(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Landroid/content/Intent;
    .locals 1

    .line 240
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 241
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    .line 244
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 246
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/core/content/pm/ShortcutInfoCompat;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static disableShortcuts(Landroid/content/Context;Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 606
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 607
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 610
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 611
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 612
    invoke-virtual {p2, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static enableShortcuts(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 634
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 637
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 638
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 639
    iget-object v3, v3, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 641
    :cond_0
    const-class v2, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutManager;->enableShortcuts(Ljava/util/List;)V

    .line 644
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 645
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 646
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static getDynamicShortcuts(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 495
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 496
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v0

    .line 497
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 498
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 499
    new-instance v3, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    invoke-direct {v3, p0, v2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getIconDimensionInternal(Landroid/content/Context;Z)I
    .locals 2

    const-string v0, "activity"

    .line 830
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 832
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x30

    goto :goto_2

    :cond_2
    const/16 v0, 0x60

    .line 833
    :goto_2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 835
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p1, :cond_3

    .line 836
    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_3

    :cond_3
    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    :goto_3
    const/high16 p1, 0x43200000    # 160.0f

    div-float/2addr p0, p1

    int-to-float p1, v0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getIconMaxHeight(Landroid/content/Context;)I
    .locals 1

    .line 399
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getIconMaxHeight()I

    move-result p0

    return p0
.end method

.method public static getIconMaxWidth(Landroid/content/Context;)I
    .locals 1

    .line 388
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getIconMaxWidth()I

    move-result p0

    return p0
.end method

.method public static getMaxShortcutCountPerActivity(Landroid/content/Context;)I
    .locals 1

    .line 351
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    move-result p0

    return p0
.end method

.method static getShortcutInfoChangeListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method private static getShortcutInfoCompatWithLowestRank(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 803
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 804
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->getRank()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 805
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v0

    .line 806
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->getRank()I

    move-result v1

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    if-nez v0, :cond_4

    .line 865
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 867
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 868
    new-instance v2, Landroid/content/Intent;

    const-string v3, "androidx.core.content.pm.SHORTCUT_LISTENER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x80

    .line 871
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 874
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 875
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 879
    :cond_0
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "androidx.core.content.pm.shortcut_listener_impl"

    .line 884
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    const-class v3, Landroidx/core/content/pm/ShortcutManagerCompat;

    .line 889
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    .line 890
    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    .line 891
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v4

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 892
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    .line 893
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 892
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    if-nez p0, :cond_4

    sput-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    :cond_4
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    return-object p0
.end method

.method private static getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "*>;"
        }
    .end annotation

    sget-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroidx/core/content/pm/ShortcutManagerCompat;

    .line 845
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "androidx.sharetarget.ShortcutInfoCompatSaverImpl"

    const/4 v2, 0x0

    .line 846
    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 848
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 849
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    if-nez p0, :cond_0

    .line 856
    new-instance p0, Landroidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl;

    invoke-direct {p0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl;-><init>()V

    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    :cond_0
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    return-object p0
.end method

.method public static getShortcuts(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 280
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 281
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->getShortcuts(I)Ljava/util/List;

    move-result-object p1

    .line 282
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->fromShortcuts(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static isRateLimitingActive(Landroid/content/Context;)Z
    .locals 1

    .line 368
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->isRateLimitingActive()Z

    move-result p0

    return p0
.end method

.method public static isRequestPinShortcutSupported(Landroid/content/Context;)Z
    .locals 1

    .line 154
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result p0

    return p0
.end method

.method public static pushDynamicShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z
    .locals 6

    .line 747
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-gt v0, v1, :cond_1

    .line 751
    invoke-virtual {p1, v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->isExcludedFromSurfaces(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 753
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return v2

    .line 757
    :cond_1
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getMaxShortcutCountPerActivity(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    .line 765
    :cond_2
    const-class v3, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager;

    .line 766
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    .line 765
    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutManager;->pushDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 779
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v3

    .line 781
    :try_start_0
    invoke-virtual {v3}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->getShortcuts()Ljava/util/List;

    move-result-object v4

    .line 782
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v0, :cond_3

    new-array v0, v2, [Ljava/lang/String;

    .line 784
    invoke-static {v4}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoCompatWithLowestRank(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 783
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    :cond_3
    new-array v0, v2, [Landroidx/core/content/pm/ShortcutInfoCompat;

    aput-object p1, v0, v1

    .line 786
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 792
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    goto :goto_1

    .line 794
    :cond_4
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception v0

    .line 791
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 792
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    goto :goto_2

    .line 794
    :cond_5
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    .line 795
    throw v0

    .line 791
    :catch_0
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 792
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    goto :goto_3

    .line 794
    :cond_6
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method public static removeAllDynamicShortcuts(Landroid/content/Context;)V
    .locals 1

    .line 678
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->removeAllDynamicShortcuts()V

    .line 681
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeAllShortcuts()Ljava/lang/Object;

    .line 682
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 683
    invoke-virtual {v0}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onAllShortcutsRemoved()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 660
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    .line 663
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 664
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 665
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeLongLivedShortcuts(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 705
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->removeLongLivedShortcuts(Ljava/util/List;)V

    .line 706
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 707
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 708
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;I)",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 909
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    return-object p0

    .line 911
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 912
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 913
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->isExcludedFromSurfaces(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 914
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 425
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    .line 431
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 432
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutUsageReported(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 191
    invoke-virtual {p1, v0}, Landroidx/core/content/pm/ShortcutInfoCompat;->isExcludedFromSurfaces(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 196
    :cond_0
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 197
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 196
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    move-result p0

    return p0
.end method

.method public static setDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    .line 462
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 464
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 467
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 468
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 469
    invoke-virtual {v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 471
    :cond_0
    const-class v3, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 475
    :cond_1
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeAllShortcuts()Ljava/lang/Object;

    .line 476
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 478
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 479
    invoke-virtual {v1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onAllShortcutsRemoved()V

    .line 480
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    return v0
.end method

.method static setShortcutInfoChangeListeners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    return-void
.end method

.method static setShortcutInfoCompatSaver(Landroidx/core/content/pm/ShortcutInfoCompatSaver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    return-void
.end method

.method public static updateShortcuts(Landroid/content/Context;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 529
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 535
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 536
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 537
    invoke-virtual {v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 539
    :cond_0
    const-class v3, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 544
    :cond_1
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 545
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 546
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutUpdated(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    return v0
.end method

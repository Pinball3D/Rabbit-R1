.class public final Landroidx/core/hardware/display/DisplayManagerCompat;
.super Ljava/lang/Object;
.source "DisplayManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/hardware/display/DisplayManagerCompat$Api17Impl;
    }
.end annotation


# static fields
.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field private static final sInstances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/core/hardware/display/DisplayManagerCompat;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/core/hardware/display/DisplayManagerCompat;
    .locals 3

    sget-object v0, Landroidx/core/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    .line 66
    monitor-enter v0

    .line 67
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Landroidx/core/hardware/display/DisplayManagerCompat;

    invoke-direct {v2, p0}, Landroidx/core/hardware/display/DisplayManagerCompat;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/hardware/display/DisplayManagerCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getDisplay(I)Landroid/view/Display;
    .locals 1

    iget-object p0, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    const-string v0, "display"

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 89
    invoke-static {p0, p1}, Landroidx/core/hardware/display/DisplayManagerCompat$Api17Impl;->getDisplay(Landroid/hardware/display/DisplayManager;I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 1

    iget-object p0, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    const-string v0, "display"

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 110
    invoke-static {p0}, Landroidx/core/hardware/display/DisplayManagerCompat$Api17Impl;->getDisplays(Landroid/hardware/display/DisplayManager;)[Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 0

    iget-object p0, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    const-string p1, "display"

    .line 140
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 139
    invoke-static {p0}, Landroidx/core/hardware/display/DisplayManagerCompat$Api17Impl;->getDisplays(Landroid/hardware/display/DisplayManager;)[Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

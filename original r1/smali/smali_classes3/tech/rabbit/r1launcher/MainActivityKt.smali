.class public final Ltech/rabbit/r1launcher/MainActivityKt;
.super Ljava/lang/Object;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000*\"\u0010\u0005\"\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a8\u0006\t"
    }
    d2 = {
        "TAG",
        "",
        "globalBinaryMessenger",
        "Ljava/lang/ref/WeakReference;",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "OrientationHandler",
        "Lkotlin/Function1;",
        "",
        "",
        "app_productionEnvRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field private static globalBinaryMessenger:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/flutter/plugin/common/BinaryMessenger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ltech/rabbit/r1launcher/MainActivityKt;->globalBinaryMessenger:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$getGlobalBinaryMessenger$p()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/MainActivityKt;->globalBinaryMessenger:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic access$setGlobalBinaryMessenger$p(Ljava/lang/ref/WeakReference;)V
    .locals 0

    sput-object p0, Ltech/rabbit/r1launcher/MainActivityKt;->globalBinaryMessenger:Ljava/lang/ref/WeakReference;

    return-void
.end method

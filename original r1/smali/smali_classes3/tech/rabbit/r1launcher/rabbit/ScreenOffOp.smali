.class public final Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;
.super Ljava/lang/Object;
.source "ScreenOffOp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;",
        "",
        "()V",
        "TAG",
        "",
        "isHomePage",
        "",
        "isScreenOn",
        "()Z",
        "setScreenOn",
        "(Z)V",
        "",
        "isHome",
        "screenOff",
        "startJudgeNeedScreenOff",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;

.field private static final TAG:Ljava/lang/String; = "ScreenOffOp"

.field private static isHomePage:Z

.field private static isScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;

    const/4 v0, 0x1

    sput-boolean v0, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->isHomePage:Z

    sput-boolean v0, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->isScreenOn:Z

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isHomePage(Z)V
    .locals 0

    sput-boolean p1, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->isHomePage:Z

    return-void
.end method

.method public final isScreenOn()Z
    .locals 0

    sget-boolean p0, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->isScreenOn:Z

    return p0
.end method

.method public final screenOff()V
    .locals 7

    const-string p0, "goToSleep"

    .line 27
    sget-object v0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->getLastUpKey()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    return-void

    .line 31
    :cond_0
    :try_start_0
    const-class v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 34
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 32
    invoke-virtual {v0, p0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 37
    sget-object v2, Ltech/rabbit/common/utils/RabbitCommon;->INSTANCE:Ltech/rabbit/common/utils/RabbitCommon;

    invoke-virtual {v2}, Ltech/rabbit/common/utils/RabbitCommon;->getSWeakActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v4

    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screenoff---"

    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final setScreenOn(Z)V
    .locals 0

    sput-boolean p1, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->isScreenOn:Z

    return-void
.end method

.method public final startJudgeNeedScreenOff()V
    .locals 1

    sget-boolean v0, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->isHomePage:Z

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->screenOff()V

    :cond_0
    return-void
.end method

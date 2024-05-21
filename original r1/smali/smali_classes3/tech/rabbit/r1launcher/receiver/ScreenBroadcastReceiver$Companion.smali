.class public final Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$Companion;
.super Ljava/lang/Object;
.source "ScreenBroadcastReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$Companion;",
        "",
        "()V",
        "register",
        "Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;",
        "unregister",
        "",
        "receiver",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final register(Landroid/content/Context;Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;)Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "listener"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance p0, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;

    invoke-direct {p0, p2}, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;-><init>(Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;)V

    .line 19
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 20
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 21
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 22
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    move-object v0, p0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object p0
.end method

.method public final unregister(Landroid/content/Context;Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "receiver"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    check-cast p2, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

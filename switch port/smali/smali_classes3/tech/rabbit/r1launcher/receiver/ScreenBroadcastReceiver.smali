.class public final Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenBroadcastReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$Companion;,
        Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\u000cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "listener",
        "Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;",
        "(Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;)V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "Companion",
        "OnScreenStateChangeListener",
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

.field public static final Companion:Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$Companion;


# instance fields
.field private final listener:Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;->Companion:Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$Companion;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;->$stable:I

    return-void
.end method

.method public constructor <init>(Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;->listener:Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x7ed8ea7f

    if-eq p2, v0, :cond_3

    const v0, -0x56ac2893

    if-eq p2, v0, :cond_2

    const v0, 0x311a1d6c

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;->listener:Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;

    .line 36
    invoke-interface {p0}, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;->onScreenUnlock()V

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;->listener:Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;

    .line 34
    invoke-interface {p0}, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;->onScreenOn()V

    goto :goto_0

    :cond_3
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;->listener:Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;

    .line 35
    invoke-interface {p0}, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;->onScreenOff()V

    :cond_5
    :goto_0
    return-void
.end method

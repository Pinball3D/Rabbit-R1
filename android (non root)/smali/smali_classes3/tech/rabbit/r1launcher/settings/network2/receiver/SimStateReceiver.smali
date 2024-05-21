.class public final Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimStateReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;,
        Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "onSimStateListener",
        "Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "Companion",
        "OnSimStateListener",
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

.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final Companion:Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;

.field private static final EXTRA_SIM_STATE:Ljava/lang/String; = "ss"

.field private static final INSTANCE$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUE_SIM_STATE_LOADED:Ljava/lang/String; = "LOADED"

.field private static isRegister:Z


# instance fields
.field private onSimStateListener:Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->Companion:Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->$stable:I

    .line 22
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion$INSTANCE$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion$INSTANCE$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->INSTANCE$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$isRegister$cp()Z
    .locals 1

    sget-boolean v0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->isRegister:Z

    return v0
.end method

.method public static final synthetic access$setOnSimStateListener$p(Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;)V
    .locals 0

    .line 8
    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->onSimStateListener:Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;

    return-void
.end method

.method public static final synthetic access$setRegister$cp(Z)V
    .locals 0

    sput-boolean p0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->isRegister:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 46
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p1, "ss"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string p2, "LOADED"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->onSimStateListener:Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;

    if-eqz p0, :cond_4

    .line 47
    invoke-interface {p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;->onSimStateChangeToLoaded()V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->onSimStateListener:Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;

    if-eqz p0, :cond_4

    .line 49
    invoke-interface {p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;->onSimStateChangeToNotLoaded()V

    :cond_4
    :goto_1
    return-void
.end method

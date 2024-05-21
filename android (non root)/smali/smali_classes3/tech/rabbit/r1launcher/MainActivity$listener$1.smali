.class final Ltech/rabbit/r1launcher/MainActivity$listener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/MainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/content/Context;",
        "Landroid/bluetooth/BluetoothDevice;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "context",
        "Landroid/content/Context;",
        "<anonymous parameter 1>",
        "Landroid/bluetooth/BluetoothDevice;",
        "isConnected",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Ltech/rabbit/r1launcher/MainActivity$listener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/MainActivity$listener$1;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/MainActivity$listener$1;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/MainActivity$listener$1;->INSTANCE:Ltech/rabbit/r1launcher/MainActivity$listener$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Landroid/content/Context;

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/MainActivity$listener$1;->invoke(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "<anonymous parameter 1>"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 90
    invoke-static {p1}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->setBluetoothScoOn(Landroid/content/Context;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {p1}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->setSpeakerphoneOn(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

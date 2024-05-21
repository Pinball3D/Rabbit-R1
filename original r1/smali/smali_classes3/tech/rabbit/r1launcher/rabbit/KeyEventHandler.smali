.class public final Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;
.super Ljava/lang/Object;
.source "KeyEventHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;",
        "",
        "()V",
        "TAG",
        "",
        "deviceEvents",
        "LDeviceEventsDispatcher;",
        "<set-?>",
        "",
        "lastKey",
        "getLastKey",
        "()I",
        "lastUpKey",
        "getLastUpKey",
        "onKeyDown",
        "",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onKeyUp",
        "setup",
        "",
        "deviceEventsDispatcher",
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

.field public static final INSTANCE:Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;

.field private static final TAG:Ljava/lang/String;

.field private static deviceEvents:LDeviceEventsDispatcher;

.field private static lastKey:I

.field private static lastUpKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;

    const-string v0, "KeyEventHandler"

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->lastKey:I

    sput v0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->lastUpKey:I

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getLastKey()I
    .locals 0

    sget p0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->lastKey:I

    return p0
.end method

.method public final getLastUpKey()I
    .locals 0

    sget p0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->lastUpKey:I

    return p0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 p0, 0x13

    if-eq p1, p0, :cond_0

    const/16 p0, 0x14

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    sget p0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->lastKey:I

    if-eq p0, p1, :cond_2

    .line 24
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendClear()V

    sput p1, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->lastKey:I

    sget-object p0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->deviceEvents:LDeviceEventsDispatcher;

    if-nez p0, :cond_1

    const-string p0, "deviceEvents"

    .line 26
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    int-to-long v0, p1

    new-instance p2, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler$onKeyDown$1;

    invoke-direct {p2, p1}, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler$onKeyDown$1;-><init>(I)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1, p2}, LDeviceEventsDispatcher;->onKeyDown(JLkotlin/jvm/functions/Function1;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p0, -0x1

    sput p0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->lastKey:I

    sput p1, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->lastUpKey:I

    const/16 p0, 0x13

    if-eq p1, p0, :cond_0

    const/16 p0, 0x14

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->TAG:Ljava/lang/String;

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Volume key up "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Ltech/rabbit/common/utils/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->deviceEvents:LDeviceEventsDispatcher;

    if-nez p0, :cond_1

    const-string p0, "deviceEvents"

    .line 49
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    int-to-long v0, p1

    new-instance p2, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler$onKeyUp$1;

    invoke-direct {p2, p1}, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler$onKeyUp$1;-><init>(I)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1, p2}, LDeviceEventsDispatcher;->onKeyUp(JLkotlin/jvm/functions/Function1;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setup(LDeviceEventsDispatcher;)V
    .locals 0

    const-string p0, "deviceEventsDispatcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->deviceEvents:LDeviceEventsDispatcher;

    return-void
.end method

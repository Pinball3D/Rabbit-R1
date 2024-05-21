.class public final Ltech/rabbit/r1launcher/models/settings/BluetoothListData;
.super Ljava/lang/Object;
.source "BluetoothListData.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0008\"\u0004\u0008\u0012\u0010\nR\u001a\u0010\u0013\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0008\"\u0004\u0008\u0014\u0010\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0008\"\u0004\u0008\u0019\u0010\nR\u001a\u0010\u001a\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0008\"\u0004\u0008\u001c\u0010\nR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/models/settings/BluetoothListData;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        "itemType",
        "",
        "(I)V",
        "bond",
        "",
        "getBond",
        "()Z",
        "setBond",
        "(Z)V",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "getDevice",
        "()Landroid/bluetooth/BluetoothDevice;",
        "setDevice",
        "(Landroid/bluetooth/BluetoothDevice;)V",
        "isConnected",
        "setConnected",
        "isMyDevice",
        "setMyDevice",
        "getItemType",
        "()I",
        "loading",
        "getLoading",
        "setLoading",
        "switch",
        "getSwitch",
        "setSwitch",
        "title",
        "",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
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
.field public static final $stable:I = 0x8


# instance fields
.field private bond:Z

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private isConnected:Z

.field private isMyDevice:Z

.field private final itemType:I

.field private loading:Z

.field private switch:Z

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->itemType:I

    const-string p1, ""

    iput-object p1, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBond()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->bond:Z

    return p0
.end method

.method public final getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->device:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public getItemType()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->itemType:I

    return p0
.end method

.method public final getLoading()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->loading:Z

    return p0
.end method

.method public final getSwitch()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->switch:Z

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final isConnected()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->isConnected:Z

    return p0
.end method

.method public final isMyDevice()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->isMyDevice:Z

    return p0
.end method

.method public final setBond(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->bond:Z

    return-void
.end method

.method public final setConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->isConnected:Z

    return-void
.end method

.method public final setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public final setLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->loading:Z

    return-void
.end method

.method public final setMyDevice(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->isMyDevice:Z

    return-void
.end method

.method public final setSwitch(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->switch:Z

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->title:Ljava/lang/String;

    return-void
.end method

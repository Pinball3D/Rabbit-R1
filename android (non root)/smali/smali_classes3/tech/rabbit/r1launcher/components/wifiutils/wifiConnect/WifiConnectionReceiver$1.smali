.class synthetic Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver$1;
.super Ljava/lang/Object;
.source "WifiConnectionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$net$wifi$SupplicantState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    :try_start_0
    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

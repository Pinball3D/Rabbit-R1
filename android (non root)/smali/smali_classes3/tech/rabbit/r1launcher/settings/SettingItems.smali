.class public abstract enum Ltech/rabbit/r1launcher/settings/SettingItems;
.super Ljava/lang/Enum;
.source "SettingItems.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/settings/SettingItems$About;,
        Ltech/rabbit/r1launcher/settings/SettingItems$Bluetooth;,
        Ltech/rabbit/r1launcher/settings/SettingItems$Brightness;,
        Ltech/rabbit/r1launcher/settings/SettingItems$Compliance;,
        Ltech/rabbit/r1launcher/settings/SettingItems$Disclaimer;,
        Ltech/rabbit/r1launcher/settings/SettingItems$EnableTerminal;,
        Ltech/rabbit/r1launcher/settings/SettingItems$Network;,
        Ltech/rabbit/r1launcher/settings/SettingItems$PowerOff;,
        Ltech/rabbit/r1launcher/settings/SettingItems$Security;,
        Ltech/rabbit/r1launcher/settings/SettingItems$Volume;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltech/rabbit/r1launcher/settings/SettingItems;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0087\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\r0\u000cH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/SettingItems;",
        "",
        "labelResId",
        "",
        "(Ljava/lang/String;II)V",
        "getLabelResId",
        "()I",
        "doAction",
        "",
        "activity",
        "Landroid/app/Activity;",
        "getHolderClass",
        "Ljava/lang/Class;",
        "Ltech/rabbit/r1launcher/settings/holder/BaseHolder;",
        "getItemView",
        "Landroid/view/View;",
        "parent",
        "Landroid/view/ViewGroup;",
        "Brightness",
        "Volume",
        "Bluetooth",
        "Network",
        "Security",
        "PowerOff",
        "EnableTerminal",
        "About",
        "Compliance",
        "Disclaimer",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Ltech/rabbit/r1launcher/settings/SettingItems;

.field public static final enum About:Ltech/rabbit/r1launcher/settings/SettingItems;

.field public static final enum Bluetooth:Ltech/rabbit/r1launcher/settings/SettingItems;

.field public static final enum Brightness:Ltech/rabbit/r1launcher/settings/SettingItems;

.field public static final enum Compliance:Ltech/rabbit/r1launcher/settings/SettingItems;

.field public static final enum Disclaimer:Ltech/rabbit/r1launcher/settings/SettingItems;

.field public static final enum EnableTerminal:Ltech/rabbit/r1launcher/settings/SettingItems;

.field public static final enum Network:Ltech/rabbit/r1launcher/settings/SettingItems;

.field public static final enum PowerOff:Ltech/rabbit/r1launcher/settings/SettingItems;

.field public static final enum Security:Ltech/rabbit/r1launcher/settings/SettingItems;

.field public static final enum Volume:Ltech/rabbit/r1launcher/settings/SettingItems;


# instance fields
.field private final labelResId:I


# direct methods
.method private static final synthetic $values()[Ltech/rabbit/r1launcher/settings/SettingItems;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ltech/rabbit/r1launcher/settings/SettingItems;

    const/4 v1, 0x0

    sget-object v2, Ltech/rabbit/r1launcher/settings/SettingItems;->Brightness:Ltech/rabbit/r1launcher/settings/SettingItems;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ltech/rabbit/r1launcher/settings/SettingItems;->Volume:Ltech/rabbit/r1launcher/settings/SettingItems;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ltech/rabbit/r1launcher/settings/SettingItems;->Bluetooth:Ltech/rabbit/r1launcher/settings/SettingItems;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ltech/rabbit/r1launcher/settings/SettingItems;->Network:Ltech/rabbit/r1launcher/settings/SettingItems;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ltech/rabbit/r1launcher/settings/SettingItems;->Security:Ltech/rabbit/r1launcher/settings/SettingItems;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ltech/rabbit/r1launcher/settings/SettingItems;->PowerOff:Ltech/rabbit/r1launcher/settings/SettingItems;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ltech/rabbit/r1launcher/settings/SettingItems;->EnableTerminal:Ltech/rabbit/r1launcher/settings/SettingItems;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ltech/rabbit/r1launcher/settings/SettingItems;->About:Ltech/rabbit/r1launcher/settings/SettingItems;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ltech/rabbit/r1launcher/settings/SettingItems;->Compliance:Ltech/rabbit/r1launcher/settings/SettingItems;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ltech/rabbit/r1launcher/settings/SettingItems;->Disclaimer:Ltech/rabbit/r1launcher/settings/SettingItems;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Ltech/rabbit/r1launcher/settings/SettingItems$Brightness;

    const-string v1, "Brightness"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/SettingItems$Brightness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/SettingItems;->Brightness:Ltech/rabbit/r1launcher/settings/SettingItems;

    .line 33
    new-instance v0, Ltech/rabbit/r1launcher/settings/SettingItems$Volume;

    const-string v1, "Volume"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/SettingItems$Volume;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/SettingItems;->Volume:Ltech/rabbit/r1launcher/settings/SettingItems;

    .line 38
    new-instance v0, Ltech/rabbit/r1launcher/settings/SettingItems$Bluetooth;

    const-string v1, "Bluetooth"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/SettingItems$Bluetooth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/SettingItems;->Bluetooth:Ltech/rabbit/r1launcher/settings/SettingItems;

    .line 43
    new-instance v0, Ltech/rabbit/r1launcher/settings/SettingItems$Network;

    const-string v1, "Network"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/SettingItems$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/SettingItems;->Network:Ltech/rabbit/r1launcher/settings/SettingItems;

    .line 48
    new-instance v0, Ltech/rabbit/r1launcher/settings/SettingItems$Security;

    const-string v1, "Security"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/SettingItems$Security;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/SettingItems;->Security:Ltech/rabbit/r1launcher/settings/SettingItems;

    .line 53
    new-instance v0, Ltech/rabbit/r1launcher/settings/SettingItems$PowerOff;

    const-string v1, "PowerOff"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/SettingItems$PowerOff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/SettingItems;->PowerOff:Ltech/rabbit/r1launcher/settings/SettingItems;

    .line 58
    new-instance v0, Ltech/rabbit/r1launcher/settings/SettingItems$EnableTerminal;

    const-string v1, "EnableTerminal"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/SettingItems$EnableTerminal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/SettingItems;->EnableTerminal:Ltech/rabbit/r1launcher/settings/SettingItems;

    .line 67
    new-instance v0, Ltech/rabbit/r1launcher/settings/SettingItems$About;

    const-string v1, "About"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/SettingItems$About;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/SettingItems;->About:Ltech/rabbit/r1launcher/settings/SettingItems;

    .line 72
    new-instance v0, Ltech/rabbit/r1launcher/settings/SettingItems$Compliance;

    const-string v1, "Compliance"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/SettingItems$Compliance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/SettingItems;->Compliance:Ltech/rabbit/r1launcher/settings/SettingItems;

    .line 77
    new-instance v0, Ltech/rabbit/r1launcher/settings/SettingItems$Disclaimer;

    const-string v1, "Disclaimer"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/SettingItems$Disclaimer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/SettingItems;->Disclaimer:Ltech/rabbit/r1launcher/settings/SettingItems;

    invoke-static {}, Ltech/rabbit/r1launcher/settings/SettingItems;->$values()[Ltech/rabbit/r1launcher/settings/SettingItems;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/settings/SettingItems;->$VALUES:[Ltech/rabbit/r1launcher/settings/SettingItems;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/settings/SettingItems;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ltech/rabbit/r1launcher/settings/SettingItems;->labelResId:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/settings/SettingItems;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Ltech/rabbit/r1launcher/settings/SettingItems;",
            ">;"
        }
    .end annotation

    sget-object v0, Ltech/rabbit/r1launcher/settings/SettingItems;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ltech/rabbit/r1launcher/settings/SettingItems;
    .locals 1

    const-class v0, Ltech/rabbit/r1launcher/settings/SettingItems;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/SettingItems;

    return-object p0
.end method

.method public static values()[Ltech/rabbit/r1launcher/settings/SettingItems;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/settings/SettingItems;->$VALUES:[Ltech/rabbit/r1launcher/settings/SettingItems;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltech/rabbit/r1launcher/settings/SettingItems;

    return-object v0
.end method


# virtual methods
.method public abstract doAction(Landroid/app/Activity;)V
.end method

.method public getHolderClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ltech/rabbit/r1launcher/settings/holder/BaseHolder;",
            ">;"
        }
    .end annotation

    const-class p0, Ltech/rabbit/r1launcher/settings/holder/CommonSettingHolder;

    return-object p0
.end method

.method public getItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Ltech/rabbit/r1launcher/R$layout;->item_setting_common:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLabelResId()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/settings/SettingItems;->labelResId:I

    return p0
.end method

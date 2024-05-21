.class final Ltech/rabbit/r1launcher/settings/SettingItems$EnableTerminal;
.super Ltech/rabbit/r1launcher/settings/SettingItems;
.source "SettingItems.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/settings/SettingItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EnableTerminal"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/SettingItems$EnableTerminal;",
        "Ltech/rabbit/r1launcher/settings/SettingItems;",
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
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    sget v0, Ltech/rabbit/r1launcher/R$string;->settings_page_system_enable_terminal:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ltech/rabbit/r1launcher/settings/SettingItems;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public doAction(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
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

    const-class p0, Ltech/rabbit/r1launcher/settings/holder/EnableTerminalSettingHolder;

    return-object p0
.end method

.method public getItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 65
    sget v0, Ltech/rabbit/r1launcher/R$layout;->item_setting_enable_terminal:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

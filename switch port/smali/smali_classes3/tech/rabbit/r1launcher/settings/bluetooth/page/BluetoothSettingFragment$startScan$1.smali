.class final Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$startScan$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothSettingFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/bluetooth/BluetoothDevice;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothSettingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothSettingFragment.kt\ntech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$startScan$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,457:1\n766#2:458\n857#2,2:459\n*S KotlinDebug\n*F\n+ 1 BluetoothSettingFragment.kt\ntech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$startScan$1\n*L\n192#1:458\n192#1:459,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "scanResult",
        "Landroid/bluetooth/BluetoothDevice;",
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


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;


# direct methods
.method public static synthetic $r8$lambda$8QLrckcsShhyU_WrHoCtLKd80Jg(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$startScan$1;->invoke$lambda$2(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)V

    return-void
.end method

.method constructor <init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$startScan$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$2(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getAdapter$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getDataList$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 191
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$startScan$1;->invoke(Landroid/bluetooth/BluetoothDevice;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    const-string v0, "scanResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$startScan$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 192
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getDataList$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 459
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    .line 192
    invoke-virtual {v3}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 193
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$startScan$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 194
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getDataList$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;-><init>(I)V

    .line 195
    invoke-virtual {v1, p1}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 194
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$startScan$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 197
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;->rv:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-eqz p1, :cond_4

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$startScan$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    new-instance v0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$startScan$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$startScan$1$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)V

    invoke-virtual {p1, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

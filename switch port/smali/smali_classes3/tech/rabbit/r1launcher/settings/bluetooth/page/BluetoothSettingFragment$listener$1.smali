.class final Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothSettingFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;-><init>()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothSettingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothSettingFragment.kt\ntech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,457:1\n1#2:458\n*E\n"
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
        "bluetoothDevice",
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


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 79
    check-cast p1, Landroid/content/Context;

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->invoke(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bluetoothDevice"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "bluetooth device :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " , connected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothDeviceMonitor"

    .line 80
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object p1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->isBluetoothOpened()Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_9

    iget-object p3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 86
    invoke-static {p3}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$hasMyDevicesTitleInList(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 87
    invoke-static {p0, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$addFirstMineDevice(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_3

    :cond_0
    iget-object p3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 90
    invoke-static {p3}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getDataList$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ljava/util/ArrayList;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_2
    check-cast v1, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    const/4 p3, 0x1

    if-nez v1, :cond_3

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v1, p3}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->setMyDevice(Z)V

    :goto_0
    const/4 v0, 0x2

    if-nez v1, :cond_6

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 94
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getDataList$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ljava/util/ArrayList;

    move-result-object p1

    .line 96
    new-instance v1, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    invoke-direct {v1, p3}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;-><init>(I)V

    .line 97
    invoke-virtual {v1, p2}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 98
    invoke-virtual {v1, p3}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->setConnected(Z)V

    .line 99
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 94
    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 100
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;->st:Ltech/rabbit/r1launcher/widget/SettingTitle;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/widget/SettingTitle;->isFocused()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 101
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getAdapter$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;->setCurrentFocusPos(I)V

    :cond_5
    :goto_1
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 103
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getAdapter$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    :cond_6
    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 107
    invoke-static {p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getDataList$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 108
    invoke-static {p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getDataList$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v1, p3}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->setConnected(Z)V

    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 110
    invoke-static {p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p2, p2, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;->st:Ltech/rabbit/r1launcher/widget/SettingTitle;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/widget/SettingTitle;->isFocused()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 111
    invoke-static {p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getAdapter$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p2, p1}, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;->setCurrentFocusPos(I)V

    :cond_8
    :goto_2
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 113
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getDataList$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 114
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getAdapter$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 118
    :cond_9
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "bluetooth device disconnected :"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TAG"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 120
    invoke-static {p3}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getDataList$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ljava/util/ArrayList;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v1, v0

    :cond_b
    check-cast v1, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    if-eqz v1, :cond_c

    .line 122
    invoke-virtual {v1, p1}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->setConnected(Z)V

    :cond_c
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 125
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getDataList$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$listener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 126
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getAdapter$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;->notifyItemChanged(I)V

    :cond_d
    :goto_3
    return-void
.end method

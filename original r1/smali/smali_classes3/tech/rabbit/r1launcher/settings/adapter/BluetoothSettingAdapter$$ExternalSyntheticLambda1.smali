.class public final synthetic Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic f$0:Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

.field public final synthetic f$1:Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

.field public final synthetic f$2:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;Ltech/rabbit/r1launcher/models/settings/BluetoothListData;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter$$ExternalSyntheticLambda1;->f$0:Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter$$ExternalSyntheticLambda1;->f$1:Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter$$ExternalSyntheticLambda1;->f$0:Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter$$ExternalSyntheticLambda1;->f$1:Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;->$r8$lambda$WshuCVO2LgI4hLGo3mt3HJZ0vdw(Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;Ltech/rabbit/r1launcher/models/settings/BluetoothListData;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

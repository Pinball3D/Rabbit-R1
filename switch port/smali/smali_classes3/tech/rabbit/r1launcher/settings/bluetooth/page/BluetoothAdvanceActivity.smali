.class public final Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BluetoothAdvanceActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014J\u0012\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "dispatchTouchEvent",
        "",
        "ev",
        "Landroid/view/MotionEvent;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onTouchEvent",
        "event",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 11
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    sget p1, Ltech/rabbit/r1launcher/R$layout;->activity_bluetooth:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceActivity;->setContentView(I)V

    .line 14
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "beginTransaction(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget v0, Ltech/rabbit/r1launcher/R$id;->fl_container:I

    new-instance v1, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;-><init>()V

    .line 16
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->setArguments(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v3, "device"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

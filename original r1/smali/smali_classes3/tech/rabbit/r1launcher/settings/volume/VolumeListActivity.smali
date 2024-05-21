.class public final Ltech/rabbit/r1launcher/settings/volume/VolumeListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VolumeListActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014J\u001a\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0013\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/volume/VolumeListActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "settingListFragment",
        "Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;",
        "dispatchTouchEvent",
        "",
        "ev",
        "Landroid/view/MotionEvent;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyDown",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onKeyUp",
        "onTouchEvent",
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
.field private final settingListFragment:Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 12
    new-instance v0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/volume/VolumeListActivity;->settingListFragment:Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 14
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "TAG"

    const-string v0, "onCreate: "

    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget p1, Ltech/rabbit/r1launcher/R$layout;->activity_volume:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/volume/VolumeListActivity;->setContentView(I)V

    .line 17
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/volume/VolumeListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "beginTransaction(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget v0, Ltech/rabbit/r1launcher/R$id;->fl_volume_container:I

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/volume/VolumeListActivity;->settingListFragment:Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/volume/VolumeListActivity;->settingListFragment:Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;

    .line 27
    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->onKeyCodeEventDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/volume/VolumeListActivity;->settingListFragment:Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;

    .line 23
    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->onKeyCodeEventUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

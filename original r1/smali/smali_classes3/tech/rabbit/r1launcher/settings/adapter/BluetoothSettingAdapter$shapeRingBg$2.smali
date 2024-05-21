.class final Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter$shapeRingBg$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothSettingAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/drawable/Drawable;",
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter$shapeRingBg$2;->this$0:Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter$shapeRingBg$2;->this$0:Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

    .line 36
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Ltech/rabbit/r1launcher/R$drawable;->shape_setting_ring:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter$shapeRingBg$2;->invoke()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

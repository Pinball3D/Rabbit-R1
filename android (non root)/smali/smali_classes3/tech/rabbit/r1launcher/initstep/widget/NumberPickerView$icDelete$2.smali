.class final Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$icDelete$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NumberPickerView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$icDelete$2;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$icDelete$2;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    .line 188
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Ltech/rabbit/r1launcher/R$drawable;->ic_passcode_delete:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 187
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$icDelete$2;->invoke()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

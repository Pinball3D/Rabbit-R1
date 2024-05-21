.class public final Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$lambda$24$$inlined$postDelayed$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->showSelectedConfirmAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$postDelayed$runnable$1\n+ 2 NumberPickerView.kt\ntech/rabbit/r1launcher/initstep/widget/NumberPickerView\n*L\n1#1,432:1\n690#2,14:433\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/view/ViewKt$postDelayed$runnable$1"
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
.method public constructor <init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$lambda$24$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$lambda$24$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    const/4 v1, 0x0

    .line 433
    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->access$setConfirmSelectedAreaScaleFactor$p(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;F)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$lambda$24$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    .line 434
    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->access$setConfirmSelectedAreaReversScaleFactor$p(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;F)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$lambda$24$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    .line 436
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->access$calculateSelectedItemAreaLocation(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$lambda$24$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    .line 438
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->access$calculateInitItemsLocationYAndTextSize(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$lambda$24$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    .line 439
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->access$calculateItemsLocation(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$lambda$24$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    .line 440
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->access$calculateSelectedItem(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$lambda$24$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    .line 442
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->invalidate()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$lambda$24$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    const/4 v0, 0x0

    .line 444
    invoke-static {p0, v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->access$setAnimationRunning$p(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Z)V

    return-void
.end method

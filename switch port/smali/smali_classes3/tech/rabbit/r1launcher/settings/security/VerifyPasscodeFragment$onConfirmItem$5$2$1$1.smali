.class final Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onConfirmItem$5$2$1$1;
.super Ljava/lang/Object;
.source "VerifyPasscodeFragment.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->onConfirmItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/animation/ValueAnimator;",
        "onAnimationUpdate"
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onConfirmItem$5$2$1$1;->this$0:Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onConfirmItem$5$2$1$1;->this$0:Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;

    .line 288
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->access$getNumberPickerView$p(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "numberPickerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setAlpha(F)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onConfirmItem$5$2$1$1;->this$0:Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;

    .line 289
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->access$getLlTipContainer$p(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)Landroid/widget/LinearLayout;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "llTipContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

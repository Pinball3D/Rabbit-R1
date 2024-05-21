.class final Ltech/rabbit/r1launcher/ota/OtaActivity$showProgress$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OtaActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/ota/OtaActivity;->showProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $value:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Ltech/rabbit/r1launcher/ota/OtaActivity;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/ota/OtaActivity;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity$showProgress$1;->this$0:Ltech/rabbit/r1launcher/ota/OtaActivity;

    iput-object p2, p0, Ltech/rabbit/r1launcher/ota/OtaActivity$showProgress$1;->$value:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 158
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/ota/OtaActivity$showProgress$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity$showProgress$1;->this$0:Ltech/rabbit/r1launcher/ota/OtaActivity;

    .line 159
    invoke-static {v0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->access$get_tvProgressInfo$p(Ltech/rabbit/r1launcher/ota/OtaActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "_tvProgressInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltech/rabbit/r1launcher/ota/OtaActivity$showProgress$1;->$value:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity$showProgress$1;->this$0:Ltech/rabbit/r1launcher/ota/OtaActivity;

    .line 160
    invoke-static {v0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->access$get_progressBar$p(Ltech/rabbit/r1launcher/ota/OtaActivity;)Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "_progressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity$showProgress$1;->$value:Lkotlin/jvm/internal/Ref$IntRef;

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1, p0}, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;->setProgress(I)V

    return-void
.end method

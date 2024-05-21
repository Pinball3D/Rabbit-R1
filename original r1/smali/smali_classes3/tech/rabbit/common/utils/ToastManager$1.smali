.class Ltech/rabbit/common/utils/ToastManager$1;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/common/utils/ToastManager;->show(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/common/utils/ToastManager;

.field final synthetic val$charSequence:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ltech/rabbit/common/utils/ToastManager;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/common/utils/ToastManager$1;->this$0:Ltech/rabbit/common/utils/ToastManager;

    iput-object p2, p0, Ltech/rabbit/common/utils/ToastManager$1;->val$charSequence:Ljava/lang/CharSequence;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 26
    sget-object v0, Ltech/rabbit/common/utils/RabbitCommon;->sContext:Landroid/content/Context;

    iget-object p0, p0, Ltech/rabbit/common/utils/ToastManager$1;->val$charSequence:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

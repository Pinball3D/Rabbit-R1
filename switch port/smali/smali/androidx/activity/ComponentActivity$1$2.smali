.class Landroidx/activity/ComponentActivity$1$2;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity$1;->onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/activity/ComponentActivity$1;

.field final synthetic val$e:Landroid/content/IntentSender$SendIntentException;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity$1;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/activity/ComponentActivity$1$2;->this$1:Landroidx/activity/ComponentActivity$1;

    iput p2, p0, Landroidx/activity/ComponentActivity$1$2;->val$requestCode:I

    iput-object p3, p0, Landroidx/activity/ComponentActivity$1$2;->val$e:Landroid/content/IntentSender$SendIntentException;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/ComponentActivity$1$2;->this$1:Landroidx/activity/ComponentActivity$1;

    iget v1, p0, Landroidx/activity/ComponentActivity$1$2;->val$requestCode:I

    .line 231
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 232
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    iget-object p0, p0, Landroidx/activity/ComponentActivity$1$2;->val$e:Landroid/content/IntentSender$SendIntentException;

    .line 233
    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    const/4 v2, 0x0

    .line 231
    invoke-virtual {v0, v1, v2, p0}, Landroidx/activity/ComponentActivity$1;->dispatchResult(IILandroid/content/Intent;)Z

    return-void
.end method

.class final Ltech/rabbit/r1launcher/MainActivity$onCreate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "o",
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$iuZUzuJIawVzYPiwMazsdEG9nIk(Ltech/rabbit/r1launcher/MainActivity;I)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/MainActivity$onCreate$2;->invoke$lambda$0(Ltech/rabbit/r1launcher/MainActivity;I)V

    return-void
.end method

.method constructor <init>(Ltech/rabbit/r1launcher/MainActivity;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/MainActivity$onCreate$2;->this$0:Ltech/rabbit/r1launcher/MainActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Ltech/rabbit/r1launcher/MainActivity;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/MainActivity;->setRequestedOrientation(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 152
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/MainActivity$onCreate$2;->invoke(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/MainActivity$onCreate$2;->this$0:Ltech/rabbit/r1launcher/MainActivity;

    .line 153
    invoke-static {v0}, Ltech/rabbit/r1launcher/MainActivity;->access$isRotationEnabled$p(Ltech/rabbit/r1launcher/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {v0}, LAppConfig;->isEnabledTerminal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltech/rabbit/r1launcher/MainActivity$onCreate$2;->this$0:Ltech/rabbit/r1launcher/MainActivity;

    .line 154
    invoke-static {v0}, Ltech/rabbit/r1launcher/MainActivity;->access$getDeviceEvents$p(Ltech/rabbit/r1launcher/MainActivity;)LDeviceEventsDispatcher;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "deviceEvents"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Ltech/rabbit/r1launcher/MainActivity$onCreate$2$1;->INSTANCE:Ltech/rabbit/r1launcher/MainActivity$onCreate$2$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, LDeviceEventsDispatcher;->onRotate(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/MainActivity$onCreate$2;->this$0:Ltech/rabbit/r1launcher/MainActivity;

    .line 155
    invoke-static {v0}, Ltech/rabbit/r1launcher/MainActivity;->access$getRotationMessageHandler$p(Ltech/rabbit/r1launcher/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/MainActivity$onCreate$2;->this$0:Ltech/rabbit/r1launcher/MainActivity;

    invoke-static {v1}, Ltech/rabbit/r1launcher/MainActivity;->access$getRunnable$p(Ltech/rabbit/r1launcher/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/MainActivity$onCreate$2;->this$0:Ltech/rabbit/r1launcher/MainActivity;

    .line 156
    new-instance v1, Ltech/rabbit/r1launcher/MainActivity$onCreate$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Ltech/rabbit/r1launcher/MainActivity$onCreate$2$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/MainActivity;I)V

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/MainActivity;->access$setRunnable$p(Ltech/rabbit/r1launcher/MainActivity;Ljava/lang/Runnable;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/MainActivity$onCreate$2;->this$0:Ltech/rabbit/r1launcher/MainActivity;

    .line 157
    invoke-static {p1}, Ltech/rabbit/r1launcher/MainActivity;->access$getRotationMessageHandler$p(Ltech/rabbit/r1launcher/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Ltech/rabbit/r1launcher/MainActivity$onCreate$2;->this$0:Ltech/rabbit/r1launcher/MainActivity;

    invoke-static {p0}, Ltech/rabbit/r1launcher/MainActivity;->access$getRunnable$p(Ltech/rabbit/r1launcher/MainActivity;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.class public final Ltech/rabbit/r1launcher/initstep/InitStepActivity$Companion;
.super Ljava/lang/Object;
.source "InitStepActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/initstep/InitStepActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/InitStepActivity$Companion;",
        "",
        "()V",
        "launch",
        "",
        "activity",
        "Landroid/app/Activity;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final launch(Landroid/app/Activity;)V
    .locals 2

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance p0, Landroid/content/Intent;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const-class v1, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 59
    sget p0, Ltech/rabbit/r1launcher/R$anim;->anim_fade_in:I

    sget v0, Ltech/rabbit/r1launcher/R$anim;->anim_fade_out:I

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

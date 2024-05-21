.class final Ltech/rabbit/r1launcher/settings/holder/CommonSettingHolder$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CommonSettingHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/holder/CommonSettingHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        "Landroid/view/KeyEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "view",
        "Landroid/view/View;",
        "<anonymous parameter 1>",
        "",
        "<anonymous parameter 2>",
        "Landroid/view/KeyEvent;",
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/holder/CommonSettingHolder;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/holder/CommonSettingHolder;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/holder/CommonSettingHolder$1$2;->this$0:Ltech/rabbit/r1launcher/settings/holder/CommonSettingHolder;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/settings/holder/CommonSettingHolder$1$2;->invoke(Landroid/view/View;ILandroid/view/KeyEvent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;ILandroid/view/KeyEvent;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 2>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/holder/CommonSettingHolder$1$2;->this$0:Ltech/rabbit/r1launcher/settings/holder/CommonSettingHolder;

    .line 27
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/holder/CommonSettingHolder;->requireModel()Ltech/rabbit/r1launcher/settings/SettingItems;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/SettingItems;->doAction(Landroid/app/Activity;)V

    return-void
.end method

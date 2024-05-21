.class final Landroidx/navigation/NavController$navInflater$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NavController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/NavController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/navigation/NavInflater;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/navigation/NavInflater;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/navigation/NavController;


# direct methods
.method constructor <init>(Landroidx/navigation/NavController;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/NavController$navInflater$2;->this$0:Landroidx/navigation/NavController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/navigation/NavInflater;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/NavController$navInflater$2;->this$0:Landroidx/navigation/NavController;

    .line 1121
    invoke-static {v0}, Landroidx/navigation/NavController;->access$getInflater$p(Landroidx/navigation/NavController;)Landroidx/navigation/NavInflater;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/navigation/NavInflater;

    iget-object v1, p0, Landroidx/navigation/NavController$navInflater$2;->this$0:Landroidx/navigation/NavController;

    invoke-virtual {v1}, Landroidx/navigation/NavController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Landroidx/navigation/NavController$navInflater$2;->this$0:Landroidx/navigation/NavController;

    invoke-static {p0}, Landroidx/navigation/NavController;->access$get_navigatorProvider$p(Landroidx/navigation/NavController;)Landroidx/navigation/NavigatorProvider;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroidx/navigation/NavInflater;-><init>(Landroid/content/Context;Landroidx/navigation/NavigatorProvider;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1120
    invoke-virtual {p0}, Landroidx/navigation/NavController$navInflater$2;->invoke()Landroidx/navigation/NavInflater;

    move-result-object p0

    return-object p0
.end method

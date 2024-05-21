.class final Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ContraintControllers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/constraints/controllers/ConstraintController$track$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
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
.field final synthetic $listener:Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/work/impl/constraints/controllers/ConstraintController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/constraints/controllers/ConstraintController<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/work/impl/constraints/controllers/ConstraintController;Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/constraints/controllers/ConstraintController<",
            "TT;>;",
            "Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$1;->this$0:Landroidx/work/impl/constraints/controllers/ConstraintController;

    iput-object p2, p0, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$1;->$listener:Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0}, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$1;->this$0:Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 56
    invoke-static {v0}, Landroidx/work/impl/constraints/controllers/ConstraintController;->access$getTracker$p(Landroidx/work/impl/constraints/controllers/ConstraintController;)Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v0

    iget-object p0, p0, Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$1;->$listener:Landroidx/work/impl/constraints/controllers/ConstraintController$track$1$listener$1;

    check-cast p0, Landroidx/work/impl/constraints/ConstraintListener;

    invoke-virtual {v0, p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->removeListener(Landroidx/work/impl/constraints/ConstraintListener;)V

    return-void
.end method

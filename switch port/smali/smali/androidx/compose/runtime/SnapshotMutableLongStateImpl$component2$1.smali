.class final Landroidx/compose/runtime/SnapshotMutableLongStateImpl$component2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SnapshotLongState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->component2()Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic this$0:Landroidx/compose/runtime/SnapshotMutableLongStateImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/SnapshotMutableLongStateImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$component2$1;->this$0:Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 149
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$component2$1;->invoke(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$component2$1;->this$0:Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 149
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->setLongValue(J)V

    return-void
.end method

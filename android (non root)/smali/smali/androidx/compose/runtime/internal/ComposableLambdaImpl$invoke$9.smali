.class final Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;
.super Lkotlin/jvm/internal/Lambda;
.source "ComposableLambda.jvm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "nc",
        "Landroidx/compose/runtime/Composer;",
        "<anonymous parameter 1>",
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
.field final synthetic $changed:I

.field final synthetic $p1:Ljava/lang/Object;

.field final synthetic $p2:Ljava/lang/Object;

.field final synthetic $p3:Ljava/lang/Object;

.field final synthetic $p4:Ljava/lang/Object;

.field final synthetic $p5:Ljava/lang/Object;

.field final synthetic $p6:Ljava/lang/Object;

.field final synthetic $p8:Ljava/lang/Object;

.field final synthetic $p9:Ljava/lang/Object;

.field final synthetic $param7:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->this$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p2, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p2:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p3:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p4:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p5:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p6:Ljava/lang/Object;

    iput-object p8, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$param7:Ljava/lang/Object;

    iput-object p9, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p8:Ljava/lang/Object;

    iput-object p10, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p9:Ljava/lang/Object;

    iput p11, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 418
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 12

    const-string p2, "nc"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->this$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object v1, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p1:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p2:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p3:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p4:Ljava/lang/Object;

    iget-object v5, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p5:Ljava/lang/Object;

    iget-object v6, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p6:Ljava/lang/Object;

    iget-object v7, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$param7:Ljava/lang/Object;

    iget-object v8, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p8:Ljava/lang/Object;

    iget-object v9, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$p9:Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$9;->$changed:I

    .line 419
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p0

    or-int/lit8 v11, p0, 0x1

    move-object v10, p1

    invoke-virtual/range {v0 .. v11}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    return-void
.end method

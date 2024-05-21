.class public final synthetic Lkotlinx/coroutines/future/FutureKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/future/FutureKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/future/FutureKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/future/FutureKt;->$r8$lambda$cMgNW2d0OUgIe_VSg9ZnIbI9BYk(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

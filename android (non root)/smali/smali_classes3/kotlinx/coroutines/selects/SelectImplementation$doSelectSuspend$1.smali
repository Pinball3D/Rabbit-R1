.class final Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/selects/SelectImplementation;->doSelectSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.selects.SelectImplementation"
    f = "Select.kt"
    i = {
        0x0
    }
    l = {
        0x1af,
        0x1b2
    }
    m = "doSelectSuspend"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lkotlinx/coroutines/selects/SelectImplementation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->this$0:Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->result:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->this$0:Lkotlinx/coroutines/selects/SelectImplementation;

    check-cast p0, Lkotlin/coroutines/Continuation;

    invoke-static {p1, p0}, Lkotlinx/coroutines/selects/SelectImplementation;->access$doSelectSuspend(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

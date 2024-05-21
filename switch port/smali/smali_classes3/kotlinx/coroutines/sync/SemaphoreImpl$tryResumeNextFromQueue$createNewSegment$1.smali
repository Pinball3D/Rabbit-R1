.class final synthetic Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "Semaphore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/SemaphoreImpl;->tryResumeNextFromQueue()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Long;",
        "Lkotlinx/coroutines/sync/SemaphoreSegment;",
        "Lkotlinx/coroutines/sync/SemaphoreSegment;",
        ">;"
    }
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


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;

    invoke-direct {v0}, Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;->INSTANCE:Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const/4 v1, 0x2

    const-class v2, Lkotlinx/coroutines/sync/SemaphoreKt;

    const-string v3, "createSegment"

    const-string v4, "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 322
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lkotlinx/coroutines/sync/SemaphoreSegment;

    invoke-virtual {p0, v0, v1, p2}, Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;->invoke(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;
    .locals 0

    .line 322
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;

    move-result-object p0

    return-object p0
.end method

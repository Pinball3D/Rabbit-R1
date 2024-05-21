.class final synthetic Lkotlinx/coroutines/JobSupport$onAwaitInternal$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "JobSupport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/JobSupport;->getOnAwaitInternal()Lkotlinx/coroutines/selects/SelectClause1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/JobSupport;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
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
.field public static final INSTANCE:Lkotlinx/coroutines/JobSupport$onAwaitInternal$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/JobSupport$onAwaitInternal$2;

    invoke-direct {v0}, Lkotlinx/coroutines/JobSupport$onAwaitInternal$2;-><init>()V

    sput-object v0, Lkotlinx/coroutines/JobSupport$onAwaitInternal$2;->INSTANCE:Lkotlinx/coroutines/JobSupport$onAwaitInternal$2;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const/4 v1, 0x3

    const-class v2, Lkotlinx/coroutines/JobSupport;

    const-string v3, "onAwaitInternalProcessResFunc"

    const-string v4, "onAwaitInternalProcessResFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1244
    check-cast p1, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport$onAwaitInternal$2;->invoke(Lkotlinx/coroutines/JobSupport;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/JobSupport;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1244
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/JobSupport;->access$onAwaitInternalProcessResFunc(Lkotlinx/coroutines/JobSupport;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

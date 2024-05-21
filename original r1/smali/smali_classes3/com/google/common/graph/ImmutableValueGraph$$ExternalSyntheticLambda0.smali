.class public final synthetic Lcom/google/common/graph/ImmutableValueGraph$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/common/graph/ValueGraph;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/ImmutableValueGraph$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/graph/ValueGraph;

    iput-object p2, p0, Lcom/google/common/graph/ImmutableValueGraph$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/graph/ImmutableValueGraph$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/graph/ValueGraph;

    iget-object p0, p0, Lcom/google/common/graph/ImmutableValueGraph$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/google/common/graph/ImmutableValueGraph;->lambda$connectionsOf$0(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/common/graph/AbstractBaseGraph$2;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/AbstractBaseGraph$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/graph/AbstractBaseGraph$2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/graph/AbstractBaseGraph$2;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph$2;->lambda$iterator$0$com-google-common-graph-AbstractBaseGraph$2(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

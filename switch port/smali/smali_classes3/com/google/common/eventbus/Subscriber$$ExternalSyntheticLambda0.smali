.class public final synthetic Lcom/google/common/eventbus/Subscriber$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/eventbus/Subscriber;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/eventbus/Subscriber;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/eventbus/Subscriber$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/eventbus/Subscriber;

    iput-object p2, p0, Lcom/google/common/eventbus/Subscriber$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/eventbus/Subscriber$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/eventbus/Subscriber;

    iget-object p0, p0, Lcom/google/common/eventbus/Subscriber$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/google/common/eventbus/Subscriber;->lambda$dispatchEvent$0$com-google-common-eventbus-Subscriber(Ljava/lang/Object;)V

    return-void
.end method

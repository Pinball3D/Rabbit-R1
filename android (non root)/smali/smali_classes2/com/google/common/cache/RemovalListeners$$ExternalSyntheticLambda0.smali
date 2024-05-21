.class public final synthetic Lcom/google/common/cache/RemovalListeners$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/cache/RemovalListener;

.field public final synthetic f$1:Lcom/google/common/cache/RemovalNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/cache/RemovalListener;Lcom/google/common/cache/RemovalNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/RemovalListeners$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/cache/RemovalListener;

    iput-object p2, p0, Lcom/google/common/cache/RemovalListeners$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/cache/RemovalNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/RemovalListeners$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/cache/RemovalListener;

    iget-object p0, p0, Lcom/google/common/cache/RemovalListeners$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/cache/RemovalNotification;

    invoke-static {v0, p0}, Lcom/google/common/cache/RemovalListeners;->lambda$asynchronous$0(Lcom/google/common/cache/RemovalListener;Lcom/google/common/cache/RemovalNotification;)V

    return-void
.end method

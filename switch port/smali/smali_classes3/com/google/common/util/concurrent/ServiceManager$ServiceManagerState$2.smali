.class Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenerCallQueue$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->enqueueFailedEvent(Lcom/google/common/util/concurrent/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
        "Lcom/google/common/util/concurrent/ServiceManager$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$service:Lcom/google/common/util/concurrent/Service;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;->val$service:Lcom/google/common/util/concurrent/Service;

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;->val$service:Lcom/google/common/util/concurrent/Service;

    .line 699
    invoke-virtual {p1, p0}, Lcom/google/common/util/concurrent/ServiceManager$Listener;->failure(Lcom/google/common/util/concurrent/Service;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 696
    check-cast p1, Lcom/google/common/util/concurrent/ServiceManager$Listener;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;->call(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;->val$service:Lcom/google/common/util/concurrent/Service;

    .line 704
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "failed({service="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "})"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

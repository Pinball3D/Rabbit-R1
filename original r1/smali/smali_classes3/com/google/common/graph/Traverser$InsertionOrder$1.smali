.class final enum Lcom/google/common/graph/Traverser$InsertionOrder$1;
.super Lcom/google/common/graph/Traverser$InsertionOrder;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$InsertionOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 506
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/graph/Traverser$InsertionOrder;-><init>(Ljava/lang/String;ILcom/google/common/graph/Traverser$1;)V

    return-void
.end method


# virtual methods
.method insertInto(Ljava/util/Deque;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 509
    invoke-interface {p1, p2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

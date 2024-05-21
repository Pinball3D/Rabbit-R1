.class public Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;
.super Lcom/google/common/collect/Maps$DescendingMap;
.source "ForwardingNavigableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingNavigableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardDescendingMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$DescendingMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ForwardingNavigableMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingNavigableMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->this$0:Lcom/google/common/collect/ForwardingNavigableMap;

    .line 306
    invoke-direct {p0}, Lcom/google/common/collect/Maps$DescendingMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 315
    new-instance v0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;-><init>(Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;)V

    return-object v0
.end method

.method forward()Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->this$0:Lcom/google/common/collect/ForwardingNavigableMap;

    return-object p0
.end method

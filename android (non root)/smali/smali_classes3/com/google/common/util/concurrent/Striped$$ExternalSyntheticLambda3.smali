.class public final synthetic Lcom/google/common/util/concurrent/Striped$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/google/common/util/concurrent/Striped;->$r8$lambda$DPHKQ3dY4ROYnkMBoW1EqdOwBu8()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method

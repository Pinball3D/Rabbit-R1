.class public final synthetic Lcom/google/common/util/concurrent/Striped$$ExternalSyntheticLambda2;
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

    new-instance p0, Lcom/google/common/util/concurrent/Striped$WeakSafeReadWriteLock;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Striped$WeakSafeReadWriteLock;-><init>()V

    check-cast p0, Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method

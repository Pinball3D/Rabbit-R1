.class public Landroidx/lifecycle/MediatorLiveData;
.super Landroidx/lifecycle/MutableLiveData;
.source "MediatorLiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/MediatorLiveData$Source;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MutableLiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mSources:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap<",
            "Landroidx/lifecycle/LiveData<",
            "*>;",
            "Landroidx/lifecycle/MediatorLiveData$Source<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 70
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 70
    new-instance p1, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {p1}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    return-void
.end method


# virtual methods
.method public addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TS;>;",
            "Landroidx/lifecycle/Observer<",
            "-TS;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 105
    new-instance v0, Landroidx/lifecycle/MediatorLiveData$Source;

    invoke-direct {v0, p1, p2}, Landroidx/lifecycle/MediatorLiveData$Source;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    iget-object v1, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    .line 106
    invoke-virtual {v1, p1, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/MediatorLiveData$Source;

    if-eqz p1, :cond_1

    .line 107
    iget-object v1, p1, Landroidx/lifecycle/MediatorLiveData$Source;->mObserver:Landroidx/lifecycle/Observer;

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This source was already added with the different observer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    return-void

    .line 114
    :cond_2
    invoke-virtual {p0}, Landroidx/lifecycle/MediatorLiveData;->hasActiveObservers()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 115
    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData$Source;->plug()V

    :cond_3
    return-void

    .line 103
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onActive()V
    .locals 1

    iget-object p0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    .line 136
    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MediatorLiveData$Source;

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData$Source;->plug()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 1

    iget-object p0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    .line 144
    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MediatorLiveData$Source;

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData$Source;->unplug()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeSource(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TS;>;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    .line 127
    invoke-virtual {p0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MediatorLiveData$Source;

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroidx/lifecycle/MediatorLiveData$Source;->unplug()V

    :cond_0
    return-void
.end method

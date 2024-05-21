.class final Lio/sentry/CircularFifoQueue;
.super Ljava/util/AbstractCollection;
.source "CircularFifoQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x74e5fa40e2e0baa6L


# instance fields
.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient end:I

.field private transient full:Z

.field private final maxElements:I

.field private transient start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 79
    invoke-direct {p0, v0}, Lio/sentry/CircularFifoQueue;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/CircularFifoQueue;->start:I

    iput v0, p0, Lio/sentry/CircularFifoQueue;->end:I

    iput-boolean v0, p0, Lio/sentry/CircularFifoQueue;->full:Z

    if-lez p1, :cond_0

    .line 93
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    return-void

    .line 91
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The size must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 105
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lio/sentry/CircularFifoQueue;-><init>(I)V

    .line 106
    invoke-virtual {p0, p1}, Lio/sentry/CircularFifoQueue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000(Lio/sentry/CircularFifoQueue;)I
    .locals 0

    .line 52
    iget p0, p0, Lio/sentry/CircularFifoQueue;->start:I

    return p0
.end method

.method static synthetic access$100(Lio/sentry/CircularFifoQueue;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lio/sentry/CircularFifoQueue;->full:Z

    return p0
.end method

.method static synthetic access$102(Lio/sentry/CircularFifoQueue;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lio/sentry/CircularFifoQueue;->full:Z

    return p1
.end method

.method static synthetic access$200(Lio/sentry/CircularFifoQueue;)I
    .locals 0

    .line 52
    iget p0, p0, Lio/sentry/CircularFifoQueue;->end:I

    return p0
.end method

.method static synthetic access$202(Lio/sentry/CircularFifoQueue;I)I
    .locals 0

    .line 52
    iput p1, p0, Lio/sentry/CircularFifoQueue;->end:I

    return p1
.end method

.method static synthetic access$300(Lio/sentry/CircularFifoQueue;I)I
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lio/sentry/CircularFifoQueue;->increment(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lio/sentry/CircularFifoQueue;)[Ljava/lang/Object;
    .locals 0

    .line 52
    iget-object p0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lio/sentry/CircularFifoQueue;)I
    .locals 0

    .line 52
    iget p0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    return p0
.end method

.method static synthetic access$600(Lio/sentry/CircularFifoQueue;I)I
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lio/sentry/CircularFifoQueue;->decrement(I)I

    move-result p0

    return p0
.end method

.method private decrement(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    iget p0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    add-int/lit8 p1, p0, -0x1

    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget p0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    if-lt p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    .line 136
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    .line 138
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lio/sentry/CircularFifoQueue;->start:I

    iget p1, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lio/sentry/CircularFifoQueue;->full:Z

    if-eqz p1, :cond_2

    iput v1, p0, Lio/sentry/CircularFifoQueue;->end:I

    goto :goto_2

    :cond_2
    iput v0, p0, Lio/sentry/CircularFifoQueue;->end:I

    :goto_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 118
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 119
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 232
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->isAtFullCapacity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->remove()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lio/sentry/CircularFifoQueue;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/sentry/CircularFifoQueue;->end:I

    .line 236
    aput-object p1, v0, v1

    iget p1, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    if-lt v2, p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lio/sentry/CircularFifoQueue;->end:I

    :cond_1
    iget p1, p0, Lio/sentry/CircularFifoQueue;->end:I

    iget v0, p0, Lio/sentry/CircularFifoQueue;->start:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    iput-boolean v1, p0, Lio/sentry/CircularFifoQueue;->full:Z

    :cond_2
    return v1

    .line 229
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Attempted to add null object to queue"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/CircularFifoQueue;->full:Z

    iput v0, p0, Lio/sentry/CircularFifoQueue;->start:I

    iput v0, p0, Lio/sentry/CircularFifoQueue;->end:I

    iget-object p0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 215
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->peek()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 295
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "queue is empty"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lio/sentry/CircularFifoQueue;->start:I

    add-int/2addr v0, p1

    iget p1, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    .line 265
    rem-int/2addr v0, p1

    iget-object p0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    .line 266
    aget-object p0, p0, v0

    return-object p0

    .line 259
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The specified index (%1$d) is outside the available range [0, %2$d)"

    .line 260
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAtFullCapacity()Z
    .locals 1

    .line 197
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->size()I

    move-result v0

    iget p0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 177
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFull()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 362
    new-instance v0, Lio/sentry/CircularFifoQueue$1;

    invoke-direct {v0, p0}, Lio/sentry/CircularFifoQueue$1;-><init>(Lio/sentry/CircularFifoQueue;)V

    return-object v0
.end method

.method public maxSize()I
    .locals 0

    iget p0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    return p0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p1}, Lio/sentry/CircularFifoQueue;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget p0, p0, Lio/sentry/CircularFifoQueue;->start:I

    .line 305
    aget-object p0, v0, p0

    return-object p0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->remove()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lio/sentry/CircularFifoQueue;->start:I

    .line 314
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lio/sentry/CircularFifoQueue;->start:I

    const/4 v4, 0x0

    .line 316
    aput-object v4, v0, v1

    iget v0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    const/4 v1, 0x0

    if-lt v3, v0, :cond_0

    iput v1, p0, Lio/sentry/CircularFifoQueue;->start:I

    :cond_0
    iput-boolean v1, p0, Lio/sentry/CircularFifoQueue;->full:Z

    :cond_1
    return-object v2

    .line 311
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "queue is empty"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lio/sentry/CircularFifoQueue;->end:I

    iget v1, p0, Lio/sentry/CircularFifoQueue;->start:I

    if-ge v0, v1, :cond_0

    iget p0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    sub-int/2addr p0, v1

    add-int/2addr p0, v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lio/sentry/CircularFifoQueue;->full:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    sub-int p0, v0, v1

    :goto_0
    return p0
.end method

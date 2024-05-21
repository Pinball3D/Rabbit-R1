.class public final Lio/sentry/android/core/internal/threaddump/Lines;
.super Ljava/lang/Object;
.source "Lines.java"


# instance fields
.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "+",
            "Lio/sentry/android/core/internal/threaddump/Line;",
            ">;"
        }
    .end annotation
.end field

.field private final mMax:I

.field private final mMin:I

.field public pos:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lio/sentry/android/core/internal/threaddump/Line;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mMin:I

    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mMax:I

    return-void
.end method

.method public static readLines(Ljava/io/BufferedReader;)Lio/sentry/android/core/internal/threaddump/Lines;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 57
    new-instance v3, Lio/sentry/android/core/internal/threaddump/Line;

    invoke-direct {v3, v1, v2}, Lio/sentry/android/core/internal/threaddump/Line;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    new-instance p0, Lio/sentry/android/core/internal/threaddump/Lines;

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/threaddump/Lines;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public static readLines(Ljava/io/File;)Lio/sentry/android/core/internal/threaddump/Lines;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 45
    :try_start_0
    invoke-static {v0}, Lio/sentry/android/core/internal/threaddump/Lines;->readLines(Ljava/io/BufferedReader;)Lio/sentry/android/core/internal/threaddump/Lines;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 44
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->pos:I

    iget p0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mMax:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Lio/sentry/android/core/internal/threaddump/Line;
    .locals 3

    iget v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->pos:I

    iget v1, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mMin:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mMax:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lio/sentry/android/core/internal/threaddump/Lines;->pos:I

    .line 82
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/android/core/internal/threaddump/Line;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public rewind()V
    .locals 1

    iget v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->pos:I

    return-void
.end method

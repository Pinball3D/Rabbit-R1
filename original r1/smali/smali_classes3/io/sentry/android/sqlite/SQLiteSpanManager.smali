.class public final Lio/sentry/android/sqlite/SQLiteSpanManager;
.super Ljava/lang/Object;
.source "SQLiteSpanManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\'\u0010\t\u001a\u0002H\n\"\u0004\u0008\u0000\u0010\n2\u0006\u0010\u000b\u001a\u00020\u00052\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\n0\r\u00a2\u0006\u0002\u0010\u000eR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/sentry/android/sqlite/SQLiteSpanManager;",
        "",
        "hub",
        "Lio/sentry/IHub;",
        "databaseName",
        "",
        "(Lio/sentry/IHub;Ljava/lang/String;)V",
        "stackTraceFactory",
        "Lio/sentry/SentryStackTraceFactory;",
        "performSql",
        "T",
        "sql",
        "operation",
        "Lkotlin/Function0;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "sentry-android-sqlite_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final databaseName:Ljava/lang/String;

.field private final hub:Lio/sentry/IHub;

.field private final stackTraceFactory:Lio/sentry/SentryStackTraceFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lio/sentry/android/sqlite/SQLiteSpanManager;-><init>(Lio/sentry/IHub;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;Ljava/lang/String;)V
    .locals 1

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/sqlite/SQLiteSpanManager;->hub:Lio/sentry/IHub;

    iput-object p2, p0, Lio/sentry/android/sqlite/SQLiteSpanManager;->databaseName:Ljava/lang/String;

    .line 17
    new-instance p2, Lio/sentry/SentryStackTraceFactory;

    invoke-interface {p1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/sentry/SentryStackTraceFactory;-><init>(Lio/sentry/SentryOptions;)V

    iput-object p2, p0, Lio/sentry/android/sqlite/SQLiteSpanManager;->stackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 20
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    const-string p1, "SQLite"

    invoke-virtual {p0, p1}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/IHub;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 14
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    const-string p4, "getInstance()"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/sentry/IHub;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/sqlite/SQLiteSpanManager;-><init>(Lio/sentry/IHub;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final performSql(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const-string v0, "db.name"

    const-string v1, "sqlite"

    const-string v2, "in-memory"

    const-string v3, "call_stack"

    const-string v4, "blocked_main_thread"

    const-string v5, "db.system"

    const-string v6, "sql"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "operation"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lio/sentry/android/sqlite/SQLiteSpanManager;->hub:Lio/sentry/IHub;

    .line 33
    invoke-interface {v6}, Lio/sentry/IHub;->getSpan()Lio/sentry/ISpan;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    const-string v8, "db.sql.query"

    invoke-interface {v6, v8, p1}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v7

    :goto_0
    if-eqz p1, :cond_1

    .line 34
    invoke-interface {p1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v7

    :cond_1
    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "auto.db.sqlite"

    invoke-virtual {v7, v6}, Lio/sentry/SpanContext;->setOrigin(Ljava/lang/String;)V

    .line 36
    :goto_1
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_3

    goto :goto_2

    .line 37
    :cond_3
    sget-object v6, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {p1, v6}, Lio/sentry/ISpan;->setStatus(Lio/sentry/SpanStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz p1, :cond_6

    iget-object v6, p0, Lio/sentry/android/sqlite/SQLiteSpanManager;->hub:Lio/sentry/IHub;

    .line 45
    invoke-interface {v6}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getMainThreadChecker()Lio/sentry/util/thread/IMainThreadChecker;

    move-result-object v6

    invoke-interface {v6}, Lio/sentry/util/thread/IMainThreadChecker;->isMainThread()Z

    move-result v6

    .line 46
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {p1, v4, v7}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v6, :cond_4

    iget-object v4, p0, Lio/sentry/android/sqlite/SQLiteSpanManager;->stackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 48
    invoke-virtual {v4}, Lio/sentry/SentryStackTraceFactory;->getInAppCallStack()Ljava/util/List;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v3, p0, Lio/sentry/android/sqlite/SQLiteSpanManager;->databaseName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 53
    invoke-interface {p1, v5, v1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/android/sqlite/SQLiteSpanManager;->databaseName:Ljava/lang/String;

    .line 54
    invoke-interface {p1, v0, p0}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 56
    :cond_5
    invoke-interface {p1, v5, v2}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :goto_3
    invoke-interface {p1}, Lio/sentry/ISpan;->finish()V

    :cond_6
    return-object p2

    :catchall_0
    move-exception p2

    if-nez p1, :cond_7

    goto :goto_4

    .line 40
    :cond_7
    :try_start_1
    sget-object v6, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {p1, v6}, Lio/sentry/ISpan;->setStatus(Lio/sentry/SpanStatus;)V

    :goto_4
    if-nez p1, :cond_8

    goto :goto_5

    .line 41
    :cond_8
    invoke-interface {p1, p2}, Lio/sentry/ISpan;->setThrowable(Ljava/lang/Throwable;)V

    .line 42
    :goto_5
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_b

    iget-object v6, p0, Lio/sentry/android/sqlite/SQLiteSpanManager;->hub:Lio/sentry/IHub;

    .line 45
    invoke-interface {v6}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getMainThreadChecker()Lio/sentry/util/thread/IMainThreadChecker;

    move-result-object v6

    invoke-interface {v6}, Lio/sentry/util/thread/IMainThreadChecker;->isMainThread()Z

    move-result v6

    .line 46
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {p1, v4, v7}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v6, :cond_9

    iget-object v4, p0, Lio/sentry/android/sqlite/SQLiteSpanManager;->stackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 48
    invoke-virtual {v4}, Lio/sentry/SentryStackTraceFactory;->getInAppCallStack()Ljava/util/List;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    iget-object v3, p0, Lio/sentry/android/sqlite/SQLiteSpanManager;->databaseName:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 53
    invoke-interface {p1, v5, v1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/android/sqlite/SQLiteSpanManager;->databaseName:Ljava/lang/String;

    .line 54
    invoke-interface {p1, v0, p0}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 56
    :cond_a
    invoke-interface {p1, v5, v2}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :goto_6
    invoke-interface {p1}, Lio/sentry/ISpan;->finish()V

    .line 44
    :cond_b
    throw p2
.end method

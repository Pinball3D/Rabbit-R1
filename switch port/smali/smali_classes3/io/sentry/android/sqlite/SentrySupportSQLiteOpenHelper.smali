.class public final Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SentrySupportSQLiteOpenHelper.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u0096\u0001J\u0011\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0097\u0001R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000c\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\r\u0010\u000bR\u001b\u0010\u0010\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000f\u001a\u0004\u0008\u0011\u0010\u000bR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u000b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
        "delegate",
        "(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V",
        "databaseName",
        "",
        "getDatabaseName",
        "()Ljava/lang/String;",
        "readableDatabase",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "getReadableDatabase",
        "()Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "sentryReadableDatabase",
        "getSentryReadableDatabase",
        "sentryReadableDatabase$delegate",
        "Lkotlin/Lazy;",
        "sentryWritableDatabase",
        "getSentryWritableDatabase",
        "sentryWritableDatabase$delegate",
        "sqLiteSpanManager",
        "Lio/sentry/android/sqlite/SQLiteSpanManager;",
        "writableDatabase",
        "getWritableDatabase",
        "close",
        "",
        "setWriteAheadLoggingEnabled",
        "enabled",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper$Companion;


# instance fields
.field private final delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

.field private final sentryReadableDatabase$delegate:Lkotlin/Lazy;

.field private final sentryWritableDatabase$delegate:Lkotlin/Lazy;

.field private final sqLiteSpanManager:Lio/sentry/android/sqlite/SQLiteSpanManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->Companion:Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 37
    new-instance v0, Lio/sentry/android/sqlite/SQLiteSpanManager;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1, v2}, Lio/sentry/android/sqlite/SQLiteSpanManager;-><init>(Lio/sentry/IHub;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->sqLiteSpanManager:Lio/sentry/android/sqlite/SQLiteSpanManager;

    .line 39
    new-instance p1, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper$sentryWritableDatabase$2;

    invoke-direct {p1, p0}, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper$sentryWritableDatabase$2;-><init>(Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->sentryWritableDatabase$delegate:Lkotlin/Lazy;

    .line 43
    new-instance p1, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper$sentryReadableDatabase$2;

    invoke-direct {p1, p0}, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper$sentryReadableDatabase$2;-><init>(Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->sentryReadableDatabase$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    return-void
.end method

.method public static final synthetic access$getDelegate$p(Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object p0
.end method

.method public static final synthetic access$getSqLiteSpanManager$p(Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;)Lio/sentry/android/sqlite/SQLiteSpanManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->sqLiteSpanManager:Lio/sentry/android/sqlite/SQLiteSpanManager;

    return-object p0
.end method

.method public static final create(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->Companion:Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper$Companion;

    invoke-virtual {v0, p0}, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper$Companion;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method

.method private final getSentryReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->sentryReadableDatabase$delegate:Lkotlin/Lazy;

    .line 43
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p0
.end method

.method private final getSentryWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->sentryWritableDatabase$delegate:Lkotlin/Lazy;

    .line 39
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->close()V

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 51
    invoke-direct {p0}, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->getSentryReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 48
    invoke-direct {p0}, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->getSentryWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

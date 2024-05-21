.class final Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$query$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SentrySupportSQLiteDatabase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/database/Cursor;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $query:Landroidx/sqlite/db/SupportSQLiteQuery;

.field final synthetic this$0:Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;


# direct methods
.method constructor <init>(Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$query$3;->this$0:Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;

    iput-object p2, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$query$3;->$query:Landroidx/sqlite/db/SupportSQLiteQuery;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$query$3;->this$0:Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;

    .line 59
    invoke-static {v0}, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;->access$getDelegate$p(Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    iget-object p0, p0, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$query$3;->$query:Landroidx/sqlite/db/SupportSQLiteQuery;

    invoke-interface {v0, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lio/sentry/android/sqlite/SentrySupportSQLiteDatabase$query$3;->invoke()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

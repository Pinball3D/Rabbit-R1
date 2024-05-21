.class public final synthetic Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/room/QueryInterceptorDatabase;

.field public final synthetic f$1:Landroidx/sqlite/db/SupportSQLiteQuery;

.field public final synthetic f$2:Landroidx/room/QueryInterceptorProgram;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda7;->f$0:Landroidx/room/QueryInterceptorDatabase;

    iput-object p2, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda7;->f$1:Landroidx/sqlite/db/SupportSQLiteQuery;

    iput-object p3, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda7;->f$2:Landroidx/room/QueryInterceptorProgram;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda7;->f$0:Landroidx/room/QueryInterceptorDatabase;

    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda7;->f$1:Landroidx/sqlite/db/SupportSQLiteQuery;

    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda7;->f$2:Landroidx/room/QueryInterceptorProgram;

    invoke-static {v0, v1, p0}, Landroidx/room/QueryInterceptorDatabase;->$r8$lambda$3nqW82Zqx2VSpCkGWA-yR8NbjIM(Landroidx/room/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;)V

    return-void
.end method

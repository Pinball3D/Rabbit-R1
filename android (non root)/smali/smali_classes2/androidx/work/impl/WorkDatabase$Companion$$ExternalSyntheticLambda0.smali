.class public final synthetic Landroidx/work/impl/WorkDatabase$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/WorkDatabase$Companion$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase$Companion$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {p0, p1}, Landroidx/work/impl/WorkDatabase$Companion;->$r8$lambda$ZkS5S0p_73DOI66Tm39UHOpqbt0(Landroid/content/Context;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroidx/work/impl/utils/IdGenerator;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/IdGenerator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/utils/IdGenerator;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/utils/IdGenerator;

    invoke-static {p0}, Landroidx/work/impl/utils/IdGenerator;->$r8$lambda$fIl4yTd4RSvtLPTyoZbhi4q3Rnk(Landroidx/work/impl/utils/IdGenerator;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

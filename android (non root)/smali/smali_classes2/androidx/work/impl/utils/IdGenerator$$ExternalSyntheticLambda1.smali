.class public final synthetic Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroidx/work/impl/utils/IdGenerator;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/IdGenerator;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$0:Landroidx/work/impl/utils/IdGenerator;

    iput p2, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$0:Landroidx/work/impl/utils/IdGenerator;

    iget v1, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, p0}, Landroidx/work/impl/utils/IdGenerator;->$r8$lambda$LyUC9fmKDw6AhARQq6V7VCdkafU(Landroidx/work/impl/utils/IdGenerator;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

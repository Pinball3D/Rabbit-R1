.class public final Landroidx/work/ListenableWorker$Result$Failure;
.super Landroidx/work/ListenableWorker$Result;
.source "ListenableWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/ListenableWorker$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation


# instance fields
.field private final mOutputData:Landroidx/work/Data;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 501
    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-direct {p0, v0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>(Landroidx/work/Data;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/Data;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputData"
        }
    .end annotation

    .line 509
    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result;-><init>()V

    iput-object p1, p0, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 521
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 523
    :cond_1
    check-cast p1, Landroidx/work/ListenableWorker$Result$Failure;

    iget-object p0, p0, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    .line 525
    iget-object p1, p1, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    invoke-virtual {p0, p1}, Landroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getOutputData()Landroidx/work/Data;
    .locals 0

    iget-object p0, p0, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object p0, p0, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    .line 531
    invoke-virtual {p0}, Landroidx/work/Data;->hashCode()I

    move-result p0

    const v0, 0x32793150

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failure {mOutputData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

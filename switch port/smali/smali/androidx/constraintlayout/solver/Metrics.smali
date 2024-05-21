.class public Landroidx/constraintlayout/solver/Metrics;
.super Ljava/lang/Object;
.source "Metrics.java"


# instance fields
.field public additionalMeasures:J

.field public barrierConnectionResolved:J

.field public bfs:J

.field public centerConnectionResolved:J

.field public chainConnectionResolved:J

.field public constraints:J

.field public determineGroups:J

.field public errors:J

.field public extravariables:J

.field public fullySolved:J

.field public graphOptimizer:J

.field public graphSolved:J

.field public infeasibleDetermineGroups:J

.field public iterations:J

.field public lastTableSize:J

.field public linearSolved:J

.field public matchConnectionResolved:J

.field public maxRows:J

.field public maxTableSize:J

.field public maxVariables:J

.field public measuredMatchWidgets:J

.field public measuredWidgets:J

.field public measures:J

.field public measuresLayoutDuration:J

.field public measuresWidgetsDuration:J

.field public measuresWrap:J

.field public measuresWrapInfeasible:J

.field public minimize:J

.field public minimizeGoal:J

.field public nonresolvedWidgets:J

.field public oldresolvedWidgets:J

.field public optimize:J

.field public pivots:J

.field public problematicLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public resolutions:J

.field public resolvedWidgets:J

.field public simpleconstraints:J

.field public slackvariables:J

.field public tableSizeIncrease:J

.field public variables:J

.field public widgets:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/Metrics;->problematicLayouts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->measures:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->widgets:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->additionalMeasures:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->resolutions:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->lastTableSize:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->variables:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->errors:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->graphSolved:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->oldresolvedWidgets:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->centerConnectionResolved:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->matchConnectionResolved:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    iput-wide v0, p0, Landroidx/constraintlayout/solver/Metrics;->barrierConnectionResolved:J

    iget-object p0, p0, Landroidx/constraintlayout/solver/Metrics;->problematicLayouts:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n*** Metrics ***\nmeasures: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/constraintlayout/solver/Metrics;->measures:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmeasuresWrap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/constraintlayout/solver/Metrics;->measuresWrap:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmeasuresWrapInfeasible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/constraintlayout/solver/Metrics;->measuresWrapInfeasible:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndetermineGroups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/constraintlayout/solver/Metrics;->determineGroups:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ninfeasibleDetermineGroups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/constraintlayout/solver/Metrics;->infeasibleDetermineGroups:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ngraphOptimizer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nwidgets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/constraintlayout/solver/Metrics;->widgets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ngraphSolved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/constraintlayout/solver/Metrics;->graphSolved:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlinearSolved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/constraintlayout/solver/Metrics;->linearSolved:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

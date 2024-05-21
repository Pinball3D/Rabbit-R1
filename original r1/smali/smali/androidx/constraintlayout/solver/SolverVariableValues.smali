.class public Landroidx/constraintlayout/solver/SolverVariableValues;
.super Ljava/lang/Object;
.source "SolverVariableValues.java"

# interfaces
.implements Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;


# static fields
.field private static final DEBUG:Z = false

.field private static final HASH:Z = true

.field private static epsilon:F = 0.001f


# instance fields
.field private HASH_SIZE:I

.field private final NONE:I

.field private SIZE:I

.field head:I

.field keys:[I

.field protected final mCache:Landroidx/constraintlayout/solver/Cache;

.field mCount:I

.field private final mRow:Landroidx/constraintlayout/solver/ArrayRow;

.field next:[I

.field nextKeys:[I

.field previous:[I

.field values:[F

.field variables:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->NONE:I

    const/16 v1, 0x10

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->SIZE:I

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->HASH_SIZE:I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    new-array v2, v1, [F

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    iput-object p2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 49
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/SolverVariableValues;->clear()V

    return-void
.end method

.method private addToHashMap(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 3

    .line 216
    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->HASH_SIZE:I

    rem-int/2addr p1, v0

    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    .line 217
    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 219
    aput p2, v0, p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    .line 224
    aget v0, p1, v1

    if-eq v0, v2, :cond_1

    move v1, v0

    goto :goto_0

    .line 227
    :cond_1
    aput p2, p1, v1

    :goto_1
    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    .line 232
    aput v2, p0, p2

    return-void
.end method

.method private addVariable(ILandroidx/constraintlayout/solver/SolverVariable;F)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    .line 289
    iget v1, p2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v1, v0, p1

    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    .line 290
    aput p3, v0, p1

    iget-object p3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    const/4 v0, -0x1

    .line 291
    aput v0, p3, p1

    iget-object p3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    .line 292
    aput v0, p3, p1

    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 293
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 294
    iget p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iget p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    return-void
.end method

.method private displayHash()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->HASH_SIZE:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    .line 240
    aget v2, v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " hash ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] => "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    .line 242
    aget v4, v4, v1

    move v5, v0

    :goto_1
    if-nez v5, :cond_1

    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v6, v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    .line 246
    aget v6, v6, v4

    if-eq v6, v3, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    .line 252
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private findEmptySlot()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->SIZE:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    .line 300
    aget v1, v1, v0

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private increaseSize()V
    .locals 4

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    .line 200
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    .line 201
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    .line 202
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    .line 203
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    .line 204
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->SIZE:I

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    const/4 v3, -0x1

    .line 206
    aput v3, v2, v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    .line 207
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->SIZE:I

    return-void
.end method

.method private insertVariable(ILandroidx/constraintlayout/solver/SolverVariable;F)V
    .locals 3

    .line 308
    invoke-direct {p0}, Landroidx/constraintlayout/solver/SolverVariableValues;->findEmptySlot()I

    move-result v0

    .line 309
    invoke-direct {p0, v0, p2, p3}, Landroidx/constraintlayout/solver/SolverVariableValues;->addVariable(ILandroidx/constraintlayout/solver/SolverVariable;F)V

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    .line 311
    aput p1, v1, v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    .line 312
    aget v2, v1, p1

    aput v2, v1, v0

    .line 313
    aput v0, v1, p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    .line 315
    aput p3, p1, v0

    iget p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    if-lez p1, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    .line 317
    aput v1, p1, v0

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    .line 320
    aput p3, p1, v0

    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    .line 323
    aget p1, p1, v0

    if-eq p1, p3, :cond_2

    iget-object p3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    .line 324
    aput v0, p3, p1

    .line 326
    :cond_2
    invoke-direct {p0, p2, v0}, Landroidx/constraintlayout/solver/SolverVariableValues;->addToHashMap(Landroidx/constraintlayout/solver/SolverVariable;I)V

    return-void
.end method

.method private removeFromHashMap(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 5

    .line 260
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->HASH_SIZE:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    .line 261
    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 268
    :cond_0
    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    .line 270
    aget v3, v3, v1

    if-ne v3, p1, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    .line 271
    aget v3, p0, v1

    aput v3, p1, v0

    .line 272
    aput v2, p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    .line 274
    aget v3, v0, v1

    if-eq v3, v2, :cond_2

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v4, v4, v3

    if-eq v4, p1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    if-eq v3, v2, :cond_3

    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    .line 278
    aget p0, p0, v3

    if-ne p0, p1, :cond_3

    .line 279
    aget p0, v0, v3

    aput p0, v0, v1

    .line 280
    aput v2, v0, v3

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V
    .locals 4

    sget v0, Landroidx/constraintlayout/solver/SolverVariableValues;->epsilon:F

    neg-float v1, v0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 415
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    .line 417
    aget v2, v1, v0

    add-float/2addr v2, p2

    aput v2, v1, v0

    sget p2, Landroidx/constraintlayout/solver/SolverVariableValues;->epsilon:F

    neg-float v3, p2

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    cmpg-float p2, v2, p2

    if-gez p2, :cond_2

    const/4 p2, 0x0

    .line 419
    aput p2, v1, v0

    .line 420
    invoke-virtual {p0, p1, p3}, Landroidx/constraintlayout/solver/SolverVariableValues;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    :cond_2
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 182
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 184
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->SIZE:I

    const/4 v3, -0x1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    .line 188
    aput v3, v2, v0

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    .line 189
    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->HASH_SIZE:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    .line 192
    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    iput v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    return-void
.end method

.method public contains(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public display()V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    .line 135
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 137
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariableValue(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " }"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public divideByAmount(F)V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    .line 484
    aget v4, v3, v1

    div-float/2addr v4, p1

    aput v4, v3, v1

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    .line 485
    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public get(Landroidx/constraintlayout/solver/SolverVariable;)F
    .locals 1

    .line 125
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    .line 127
    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentSize()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    return p0
.end method

.method public getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 6

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    const/4 v4, -0x1

    if-ne v3, p1, :cond_1

    if-eq v2, v4, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 66
    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget p0, p0, v2

    aget-object p0, p1, p0

    return-object p0

    :cond_1
    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    .line 68
    aget v2, v5, v2

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getVariableValue(I)F
    .locals 4

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    if-ne v2, p1, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    .line 82
    aget p0, p0, v1

    return p0

    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    .line 84
    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->HASH_SIZE:I

    .line 103
    rem-int v0, p1, v0

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    .line 104
    aget v0, v2, v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    .line 108
    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    .line 111
    aget v0, v2, v0

    if-eq v0, v1, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_3

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    .line 117
    aget p0, p0, v0

    if-ne p0, p1, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public invert()V
    .locals 6

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    .line 471
    aget v4, v3, v1

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v4, v5

    aput v4, v3, v1

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    .line 472
    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public put(Landroidx/constraintlayout/solver/SolverVariable;F)V
    .locals 7

    sget v0, Landroidx/constraintlayout/solver/SolverVariableValues;->epsilon:F

    neg-float v1, v0

    cmpl-float v1, p2, v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 335
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 339
    invoke-direct {p0, v1, p1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->addVariable(ILandroidx/constraintlayout/solver/SolverVariable;F)V

    .line 340
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/solver/SolverVariableValues;->addToHashMap(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    goto :goto_2

    .line 343
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    .line 345
    aput p2, p0, v0

    goto :goto_2

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    add-int/2addr v0, v2

    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->SIZE:I

    if-lt v0, v2, :cond_3

    .line 348
    invoke-direct {p0}, Landroidx/constraintlayout/solver/SolverVariableValues;->increaseSize()V

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    move v4, v3

    :goto_0
    if-ge v1, v0, :cond_7

    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    .line 354
    aget v5, v5, v2

    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v5, v6, :cond_4

    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    .line 355
    aput p2, p0, v2

    return-void

    :cond_4
    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    .line 358
    aget v5, v5, v2

    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ge v5, v6, :cond_5

    move v4, v2

    :cond_5
    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    .line 361
    aget v2, v5, v2

    if-ne v2, v3, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    :cond_7
    :goto_1
    invoke-direct {p0, v4, p1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->insertVariable(ILandroidx/constraintlayout/solver/SolverVariable;F)V

    :goto_2
    return-void
.end method

.method public remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F
    .locals 7

    .line 381
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 385
    :cond_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->removeFromHashMap(Landroidx/constraintlayout/solver/SolverVariable;)V

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    .line 386
    aget v2, v2, v0

    iget v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    .line 388
    aget v3, v3, v0

    iput v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    .line 390
    aput v1, v3, v0

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    .line 391
    aget v4, v3, v0

    if-eq v4, v1, :cond_2

    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    .line 392
    aget v6, v5, v0

    aput v6, v5, v4

    :cond_2
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    .line 394
    aget v4, v4, v0

    if-eq v4, v1, :cond_3

    .line 395
    aget v0, v3, v0

    aput v0, v3, v4

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    .line 398
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    if-eqz p2, :cond_4

    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 400
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_4
    return v2
.end method

.method public sizeInBytes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 151
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 155
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariableValue(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result v3

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "[p: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    .line 158
    aget v4, v4, v3

    const-string v5, "none"

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    iget-object v8, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    aget v8, v8, v3

    aget v7, v7, v8

    aget-object v4, v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 161
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", n: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    .line 164
    aget v4, v4, v3

    if-eq v4, v6, :cond_2

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aget v3, v6, v3

    aget v3, v5, v3

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 167
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 171
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " }"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public use(Landroidx/constraintlayout/solver/ArrayRow;Z)F
    .locals 7

    .line 427
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/SolverVariableValues;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v0

    .line 428
    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 439
    iget-object p1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    check-cast p1, Landroidx/constraintlayout/solver/SolverVariableValues;

    .line 440
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->getCurrentSize()I

    move-result v1

    .line 441
    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 455
    iget-object v4, p1, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v4, v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 456
    iget-object v4, p1, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    aget v4, v4, v3

    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 457
    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, p1, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    mul-float/2addr v4, v0

    .line 458
    invoke-virtual {p0, v5, v4, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

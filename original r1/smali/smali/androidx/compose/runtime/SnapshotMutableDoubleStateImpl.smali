.class public Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;
.super Ljava/lang/Object;
.source "SnapshotDoubleState.kt"

# interfaces
.implements Landroidx/compose/runtime/snapshots/StateObject;
.implements Landroidx/compose/runtime/MutableDoubleState;
.implements Landroidx/compose/runtime/snapshots/SnapshotMutableState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/snapshots/StateObject;",
        "Landroidx/compose/runtime/MutableDoubleState;",
        "Landroidx/compose/runtime/snapshots/SnapshotMutableState<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshotDoubleState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotDoubleState.kt\nandroidx/compose/runtime/SnapshotMutableDoubleStateImpl\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n*L\n1#1,186:1\n2279#2:187\n2200#2,2:188\n1722#2:190\n2202#2,5:192\n2279#2:197\n70#3:191\n*S KotlinDebug\n*F\n+ 1 SnapshotDoubleState.kt\nandroidx/compose/runtime/SnapshotMutableDoubleStateImpl\n*L\n139#1:187\n141#1:188,2\n141#1:190\n141#1:192,5\n172#1:197\n141#1:191\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u00022\u0008\u0012\u0004\u0012\u00020\u00040\u0003:\u0001!B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0015\u001a\u00020\u0004H\u0096\u0002\u00a2\u0006\u0002\u0010\u0016J\u0015\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00190\u0018H\u0096\u0002J\"\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u000cH\u0016J\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u000cH\u0016J\u0008\u0010\u001f\u001a\u00020 H\u0016R$\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;",
        "Landroidx/compose/runtime/snapshots/StateObject;",
        "Landroidx/compose/runtime/MutableDoubleState;",
        "Landroidx/compose/runtime/snapshots/SnapshotMutableState;",
        "",
        "value",
        "(D)V",
        "doubleValue",
        "getDoubleValue",
        "()D",
        "setDoubleValue",
        "firstStateRecord",
        "Landroidx/compose/runtime/snapshots/StateRecord;",
        "getFirstStateRecord",
        "()Landroidx/compose/runtime/snapshots/StateRecord;",
        "next",
        "Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;",
        "policy",
        "Landroidx/compose/runtime/SnapshotMutationPolicy;",
        "getPolicy",
        "()Landroidx/compose/runtime/SnapshotMutationPolicy;",
        "component1",
        "()Ljava/lang/Double;",
        "component2",
        "Lkotlin/Function1;",
        "",
        "mergeRecords",
        "previous",
        "current",
        "applied",
        "prependStateRecord",
        "toString",
        "",
        "DoubleStateStateRecord",
        "runtime_release"
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
.field private next:Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;-><init>(D)V

    iput-object v0, p0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    return-void
.end method


# virtual methods
.method public component1()Ljava/lang/Double;
    .locals 2

    .line 150
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic component1()Ljava/lang/Object;
    .locals 0

    .line 128
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;->component1()Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public component2()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$component2$1;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$component2$1;-><init>(Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    .line 138
    check-cast v0, Landroidx/compose/runtime/snapshots/StateRecord;

    check-cast p0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    .line 135
    check-cast p0, Landroidx/compose/runtime/snapshots/StateRecord;

    return-object p0
.end method

.method public getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p0

    return-object p0
.end method

.method public mergeRecords(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 2

    const-string p0, "previous"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "current"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "applied"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    move-object p0, p2

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    .line 164
    check-cast p3, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    .line 165
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;->getValue()D

    move-result-wide p0

    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;->getValue()D

    move-result-wide v0

    cmpg-double p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public prependStateRecord(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    iput-object p1, p0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    return-void
.end method

.method public setDoubleValue(D)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    .line 139
    check-cast v0, Landroidx/compose/runtime/snapshots/StateRecord;

    .line 187
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    .line 140
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;->getValue()D

    move-result-wide v1

    cmpg-double v1, v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    .line 141
    check-cast v1, Landroidx/compose/runtime/snapshots/StateRecord;

    .line 188
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 190
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v2

    .line 191
    monitor-enter v2

    .line 192
    :try_start_0
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    .line 193
    move-object v4, p0

    check-cast v4, Landroidx/compose/runtime/snapshots/StateObject;

    check-cast v0, Landroidx/compose/runtime/snapshots/StateRecord;

    invoke-static {v1, v4, v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->overwritableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    .line 141
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;->setValue(D)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit v2

    .line 195
    check-cast p0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v3, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 191
    monitor-exit v2

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    .line 172
    check-cast v0, Landroidx/compose/runtime/snapshots/StateRecord;

    .line 197
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MutableDoubleState(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;->getValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

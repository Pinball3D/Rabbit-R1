.class public final Landroidx/compose/runtime/ParcelableSnapshotMutableState$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "ParcelableSnapshotMutableState.kt"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/ParcelableSnapshotMutableState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/compose/runtime/ParcelableSnapshotMutableState<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001J\u0018\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\"\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J%\u0010\t\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "androidx/compose/runtime/ParcelableSnapshotMutableState$Companion$CREATOR$1",
        "Landroid/os/Parcelable$ClassLoaderCreator;",
        "Landroidx/compose/runtime/ParcelableSnapshotMutableState;",
        "",
        "createFromParcel",
        "parcel",
        "Landroid/os/Parcel;",
        "loader",
        "Ljava/lang/ClassLoader;",
        "newArray",
        "",
        "size",
        "",
        "(I)[Landroidx/compose/runtime/ParcelableSnapshotMutableState;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroidx/compose/runtime/ParcelableSnapshotMutableState<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroidx/compose/runtime/ParcelableSnapshotMutableState<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 62
    new-instance p2, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 67
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p1

    goto :goto_0

    .line 68
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported MutableState policy "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " was restored"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_2
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_3
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p1

    .line 62
    :goto_0
    invoke-direct {p2, p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    return-object p2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/compose/runtime/ParcelableSnapshotMutableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroidx/compose/runtime/ParcelableSnapshotMutableState<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 78
    new-array p0, p1, [Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState$Companion$CREATOR$1;->newArray(I)[Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p0

    return-object p0
.end method

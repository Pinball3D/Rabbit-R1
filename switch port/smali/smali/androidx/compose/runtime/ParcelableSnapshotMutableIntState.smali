.class public final Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;
.super Landroidx/compose/runtime/SnapshotMutableIntStateImpl;
.source "ParcelableSnapshotMutableIntState.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/ParcelableSnapshotMutableIntState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 \u000c2\u00020\u00012\u00020\u0002:\u0001\u000cB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;",
        "Landroidx/compose/runtime/SnapshotMutableIntStateImpl;",
        "Landroid/os/Parcelable;",
        "value",
        "",
        "(I)V",
        "describeContents",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->Companion:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState$Companion;

    .line 39
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState$Companion$CREATOR$1;

    invoke-direct {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;-><init>(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

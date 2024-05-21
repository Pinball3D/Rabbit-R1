.class final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;
.super Ljava/lang/Object;
.source "PivotLayout.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0082\u0008\u0018\u0000 !2\u00020\u0001:\u0001!B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B%\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u000bH\u00c6\u0003J1\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0008\u0010\u0017\u001a\u00020\u0006H\u0016J\u0013\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0006H\u0016R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\rR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\""
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "selectedPosition",
        "",
        "isLoopingStart",
        "",
        "isLoopingAllowed",
        "loopDirection",
        "Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;",
        "(IZZLcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)V",
        "()Z",
        "getLoopDirection",
        "()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;",
        "getSelectedPosition",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState$CREATOR;


# instance fields
.field private final isLoopingAllowed:Z

.field private final isLoopingStart:Z

.field private final loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

.field private final selectedPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->CREATOR:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState$CREATOR;

    return-void
.end method

.method public constructor <init>(IZZLcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)V
    .locals 1

    const-string v0, "loopDirection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->selectedPosition:I

    iput-boolean p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingStart:Z

    iput-boolean p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingAllowed:Z

    iput-object p4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 305
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 306
    :cond_1
    invoke-static {}, Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;->values()[Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v3, p1

    .line 302
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;-><init>(IZZLcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;IZZLcom/rubensousa/dpadrecyclerview/DpadLoopDirection;ILjava/lang/Object;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->selectedPosition:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingStart:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingAllowed:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->copy(IZZLcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->selectedPosition:I

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingStart:Z

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingAllowed:Z

    return p0
.end method

.method public final component4()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    return-object p0
.end method

.method public final copy(IZZLcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;
    .locals 0

    const-string p0, "loopDirection"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;-><init>(IZZLcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->selectedPosition:I

    iget v3, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->selectedPosition:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingStart:Z

    iget-boolean v3, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingStart:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingAllowed:Z

    iget-boolean v3, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingAllowed:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    iget-object p1, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getLoopDirection()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    return-object p0
.end method

.method public final getSelectedPosition()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->selectedPosition:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->selectedPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingStart:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingAllowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isLoopingAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingAllowed:Z

    return p0
.end method

.method public final isLoopingStart()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingStart:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SavedState(selectedPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->selectedPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLoopingStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLoopingAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loopDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->selectedPosition:I

    .line 310
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingStart:Z

    .line 311
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->isLoopingAllowed:Z

    .line 312
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    .line 313
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

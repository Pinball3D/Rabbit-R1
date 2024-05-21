.class final Landroidx/collection/ArrayMap$ValueIterator;
.super Landroidx/collection/IndexBasedArrayIterator;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/IndexBasedArrayIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 0

    iput-object p1, p0, Landroidx/collection/ArrayMap$ValueIterator;->this$0:Landroidx/collection/ArrayMap;

    .line 513
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/collection/IndexBasedArrayIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected elementAt(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/collection/ArrayMap$ValueIterator;->this$0:Landroidx/collection/ArrayMap;

    .line 518
    invoke-virtual {p0, p1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected removeAt(I)V
    .locals 0

    iget-object p0, p0, Landroidx/collection/ArrayMap$ValueIterator;->this$0:Landroidx/collection/ArrayMap;

    .line 523
    invoke-virtual {p0, p1}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

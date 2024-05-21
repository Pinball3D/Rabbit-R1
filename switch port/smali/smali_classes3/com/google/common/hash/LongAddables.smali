.class final Lcom/google/common/hash/LongAddables;
.super Ljava/lang/Object;
.source "LongAddables.java"


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/LongAddables$PureJavaLongAddable;
    }
.end annotation


# static fields
.field private static final SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/hash/LongAddable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    :try_start_0
    new-instance v0, Lcom/google/common/hash/LongAdder;

    invoke-direct {v0}, Lcom/google/common/hash/LongAdder;-><init>()V

    .line 34
    new-instance v0, Lcom/google/common/hash/LongAddables$1;

    invoke-direct {v0}, Lcom/google/common/hash/LongAddables$1;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    new-instance v0, Lcom/google/common/hash/LongAddables$2;

    invoke-direct {v0}, Lcom/google/common/hash/LongAddables$2;-><init>()V

    :goto_0
    sput-object v0, Lcom/google/common/hash/LongAddables;->SUPPLIER:Lcom/google/common/base/Supplier;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/common/hash/LongAddable;
    .locals 1

    sget-object v0, Lcom/google/common/hash/LongAddables;->SUPPLIER:Lcom/google/common/base/Supplier;

    .line 54
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/LongAddable;

    return-object v0
.end method

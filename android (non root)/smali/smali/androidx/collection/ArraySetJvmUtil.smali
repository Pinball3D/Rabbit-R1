.class Landroidx/collection/ArraySetJvmUtil;
.super Ljava/lang/Object;
.source "ArraySetJvmUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static resizeForToArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 30
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    .line 33
    :cond_0
    array-length v0, p0

    if-le v0, p1, :cond_1

    const/4 v0, 0x0

    .line 34
    aput-object v0, p0, p1

    :cond_1
    return-object p0
.end method

.class public final enum Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;
.super Ljava/lang/Enum;
.source "LayoutDirection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "START",
        "END",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

.field public static final enum END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

.field public static final enum START:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;
    .locals 2

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->START:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    sget-object v1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    filled-new-array {v0, v1}, [Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "START"

    invoke-direct {v0, v3, v1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->START:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    .line 32
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    const-string v1, "END"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    invoke-static {}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->$values()[Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    move-result-object v0

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->$VALUES:[Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;
    .locals 1

    const-class v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    return-object p0
.end method

.method public static values()[Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;
    .locals 1

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->$VALUES:[Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->value:I

    return p0
.end method

.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyVector"
.end annotation


# instance fields
.field private final vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;)V
    .locals 0

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    return-void
.end method


# virtual methods
.method public get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .locals 3

    .line 1050
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1051
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->access$700()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    .line 1052
    iget v0, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->end:I

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget v1, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->byteWidth:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 1053
    new-instance p1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget-object v1, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget-object v2, v2, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget p0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->byteWidth:I

    invoke-static {v2, v0, p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result p0

    const/4 v0, 0x1

    invoke-direct {p1, v1, p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    return-object p1
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    .line 1062
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 1070
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    .line 1071
    invoke-virtual {v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    .line 1072
    invoke-virtual {v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    .line 1073
    invoke-virtual {v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    .line 1074
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    .line 1077
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

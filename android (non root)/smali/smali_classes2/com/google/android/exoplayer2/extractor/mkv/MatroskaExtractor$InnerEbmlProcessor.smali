.class final Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerEbmlProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    .line 1927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V
    .locals 0

    .line 1927
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;-><init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;)V

    return-void
.end method


# virtual methods
.method public binaryElement(IILcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    .line 1967
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->binaryElement(IILcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return-void
.end method

.method public endMasterElement(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    .line 1947
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->endMasterElement(I)V

    return-void
.end method

.method public floatElement(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    .line 1957
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->floatElement(ID)V

    return-void
.end method

.method public getElementType(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    .line 1931
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getElementType(I)I

    move-result p0

    return p0
.end method

.method public integerElement(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    .line 1952
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->integerElement(IJ)V

    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    .line 1936
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->isLevel1Element(I)Z

    move-result p0

    return p0
.end method

.method public startMasterElement(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1942
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->startMasterElement(IJJ)V

    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    .line 1962
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->stringElement(ILjava/lang/String;)V

    return-void
.end method

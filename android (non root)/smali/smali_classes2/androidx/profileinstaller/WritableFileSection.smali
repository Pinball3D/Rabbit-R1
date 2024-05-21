.class Landroidx/profileinstaller/WritableFileSection;
.super Ljava/lang/Object;
.source "WritableFileSection.java"


# instance fields
.field final mContents:[B

.field final mExpectedInflateSize:I

.field final mNeedsCompression:Z

.field final mType:Landroidx/profileinstaller/FileSectionType;


# direct methods
.method constructor <init>(Landroidx/profileinstaller/FileSectionType;I[BZ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/profileinstaller/WritableFileSection;->mType:Landroidx/profileinstaller/FileSectionType;

    iput p2, p0, Landroidx/profileinstaller/WritableFileSection;->mExpectedInflateSize:I

    iput-object p3, p0, Landroidx/profileinstaller/WritableFileSection;->mContents:[B

    iput-boolean p4, p0, Landroidx/profileinstaller/WritableFileSection;->mNeedsCompression:Z

    return-void
.end method

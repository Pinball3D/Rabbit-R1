package kotlin.io.path;

import io.sentry.Session;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FileVisitorBuilder.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001Bw\u0012\u001a\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u0012\u001a\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u0012\u001a\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u0012\u001c\u0010\n\u001a\u0018\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004¢\u0006\u0002\u0010\u000bJ\u001a\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0016J\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0018\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0018\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\tH\u0016R$\u0010\n\u001a\u0018\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lkotlin/io/path/FileVisitorImpl;", "Ljava/nio/file/SimpleFileVisitor;", "Ljava/nio/file/Path;", "onPreVisitDirectory", "Lkotlin/Function2;", "Ljava/nio/file/attribute/BasicFileAttributes;", "Ljava/nio/file/FileVisitResult;", "onVisitFile", "onVisitFileFailed", "Ljava/io/IOException;", "onPostVisitDirectory", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V", "postVisitDirectory", "dir", "exc", "preVisitDirectory", Session.JsonKeys.ATTRS, "visitFile", "file", "visitFileFailed", "kotlin-stdlib-jdk7"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
final class FileVisitorImpl extends SimpleFileVisitor<Path> {
    private final Function2<Path, IOException, FileVisitResult> onPostVisitDirectory;
    private final Function2<Path, BasicFileAttributes, FileVisitResult> onPreVisitDirectory;
    private final Function2<Path, BasicFileAttributes, FileVisitResult> onVisitFile;
    private final Function2<Path, IOException, FileVisitResult> onVisitFileFailed;

    /* JADX WARN: Multi-variable type inference failed */
    public FileVisitorImpl(Function2<? super Path, ? super BasicFileAttributes, ? extends FileVisitResult> function2, Function2<? super Path, ? super BasicFileAttributes, ? extends FileVisitResult> function22, Function2<? super Path, ? super IOException, ? extends FileVisitResult> function23, Function2<? super Path, ? super IOException, ? extends FileVisitResult> function24) {
        this.onPreVisitDirectory = function2;
        this.onVisitFile = function22;
        this.onVisitFileFailed = function23;
        this.onPostVisitDirectory = function24;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) {
        FileVisitResult invoke;
        Intrinsics.checkNotNullParameter(dir, "dir");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        Function2<Path, BasicFileAttributes, FileVisitResult> function2 = this.onPreVisitDirectory;
        if (function2 != null && (invoke = function2.invoke(dir, attrs)) != null) {
            return invoke;
        }
        FileVisitResult preVisitDirectory = super.preVisitDirectory((FileVisitorImpl) dir, attrs);
        Intrinsics.checkNotNullExpressionValue(preVisitDirectory, "preVisitDirectory(...)");
        return preVisitDirectory;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) {
        FileVisitResult invoke;
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        Function2<Path, BasicFileAttributes, FileVisitResult> function2 = this.onVisitFile;
        if (function2 != null && (invoke = function2.invoke(file, attrs)) != null) {
            return invoke;
        }
        FileVisitResult visitFile = super.visitFile((FileVisitorImpl) file, attrs);
        Intrinsics.checkNotNullExpressionValue(visitFile, "visitFile(...)");
        return visitFile;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult visitFileFailed(Path file, IOException exc) {
        FileVisitResult invoke;
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(exc, "exc");
        Function2<Path, IOException, FileVisitResult> function2 = this.onVisitFileFailed;
        if (function2 != null && (invoke = function2.invoke(file, exc)) != null) {
            return invoke;
        }
        FileVisitResult visitFileFailed = super.visitFileFailed((FileVisitorImpl) file, exc);
        Intrinsics.checkNotNullExpressionValue(visitFileFailed, "visitFileFailed(...)");
        return visitFileFailed;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult postVisitDirectory(Path dir, IOException exc) {
        FileVisitResult invoke;
        Intrinsics.checkNotNullParameter(dir, "dir");
        Function2<Path, IOException, FileVisitResult> function2 = this.onPostVisitDirectory;
        if (function2 != null && (invoke = function2.invoke(dir, exc)) != null) {
            return invoke;
        }
        FileVisitResult postVisitDirectory = super.postVisitDirectory((FileVisitorImpl) dir, exc);
        Intrinsics.checkNotNullExpressionValue(postVisitDirectory, "postVisitDirectory(...)");
        return postVisitDirectory;
    }
}

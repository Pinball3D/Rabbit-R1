package kotlin.io.path;

import androidx.constraintlayout.widget.ConstraintLayout;
import io.sentry.SentryEvent;
import io.sentry.protocol.SentryStackFrame;
import io.sentry.protocol.TransactionInfo;
import java.io.IOException;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystemException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.SecureDirectoryStream;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributeView;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PathRecursiveFunctions.kt */
@Metadata(d1 = {"\u0000v\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a$\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005H\u0082\b¢\u0006\u0002\b\u0006\u001a\u001d\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002¢\u0006\u0002\b\n\u001a\u001d\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002¢\u0006\u0002\b\r\u001a&\u0010\u000e\u001a\u0004\u0018\u0001H\u000f\"\u0004\b\u0000\u0010\u000f2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u0005H\u0082\b¢\u0006\u0004\b\u0010\u0010\u0011\u001aw\u0010\u0012\u001a\u00020\t*\u00020\t2\u0006\u0010\u0013\u001a\u00020\t2Q\b\u0002\u0010\u0014\u001aK\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0013\u0012\u0017\u0012\u00150\u0019j\u0002`\u001a¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u001c0\u00152\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0007\u001a´\u0001\u0010\u0012\u001a\u00020\t*\u00020\t2\u0006\u0010\u0013\u001a\u00020\t2Q\b\u0002\u0010\u0014\u001aK\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0013\u0012\u0017\u0012\u00150\u0019j\u0002`\u001a¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u001c0\u00152\u0006\u0010\u001d\u001a\u00020\u001e2C\b\u0002\u0010 \u001a=\u0012\u0004\u0012\u00020!\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\"0\u0015¢\u0006\u0002\b#H\u0007\u001a\f\u0010$\u001a\u00020\u0001*\u00020\tH\u0007\u001a\u001b\u0010%\u001a\f\u0012\b\u0012\u00060\u0019j\u0002`\u001a0&*\u00020\tH\u0002¢\u0006\u0002\b'\u001a'\u0010(\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\t0)2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002¢\u0006\u0002\b*\u001a'\u0010+\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\t0)2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002¢\u0006\u0002\b,\u001a5\u0010-\u001a\u00020\u001e*\b\u0012\u0004\u0012\u00020\t0)2\u0006\u0010.\u001a\u00020\t2\u0012\u0010/\u001a\n\u0012\u0006\b\u0001\u0012\u00020100\"\u000201H\u0002¢\u0006\u0004\b2\u00103\u001a\u0011\u00104\u001a\u000205*\u00020\"H\u0003¢\u0006\u0002\b6\u001a\u0011\u00104\u001a\u000205*\u00020\u001cH\u0003¢\u0006\u0002\b6¨\u00067"}, d2 = {"collectIfThrows", "", "collector", "Lkotlin/io/path/ExceptionsCollector;", SentryStackFrame.JsonKeys.FUNCTION, "Lkotlin/Function0;", "collectIfThrows$PathsKt__PathRecursiveFunctionsKt", "insecureEnterDirectory", "path", "Ljava/nio/file/Path;", "insecureEnterDirectory$PathsKt__PathRecursiveFunctionsKt", "insecureHandleEntry", "entry", "insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt", "tryIgnoreNoSuchFileException", "R", "tryIgnoreNoSuchFileException$PathsKt__PathRecursiveFunctionsKt", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "copyToRecursively", "target", "onError", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", TransactionInfo.JsonKeys.SOURCE, "Ljava/lang/Exception;", "Lkotlin/Exception;", SentryEvent.JsonKeys.EXCEPTION, "Lkotlin/io/path/OnErrorResult;", "followLinks", "", "overwrite", "copyAction", "Lkotlin/io/path/CopyActionContext;", "Lkotlin/io/path/CopyActionResult;", "Lkotlin/ExtensionFunctionType;", "deleteRecursively", "deleteRecursivelyImpl", "", "deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt", "enterDirectory", "Ljava/nio/file/SecureDirectoryStream;", "enterDirectory$PathsKt__PathRecursiveFunctionsKt", "handleEntry", "handleEntry$PathsKt__PathRecursiveFunctionsKt", "isDirectory", "entryName", "options", "", "Ljava/nio/file/LinkOption;", "isDirectory$PathsKt__PathRecursiveFunctionsKt", "(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z", "toFileVisitResult", "Ljava/nio/file/FileVisitResult;", "toFileVisitResult$PathsKt__PathRecursiveFunctionsKt", "kotlin-stdlib-jdk7"}, k = 5, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, xs = "kotlin/io/path/PathsKt")
/* loaded from: classes3.dex */
public class PathsKt__PathRecursiveFunctionsKt extends PathsKt__PathReadWriteKt {

    /* compiled from: PathRecursiveFunctions.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[CopyActionResult.values().length];
            try {
                iArr[CopyActionResult.CONTINUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CopyActionResult.TERMINATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CopyActionResult.SKIP_SUBTREE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[OnErrorResult.values().length];
            try {
                iArr2[OnErrorResult.TERMINATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[OnErrorResult.SKIP_SUBTREE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static /* synthetic */ Path copyToRecursively$default(Path path, Path path2, Function3 function3, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            function3 = new Function3() { // from class: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1
                @Override // kotlin.jvm.functions.Function3
                public final Void invoke(Path path3, Path path4, Exception exception) {
                    Intrinsics.checkNotNullParameter(path3, "<anonymous parameter 0>");
                    Intrinsics.checkNotNullParameter(path4, "<anonymous parameter 1>");
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    throw exception;
                }
            };
        }
        return PathsKt.copyToRecursively(path, path2, (Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult>) function3, z, z2);
    }

    public static final Path copyToRecursively(Path path, Path target, Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> onError, final boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(onError, "onError");
        if (z2) {
            return PathsKt.copyToRecursively(path, target, onError, z, new Function3<CopyActionContext, Path, Path, CopyActionResult>() { // from class: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public final CopyActionResult invoke(CopyActionContext copyToRecursively, Path src, Path dst) {
                    Intrinsics.checkNotNullParameter(copyToRecursively, "$this$copyToRecursively");
                    Intrinsics.checkNotNullParameter(src, "src");
                    Intrinsics.checkNotNullParameter(dst, "dst");
                    LinkOption[] linkOptions = LinkFollowing.INSTANCE.toLinkOptions(z);
                    boolean isDirectory = Files.isDirectory(dst, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1));
                    LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
                    if (!Files.isDirectory(src, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length)) || !isDirectory) {
                        if (isDirectory) {
                            PathsKt.deleteRecursively(dst);
                        }
                        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
                        spreadBuilder.addSpread(linkOptions);
                        spreadBuilder.add(StandardCopyOption.REPLACE_EXISTING);
                        CopyOption[] copyOptionArr = (CopyOption[]) spreadBuilder.toArray(new CopyOption[spreadBuilder.size()]);
                        Intrinsics.checkNotNullExpressionValue(Files.copy(src, dst, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length)), "copy(...)");
                    }
                    return CopyActionResult.CONTINUE;
                }
            });
        }
        return PathsKt.copyToRecursively$default(path, target, onError, z, (Function3) null, 8, (Object) null);
    }

    public static /* synthetic */ Path copyToRecursively$default(Path path, Path path2, Function3 function3, final boolean z, Function3 function32, int i, Object obj) {
        if ((i & 2) != 0) {
            function3 = new Function3() { // from class: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3
                @Override // kotlin.jvm.functions.Function3
                public final Void invoke(Path path3, Path path4, Exception exception) {
                    Intrinsics.checkNotNullParameter(path3, "<anonymous parameter 0>");
                    Intrinsics.checkNotNullParameter(path4, "<anonymous parameter 1>");
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    throw exception;
                }
            };
        }
        if ((i & 8) != 0) {
            function32 = new Function3<CopyActionContext, Path, Path, CopyActionResult>() { // from class: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$4
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public final CopyActionResult invoke(CopyActionContext copyActionContext, Path src, Path dst) {
                    Intrinsics.checkNotNullParameter(copyActionContext, "$this$null");
                    Intrinsics.checkNotNullParameter(src, "src");
                    Intrinsics.checkNotNullParameter(dst, "dst");
                    return copyActionContext.copyToIgnoringExistingDirectory(src, dst, z);
                }
            };
        }
        return PathsKt.copyToRecursively(path, path2, (Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult>) function3, z, (Function3<? super CopyActionContext, ? super Path, ? super Path, ? extends CopyActionResult>) function32);
    }

    public static final Path copyToRecursively(final Path path, final Path target, final Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> onError, boolean z, final Function3<? super CopyActionContext, ? super Path, ? super Path, ? extends CopyActionResult> copyAction) {
        Path parent;
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(onError, "onError");
        Intrinsics.checkNotNullParameter(copyAction, "copyAction");
        LinkOption[] linkOptions = LinkFollowing.INSTANCE.toLinkOptions(z);
        LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
        if (!Files.exists(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
            throw new NoSuchFileException(path.toString(), target.toString(), "The source file doesn't exist.");
        }
        if (Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && (z || !Files.isSymbolicLink(path))) {
            boolean z2 = Files.exists(target, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && !Files.isSymbolicLink(target);
            if ((!z2 || !Files.isSameFile(path, target)) && Intrinsics.areEqual(path.getFileSystem(), target.getFileSystem()) && (!z2 ? !((parent = target.getParent()) == null || !Files.exists(parent, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) || !parent.toRealPath(new LinkOption[0]).startsWith(path.toRealPath(new LinkOption[0]))) : target.toRealPath(new LinkOption[0]).startsWith(path.toRealPath(new LinkOption[0])))) {
                throw new FileSystemException(path.toString(), target.toString(), "Recursively copying a directory into its subdirectory is prohibited.");
            }
        }
        PathsKt.visitFileTree$default(path, 0, z, new Function1<FileVisitorBuilder, Unit>() { // from class: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: PathRecursiveFunctions.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1, reason: invalid class name */
            /* loaded from: classes3.dex */
            public /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function2<Path, BasicFileAttributes, FileVisitResult> {
                final /* synthetic */ Function3<CopyActionContext, Path, Path, CopyActionResult> $copyAction;
                final /* synthetic */ Function3<Path, Path, Exception, OnErrorResult> $onError;
                final /* synthetic */ Path $target;
                final /* synthetic */ Path $this_copyToRecursively;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass1(Function3<? super CopyActionContext, ? super Path, ? super Path, ? extends CopyActionResult> function3, Path path, Path path2, Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> function32) {
                    super(2, Intrinsics.Kotlin.class, "copy", "copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;", 0);
                    this.$copyAction = function3;
                    this.$this_copyToRecursively = path;
                    this.$target = path2;
                    this.$onError = function32;
                }

                @Override // kotlin.jvm.functions.Function2
                public final FileVisitResult invoke(Path p0, BasicFileAttributes p1) {
                    FileVisitResult copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt;
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    Intrinsics.checkNotNullParameter(p1, "p1");
                    copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt = PathsKt__PathRecursiveFunctionsKt.copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(this.$copyAction, this.$this_copyToRecursively, this.$target, this.$onError, p0, p1);
                    return copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt;
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(FileVisitorBuilder fileVisitorBuilder) {
                invoke2(fileVisitorBuilder);
                return Unit.INSTANCE;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: PathRecursiveFunctions.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2, reason: invalid class name */
            /* loaded from: classes3.dex */
            public /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function2<Path, BasicFileAttributes, FileVisitResult> {
                final /* synthetic */ Function3<CopyActionContext, Path, Path, CopyActionResult> $copyAction;
                final /* synthetic */ Function3<Path, Path, Exception, OnErrorResult> $onError;
                final /* synthetic */ Path $target;
                final /* synthetic */ Path $this_copyToRecursively;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass2(Function3<? super CopyActionContext, ? super Path, ? super Path, ? extends CopyActionResult> function3, Path path, Path path2, Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> function32) {
                    super(2, Intrinsics.Kotlin.class, "copy", "copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;", 0);
                    this.$copyAction = function3;
                    this.$this_copyToRecursively = path;
                    this.$target = path2;
                    this.$onError = function32;
                }

                @Override // kotlin.jvm.functions.Function2
                public final FileVisitResult invoke(Path p0, BasicFileAttributes p1) {
                    FileVisitResult copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt;
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    Intrinsics.checkNotNullParameter(p1, "p1");
                    copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt = PathsKt__PathRecursiveFunctionsKt.copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(this.$copyAction, this.$this_copyToRecursively, this.$target, this.$onError, p0, p1);
                    return copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt;
                }
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(FileVisitorBuilder visitFileTree) {
                Intrinsics.checkNotNullParameter(visitFileTree, "$this$visitFileTree");
                visitFileTree.onPreVisitDirectory(new AnonymousClass1(copyAction, path, target, onError));
                visitFileTree.onVisitFile(new AnonymousClass2(copyAction, path, target, onError));
                visitFileTree.onVisitFileFailed(new AnonymousClass3(onError, path, target));
                final Function3<Path, Path, Exception, OnErrorResult> function3 = onError;
                final Path path2 = path;
                final Path path3 = target;
                visitFileTree.onPostVisitDirectory(new Function2<Path, IOException, FileVisitResult>() { // from class: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5.4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final FileVisitResult invoke(Path directory, IOException iOException) {
                        FileVisitResult copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt;
                        Intrinsics.checkNotNullParameter(directory, "directory");
                        if (iOException != null) {
                            copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt = PathsKt__PathRecursiveFunctionsKt.copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(function3, path2, path3, directory, iOException);
                            return copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt;
                        }
                        return FileVisitResult.CONTINUE;
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: PathRecursiveFunctions.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3, reason: invalid class name */
            /* loaded from: classes3.dex */
            public /* synthetic */ class AnonymousClass3 extends FunctionReferenceImpl implements Function2<Path, Exception, FileVisitResult> {
                final /* synthetic */ Function3<Path, Path, Exception, OnErrorResult> $onError;
                final /* synthetic */ Path $target;
                final /* synthetic */ Path $this_copyToRecursively;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass3(Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> function3, Path path, Path path2) {
                    super(2, Intrinsics.Kotlin.class, "error", "copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;", 0);
                    this.$onError = function3;
                    this.$this_copyToRecursively = path;
                    this.$target = path2;
                }

                @Override // kotlin.jvm.functions.Function2
                public final FileVisitResult invoke(Path p0, Exception p1) {
                    FileVisitResult copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt;
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    Intrinsics.checkNotNullParameter(p1, "p1");
                    copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt = PathsKt__PathRecursiveFunctionsKt.copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(this.$onError, this.$this_copyToRecursively, this.$target, p0, p1);
                    return copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt;
                }
            }
        }, 1, (Object) null);
        return target;
    }

    private static final Path copyToRecursively$destination$PathsKt__PathRecursiveFunctionsKt(Path path, Path path2, Path path3) {
        Path resolve = path2.resolve(PathsKt.relativeTo(path3, path).toString());
        Intrinsics.checkNotNullExpressionValue(resolve, "resolve(...)");
        return resolve;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FileVisitResult copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> function3, Path path, Path path2, Path path3, Exception exc) {
        return toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(function3.invoke(path3, copyToRecursively$destination$PathsKt__PathRecursiveFunctionsKt(path, path2, path3), exc));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FileVisitResult copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Function3<? super CopyActionContext, ? super Path, ? super Path, ? extends CopyActionResult> function3, Path path, Path path2, Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> function32, Path path3, BasicFileAttributes basicFileAttributes) {
        try {
            return toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(function3.invoke(DefaultCopyActionContext.INSTANCE, path3, copyToRecursively$destination$PathsKt__PathRecursiveFunctionsKt(path, path2, path3)));
        } catch (Exception e) {
            return copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(function32, path, path2, path3, e);
        }
    }

    private static final FileVisitResult toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(CopyActionResult copyActionResult) {
        int i = WhenMappings.$EnumSwitchMapping$0[copyActionResult.ordinal()];
        if (i == 1) {
            return FileVisitResult.CONTINUE;
        }
        if (i == 2) {
            return FileVisitResult.TERMINATE;
        }
        if (i == 3) {
            return FileVisitResult.SKIP_SUBTREE;
        }
        throw new NoWhenBranchMatchedException();
    }

    private static final FileVisitResult toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(OnErrorResult onErrorResult) {
        int i = WhenMappings.$EnumSwitchMapping$1[onErrorResult.ordinal()];
        if (i == 1) {
            return FileVisitResult.TERMINATE;
        }
        if (i == 2) {
            return FileVisitResult.SKIP_SUBTREE;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final void deleteRecursively(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        List<Exception> deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt = deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt(path);
        if (!deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt.isEmpty()) {
            FileSystemException fileSystemException = new FileSystemException("Failed to delete one or more files. See suppressed exceptions for details.");
            Iterator<T> it = deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt.iterator();
            while (it.hasNext()) {
                ExceptionsKt.addSuppressed(fileSystemException, (Exception) it.next());
            }
            throw fileSystemException;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
    
        if (r1 != false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.util.List<java.lang.Exception> deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt(java.nio.file.Path r8) {
        /*
            kotlin.io.path.ExceptionsCollector r0 = new kotlin.io.path.ExceptionsCollector
            r1 = 0
            r2 = 1
            r3 = 0
            r0.<init>(r1, r2, r3)
            java.nio.file.Path r4 = r8.getParent()
            if (r4 == 0) goto L41
            java.nio.file.DirectoryStream r5 = java.nio.file.Files.newDirectoryStream(r4)     // Catch: java.lang.Throwable -> L13
            goto L14
        L13:
            r5 = r3
        L14:
            if (r5 == 0) goto L41
            java.io.Closeable r5 = (java.io.Closeable) r5
            r6 = r5
            java.nio.file.DirectoryStream r6 = (java.nio.file.DirectoryStream) r6     // Catch: java.lang.Throwable -> L3a
            boolean r7 = r6 instanceof java.nio.file.SecureDirectoryStream     // Catch: java.lang.Throwable -> L3a
            if (r7 == 0) goto L31
            r0.setPath(r4)     // Catch: java.lang.Throwable -> L3a
            java.nio.file.SecureDirectoryStream r6 = (java.nio.file.SecureDirectoryStream) r6     // Catch: java.lang.Throwable -> L3a
            java.nio.file.Path r2 = r8.getFileName()     // Catch: java.lang.Throwable -> L3a
            java.lang.String r4 = "getFileName(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r4)     // Catch: java.lang.Throwable -> L3a
            handleEntry$PathsKt__PathRecursiveFunctionsKt(r6, r2, r0)     // Catch: java.lang.Throwable -> L3a
            goto L32
        L31:
            r1 = r2
        L32:
            kotlin.Unit r2 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L3a
            kotlin.io.CloseableKt.closeFinally(r5, r3)
            if (r1 == 0) goto L44
            goto L41
        L3a:
            r8 = move-exception
            throw r8     // Catch: java.lang.Throwable -> L3c
        L3c:
            r0 = move-exception
            kotlin.io.CloseableKt.closeFinally(r5, r8)
            throw r0
        L41:
            insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt(r8, r0)
        L44:
            java.util.List r8 = r0.getCollectedExceptions()
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt(java.nio.file.Path):java.util.List");
    }

    private static final void collectIfThrows$PathsKt__PathRecursiveFunctionsKt(ExceptionsCollector exceptionsCollector, Function0<Unit> function0) {
        try {
            function0.invoke();
        } catch (Exception e) {
            exceptionsCollector.collect(e);
        }
    }

    private static final <R> R tryIgnoreNoSuchFileException$PathsKt__PathRecursiveFunctionsKt(Function0<? extends R> function0) {
        try {
            return function0.invoke();
        } catch (NoSuchFileException unused) {
            return null;
        }
    }

    private static final void handleEntry$PathsKt__PathRecursiveFunctionsKt(SecureDirectoryStream<Path> secureDirectoryStream, Path path, ExceptionsCollector exceptionsCollector) {
        exceptionsCollector.enterEntry(path);
        try {
        } catch (Exception e) {
            exceptionsCollector.collect(e);
        }
        if (isDirectory$PathsKt__PathRecursiveFunctionsKt(secureDirectoryStream, path, LinkOption.NOFOLLOW_LINKS)) {
            int totalExceptions = exceptionsCollector.getTotalExceptions();
            enterDirectory$PathsKt__PathRecursiveFunctionsKt(secureDirectoryStream, path, exceptionsCollector);
            if (totalExceptions == exceptionsCollector.getTotalExceptions()) {
                secureDirectoryStream.deleteDirectory(path);
                Unit unit = Unit.INSTANCE;
            }
            exceptionsCollector.exitEntry(path);
        }
        secureDirectoryStream.deleteFile(path);
        Unit unit2 = Unit.INSTANCE;
        exceptionsCollector.exitEntry(path);
    }

    private static final void enterDirectory$PathsKt__PathRecursiveFunctionsKt(SecureDirectoryStream<Path> secureDirectoryStream, Path path, ExceptionsCollector exceptionsCollector) {
        SecureDirectoryStream<Path> secureDirectoryStream2;
        try {
            try {
                secureDirectoryStream2 = secureDirectoryStream.newDirectoryStream(path, LinkOption.NOFOLLOW_LINKS);
            } catch (Exception e) {
                exceptionsCollector.collect(e);
                return;
            }
        } catch (NoSuchFileException unused) {
            secureDirectoryStream2 = null;
        }
        if (secureDirectoryStream2 == null) {
            return;
        }
        SecureDirectoryStream<Path> secureDirectoryStream3 = secureDirectoryStream2;
        try {
            SecureDirectoryStream<Path> secureDirectoryStream4 = secureDirectoryStream3;
            Iterator<Path> it = secureDirectoryStream4.iterator();
            while (it.hasNext()) {
                Path fileName = it.next().getFileName();
                Intrinsics.checkNotNullExpressionValue(fileName, "getFileName(...)");
                handleEntry$PathsKt__PathRecursiveFunctionsKt(secureDirectoryStream4, fileName, exceptionsCollector);
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(secureDirectoryStream3, null);
        } finally {
        }
    }

    private static final boolean isDirectory$PathsKt__PathRecursiveFunctionsKt(SecureDirectoryStream<Path> secureDirectoryStream, Path path, LinkOption... linkOptionArr) {
        Boolean bool;
        try {
            bool = Boolean.valueOf(((BasicFileAttributeView) secureDirectoryStream.getFileAttributeView(path, BasicFileAttributeView.class, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))).readAttributes().isDirectory());
        } catch (NoSuchFileException unused) {
            bool = null;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    private static final void insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt(Path path, ExceptionsCollector exceptionsCollector) {
        try {
            if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
                int totalExceptions = exceptionsCollector.getTotalExceptions();
                insecureEnterDirectory$PathsKt__PathRecursiveFunctionsKt(path, exceptionsCollector);
                if (totalExceptions == exceptionsCollector.getTotalExceptions()) {
                    Files.deleteIfExists(path);
                }
            } else {
                Files.deleteIfExists(path);
            }
        } catch (Exception e) {
            exceptionsCollector.collect(e);
        }
    }

    private static final void insecureEnterDirectory$PathsKt__PathRecursiveFunctionsKt(Path path, ExceptionsCollector exceptionsCollector) {
        DirectoryStream<Path> directoryStream;
        try {
            try {
                directoryStream = Files.newDirectoryStream(path);
            } catch (Exception e) {
                exceptionsCollector.collect(e);
                return;
            }
        } catch (NoSuchFileException unused) {
            directoryStream = null;
        }
        if (directoryStream == null) {
            return;
        }
        DirectoryStream<Path> directoryStream2 = directoryStream;
        try {
            for (Path path2 : directoryStream2) {
                Intrinsics.checkNotNull(path2);
                insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt(path2, exceptionsCollector);
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(directoryStream2, null);
        } finally {
        }
    }
}

package androidx.compose.material3;

import androidx.compose.ui.graphics.AndroidPathMeasure_androidKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathMeasure;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Checkbox.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0003\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Landroidx/compose/material3/CheckDrawingCache;", "", "checkPath", "Landroidx/compose/ui/graphics/Path;", "pathMeasure", "Landroidx/compose/ui/graphics/PathMeasure;", "pathToDraw", "(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/PathMeasure;Landroidx/compose/ui/graphics/Path;)V", "getCheckPath", "()Landroidx/compose/ui/graphics/Path;", "getPathMeasure", "()Landroidx/compose/ui/graphics/PathMeasure;", "getPathToDraw", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CheckDrawingCache {
    private final Path checkPath;
    private final PathMeasure pathMeasure;
    private final Path pathToDraw;

    public CheckDrawingCache() {
        this(null, null, null, 7, null);
    }

    public final Path getCheckPath() {
        return this.checkPath;
    }

    public final PathMeasure getPathMeasure() {
        return this.pathMeasure;
    }

    public final Path getPathToDraw() {
        return this.pathToDraw;
    }

    public CheckDrawingCache(Path checkPath, PathMeasure pathMeasure, Path pathToDraw) {
        Intrinsics.checkNotNullParameter(checkPath, "checkPath");
        Intrinsics.checkNotNullParameter(pathMeasure, "pathMeasure");
        Intrinsics.checkNotNullParameter(pathToDraw, "pathToDraw");
        this.checkPath = checkPath;
        this.pathMeasure = pathMeasure;
        this.pathToDraw = pathToDraw;
    }

    public /* synthetic */ CheckDrawingCache(Path path, PathMeasure pathMeasure, Path path2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? AndroidPath_androidKt.Path() : path, (i & 2) != 0 ? AndroidPathMeasure_androidKt.PathMeasure() : pathMeasure, (i & 4) != 0 ? AndroidPath_androidKt.Path() : path2);
    }
}

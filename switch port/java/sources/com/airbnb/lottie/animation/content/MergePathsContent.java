package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import com.airbnb.lottie.model.content.MergePaths;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes2.dex */
public class MergePathsContent implements PathContent, GreedyContent {
    private final MergePaths mergePaths;
    private final String name;
    private final Path firstPath = new Path();
    private final Path remainderPath = new Path();
    private final Path path = new Path();
    private final List<PathContent> pathContents = new ArrayList();

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.name;
    }

    public MergePathsContent(MergePaths mergePaths) {
        this.name = mergePaths.getName();
        this.mergePaths = mergePaths;
    }

    @Override // com.airbnb.lottie.animation.content.GreedyContent
    public void absorbContent(ListIterator<Content> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            Content previous = listIterator.previous();
            if (previous instanceof PathContent) {
                this.pathContents.add((PathContent) previous);
                listIterator.remove();
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        for (int i = 0; i < this.pathContents.size(); i++) {
            this.pathContents.get(i).setContents(list, list2);
        }
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public Path getPath() {
        this.path.reset();
        if (this.mergePaths.isHidden()) {
            return this.path;
        }
        int i = AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[this.mergePaths.getMode().ordinal()];
        if (i == 1) {
            addPaths();
        } else if (i == 2) {
            opFirstPathWithRest(Path.Op.UNION);
        } else if (i == 3) {
            opFirstPathWithRest(Path.Op.REVERSE_DIFFERENCE);
        } else if (i == 4) {
            opFirstPathWithRest(Path.Op.INTERSECT);
        } else if (i == 5) {
            opFirstPathWithRest(Path.Op.XOR);
        }
        return this.path;
    }

    /* renamed from: com.airbnb.lottie.animation.content.MergePathsContent$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode;

        static {
            int[] iArr = new int[MergePaths.MergePathsMode.values().length];
            $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode = iArr;
            try {
                iArr[MergePaths.MergePathsMode.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[MergePaths.MergePathsMode.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[MergePaths.MergePathsMode.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[MergePaths.MergePathsMode.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[MergePaths.MergePathsMode.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private void addPaths() {
        for (int i = 0; i < this.pathContents.size(); i++) {
            this.path.addPath(this.pathContents.get(i).getPath());
        }
    }

    private void opFirstPathWithRest(Path.Op op) {
        this.remainderPath.reset();
        this.firstPath.reset();
        for (int size = this.pathContents.size() - 1; size >= 1; size--) {
            PathContent pathContent = this.pathContents.get(size);
            if (pathContent instanceof ContentGroup) {
                ContentGroup contentGroup = (ContentGroup) pathContent;
                List<PathContent> pathList = contentGroup.getPathList();
                for (int size2 = pathList.size() - 1; size2 >= 0; size2--) {
                    Path path = pathList.get(size2).getPath();
                    path.transform(contentGroup.getTransformationMatrix());
                    this.remainderPath.addPath(path);
                }
            } else {
                this.remainderPath.addPath(pathContent.getPath());
            }
        }
        PathContent pathContent2 = this.pathContents.get(0);
        if (pathContent2 instanceof ContentGroup) {
            ContentGroup contentGroup2 = (ContentGroup) pathContent2;
            List<PathContent> pathList2 = contentGroup2.getPathList();
            for (int i = 0; i < pathList2.size(); i++) {
                Path path2 = pathList2.get(i).getPath();
                path2.transform(contentGroup2.getTransformationMatrix());
                this.firstPath.addPath(path2);
            }
        } else {
            this.firstPath.set(pathContent2.getPath());
        }
        this.path.op(this.firstPath, this.remainderPath, op);
    }
}

package com.google.common.graph;

import com.google.errorprone.annotations.DoNotMock;

@DoNotMock("Implement with a lambda, or use GraphBuilder to build a Graph with the desired edges")
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public interface SuccessorsFunction<N> {
    Iterable<? extends N> successors(N n);
}

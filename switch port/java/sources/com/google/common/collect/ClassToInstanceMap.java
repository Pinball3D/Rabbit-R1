package com.google.common.collect;

import com.google.errorprone.annotations.DoNotMock;
import java.util.Map;
import javax.annotation.CheckForNull;

@DoNotMock("Use ImmutableClassToInstanceMap or MutableClassToInstanceMap")
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public interface ClassToInstanceMap<B> extends Map<Class<? extends B>, B> {
    @CheckForNull
    <T extends B> T getInstance(Class<T> cls);

    @CheckForNull
    <T extends B> T putInstance(Class<T> cls, T t);
}

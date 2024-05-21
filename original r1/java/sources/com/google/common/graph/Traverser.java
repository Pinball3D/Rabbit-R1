package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import com.google.errorprone.annotations.DoNotMock;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import javax.annotation.CheckForNull;

@DoNotMock("Call forGraph or forTree, passing a lambda or a Graph with the desired edges (built with GraphBuilder)")
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class Traverser<N> {
    private final SuccessorsFunction<N> successorFunction;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum InsertionOrder {
        FRONT { // from class: com.google.common.graph.Traverser.InsertionOrder.1
            @Override // com.google.common.graph.Traverser.InsertionOrder
            <T> void insertInto(Deque<T> deque, T t) {
                deque.addFirst(t);
            }
        },
        BACK { // from class: com.google.common.graph.Traverser.InsertionOrder.2
            @Override // com.google.common.graph.Traverser.InsertionOrder
            <T> void insertInto(Deque<T> deque, T t) {
                deque.addLast(t);
            }
        };

        abstract <T> void insertInto(Deque<T> deque, T t);
    }

    abstract Traversal<N> newTraversal();

    private Traverser(SuccessorsFunction<N> successorsFunction) {
        this.successorFunction = (SuccessorsFunction) Preconditions.checkNotNull(successorsFunction);
    }

    public static <N> Traverser<N> forGraph(final SuccessorsFunction<N> successorsFunction) {
        return new Traverser<N>(successorsFunction) { // from class: com.google.common.graph.Traverser.1
            @Override // com.google.common.graph.Traverser
            Traversal<N> newTraversal() {
                return Traversal.inGraph(successorsFunction);
            }
        };
    }

    public static <N> Traverser<N> forTree(final SuccessorsFunction<N> successorsFunction) {
        if (successorsFunction instanceof BaseGraph) {
            Preconditions.checkArgument(((BaseGraph) successorsFunction).isDirected(), "Undirected graphs can never be trees.");
        }
        if (successorsFunction instanceof Network) {
            Preconditions.checkArgument(((Network) successorsFunction).isDirected(), "Undirected networks can never be trees.");
        }
        return new Traverser<N>(successorsFunction) { // from class: com.google.common.graph.Traverser.2
            @Override // com.google.common.graph.Traverser
            Traversal<N> newTraversal() {
                return Traversal.inTree(successorsFunction);
            }
        };
    }

    public final Iterable<N> breadthFirst(N n) {
        return breadthFirst((Iterable) ImmutableSet.of(n));
    }

    public final Iterable<N> breadthFirst(Iterable<? extends N> iterable) {
        final ImmutableSet<N> validate = validate(iterable);
        return new Iterable<N>() { // from class: com.google.common.graph.Traverser.3
            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return Traverser.this.newTraversal().breadthFirst(validate.iterator());
            }
        };
    }

    public final Iterable<N> depthFirstPreOrder(N n) {
        return depthFirstPreOrder((Iterable) ImmutableSet.of(n));
    }

    public final Iterable<N> depthFirstPreOrder(Iterable<? extends N> iterable) {
        final ImmutableSet<N> validate = validate(iterable);
        return new Iterable<N>() { // from class: com.google.common.graph.Traverser.4
            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return Traverser.this.newTraversal().preOrder(validate.iterator());
            }
        };
    }

    public final Iterable<N> depthFirstPostOrder(N n) {
        return depthFirstPostOrder((Iterable) ImmutableSet.of(n));
    }

    public final Iterable<N> depthFirstPostOrder(Iterable<? extends N> iterable) {
        final ImmutableSet<N> validate = validate(iterable);
        return new Iterable<N>() { // from class: com.google.common.graph.Traverser.5
            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return Traverser.this.newTraversal().postOrder(validate.iterator());
            }
        };
    }

    private ImmutableSet<N> validate(Iterable<? extends N> iterable) {
        ImmutableSet<N> copyOf = ImmutableSet.copyOf(iterable);
        UnmodifiableIterator<N> it = copyOf.iterator();
        while (it.hasNext()) {
            this.successorFunction.successors(it.next());
        }
        return copyOf;
    }

    /* loaded from: classes3.dex */
    private static abstract class Traversal<N> {
        final SuccessorsFunction<N> successorFunction;

        @CheckForNull
        abstract N visitNext(Deque<Iterator<? extends N>> deque);

        Traversal(SuccessorsFunction<N> successorsFunction) {
            this.successorFunction = successorsFunction;
        }

        static <N> Traversal<N> inGraph(SuccessorsFunction<N> successorsFunction) {
            final HashSet hashSet = new HashSet();
            return new Traversal<N>(successorsFunction) { // from class: com.google.common.graph.Traverser.Traversal.1
                @Override // com.google.common.graph.Traverser.Traversal
                @CheckForNull
                N visitNext(Deque<Iterator<? extends N>> deque) {
                    Iterator<? extends N> first = deque.getFirst();
                    while (first.hasNext()) {
                        N next = first.next();
                        Objects.requireNonNull(next);
                        if (hashSet.add(next)) {
                            return next;
                        }
                    }
                    deque.removeFirst();
                    return null;
                }
            };
        }

        static <N> Traversal<N> inTree(SuccessorsFunction<N> successorsFunction) {
            return new Traversal<N>(successorsFunction) { // from class: com.google.common.graph.Traverser.Traversal.2
                @Override // com.google.common.graph.Traverser.Traversal
                @CheckForNull
                N visitNext(Deque<Iterator<? extends N>> deque) {
                    Iterator<? extends N> first = deque.getFirst();
                    if (first.hasNext()) {
                        return (N) Preconditions.checkNotNull(first.next());
                    }
                    deque.removeFirst();
                    return null;
                }
            };
        }

        final Iterator<N> breadthFirst(Iterator<? extends N> it) {
            return topDown(it, InsertionOrder.BACK);
        }

        final Iterator<N> preOrder(Iterator<? extends N> it) {
            return topDown(it, InsertionOrder.FRONT);
        }

        private Iterator<N> topDown(Iterator<? extends N> it, final InsertionOrder insertionOrder) {
            final ArrayDeque arrayDeque = new ArrayDeque();
            arrayDeque.add(it);
            return new AbstractIterator<N>() { // from class: com.google.common.graph.Traverser.Traversal.3
                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                protected N computeNext() {
                    do {
                        N n = (N) Traversal.this.visitNext(arrayDeque);
                        if (n != null) {
                            Iterator<? extends N> it2 = Traversal.this.successorFunction.successors(n).iterator();
                            if (it2.hasNext()) {
                                insertionOrder.insertInto(arrayDeque, it2);
                            }
                            return n;
                        }
                    } while (!arrayDeque.isEmpty());
                    return endOfData();
                }
            };
        }

        final Iterator<N> postOrder(Iterator<? extends N> it) {
            final ArrayDeque arrayDeque = new ArrayDeque();
            final ArrayDeque arrayDeque2 = new ArrayDeque();
            arrayDeque2.add(it);
            return new AbstractIterator<N>() { // from class: com.google.common.graph.Traverser.Traversal.4
                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                protected N computeNext() {
                    while (true) {
                        N n = (N) Traversal.this.visitNext(arrayDeque2);
                        if (n != null) {
                            Iterator<? extends N> it2 = Traversal.this.successorFunction.successors(n).iterator();
                            if (!it2.hasNext()) {
                                return n;
                            }
                            arrayDeque2.addFirst(it2);
                            arrayDeque.push(n);
                        } else {
                            if (!arrayDeque.isEmpty()) {
                                return (N) arrayDeque.pop();
                            }
                            return endOfData();
                        }
                    }
                }
            };
        }
    }
}

package tech.rabbit.r1launcher.settings.network2.manager;

import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.PivotLayoutManager;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.common.utils.RLog;
import tech.rabbit.r1launcher.databinding.FragmentNetworkManagerBinding;
import tech.rabbit.r1launcher.settings.network2.WifiWrap;

/* compiled from: NetworkManagerFragment.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"}, d2 = {"<anonymous>", "", "items", "", "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$onViewCreated$6", f = "NetworkManagerFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class NetworkManagerFragment$onViewCreated$6 extends SuspendLambda implements Function2<List<? extends WifiWrap>, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<WifiWrap> $wifiItemsCache;
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ NetworkManagerFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkManagerFragment$onViewCreated$6(NetworkManagerFragment networkManagerFragment, List<WifiWrap> list, Continuation<? super NetworkManagerFragment$onViewCreated$6> continuation) {
        super(2, continuation);
        this.this$0 = networkManagerFragment;
        this.$wifiItemsCache = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        NetworkManagerFragment$onViewCreated$6 networkManagerFragment$onViewCreated$6 = new NetworkManagerFragment$onViewCreated$6(this.this$0, this.$wifiItemsCache, continuation);
        networkManagerFragment$onViewCreated$6.L$0 = obj;
        return networkManagerFragment$onViewCreated$6;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(List<? extends WifiWrap> list, Continuation<? super Unit> continuation) {
        return invoke2((List<WifiWrap>) list, continuation);
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(List<WifiWrap> list, Continuation<? super Unit> continuation) {
        return ((NetworkManagerFragment$onViewCreated$6) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FragmentNetworkManagerBinding binding;
        WifiWrap wifiWrap;
        NetworksAdapter networksAdapter;
        FragmentNetworkManagerBinding binding2;
        FragmentNetworkManagerBinding binding3;
        FragmentNetworkManagerBinding binding4;
        NetworksAdapter networksAdapter2;
        FragmentNetworkManagerBinding binding5;
        FragmentNetworkManagerBinding binding6;
        FragmentNetworkManagerBinding binding7;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            List list = (List) this.L$0;
            RLog.d("NetworkManagerFragment", "collectLast(viewModel.scanWifiItems) items -> , " + CollectionsKt.joinToString$default(list, null, null, null, 0, null, null, 63, null));
            binding = this.this$0.getBinding();
            if (binding.rvList.hasFocus()) {
                networksAdapter2 = this.this$0.getNetworksAdapter();
                List<WifiWrap> data = networksAdapter2.getData();
                binding5 = this.this$0.getBinding();
                int selectedPosition = binding5.rvList.getSelectedPosition();
                NetworkManagerFragment networkManagerFragment = this.this$0;
                binding6 = networkManagerFragment.getBinding();
                DpadRecyclerView dpadRecyclerView = binding6.rvList;
                binding7 = networkManagerFragment.getBinding();
                RecyclerView.LayoutManager layoutManager = binding7.rvList.getLayoutManager();
                PivotLayoutManager pivotLayoutManager = layoutManager instanceof PivotLayoutManager ? (PivotLayoutManager) layoutManager : null;
                dpadRecyclerView.clearChildFocus(pivotLayoutManager != null ? pivotLayoutManager.findViewByPosition(selectedPosition) : null);
                wifiWrap = (WifiWrap) CollectionsKt.getOrNull(data, selectedPosition);
            } else {
                wifiWrap = null;
            }
            networksAdapter = this.this$0.getNetworksAdapter();
            networksAdapter.setNewInstance(CollectionsKt.toMutableList((Collection) list));
            this.this$0.autoSetNetworkItemsListFocusable(!r3.isEmpty());
            this.this$0.autoSelectedLastPosition(!Intrinsics.areEqual(this.$wifiItemsCache, list), list);
            binding2 = this.this$0.getBinding();
            if (binding2.rvList.hasFocus()) {
                binding3 = this.this$0.getBinding();
                binding3.rvList.requestFocus();
                Iterator it = list.iterator();
                int i = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i = -1;
                        break;
                    }
                    if (Intrinsics.areEqual(((WifiWrap) it.next()).getWifi(), wifiWrap != null ? wifiWrap.getWifi() : null)) {
                        break;
                    }
                    i++;
                }
                binding4 = this.this$0.getBinding();
                binding4.rvList.setSelectedPosition(i >= 0 ? i : 0);
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}

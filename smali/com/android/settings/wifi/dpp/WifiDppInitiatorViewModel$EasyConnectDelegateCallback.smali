.class Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;
.super Landroid/net/wifi/EasyConnectStatusCallback;
.source "WifiDppInitiatorViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyConnectDelegateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-direct {p0}, Landroid/net/wifi/EasyConnectStatusCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$1;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    return-void
.end method


# virtual methods
.method public onConfiguratorSuccess(I)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$102(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Z)Z

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$300(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onEnrolleeSuccess(I)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$102(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Z)Z

    .line 92
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$200(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;[I)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$102(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Z)Z

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {v0, p2}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$402(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {p2, p3}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$502(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 107
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {p2, p4}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$602(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;[I)[I

    .line 108
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$300(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

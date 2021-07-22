.class public final Lcom/android/settings/network/EthernetTetherPreferenceController;
.super Lcom/android/settings/network/TetherBasePreferenceController;
.source "EthernetTetherPreferenceController.java"


# instance fields
.field mEthernetListener:Landroid/net/EthernetManager$Listener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mEthernetManager:Landroid/net/EthernetManager;

.field private final mEthernetRegex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/TetherBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p2, 0x1040220

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/EthernetTetherPreferenceController;->mEthernetRegex:Ljava/lang/String;

    const-string p2, "ethernet"

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/EthernetManager;

    iput-object p1, p0, Lcom/android/settings/network/EthernetTetherPreferenceController;->mEthernetManager:Landroid/net/EthernetManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getTetherType()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 51
    new-instance v0, Lcom/android/settings/network/EthernetTetherPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/EthernetTetherPreferenceController$1;-><init>(Lcom/android/settings/network/EthernetTetherPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/EthernetTetherPreferenceController;->mEthernetListener:Landroid/net/EthernetManager$Listener;

    .line 57
    iget-object p0, p0, Lcom/android/settings/network/EthernetTetherPreferenceController;->mEthernetManager:Landroid/net/EthernetManager;

    invoke-virtual {p0, v0}, Landroid/net/EthernetManager;->addListener(Landroid/net/EthernetManager$Listener;)V

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/settings/network/EthernetTetherPreferenceController;->mEthernetManager:Landroid/net/EthernetManager;

    iget-object v1, p0, Lcom/android/settings/network/EthernetTetherPreferenceController;->mEthernetListener:Landroid/net/EthernetManager$Listener;

    invoke-virtual {v0, v1}, Landroid/net/EthernetManager;->removeListener(Landroid/net/EthernetManager$Listener;)V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/android/settings/network/EthernetTetherPreferenceController;->mEthernetListener:Landroid/net/EthernetManager$Listener;

    return-void
.end method

.method public shouldEnable()Z
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 69
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 70
    iget-object v5, p0, Lcom/android/settings/network/EthernetTetherPreferenceController;->mEthernetRegex:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public shouldShow()Z
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/network/EthernetTetherPreferenceController;->mEthernetRegex:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

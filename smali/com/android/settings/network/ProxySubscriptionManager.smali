.class public Lcom/android/settings/network/ProxySubscriptionManager;
.super Ljava/lang/Object;
.source "ProxySubscriptionManager.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;
    }
.end annotation


# static fields
.field private static sSingleton:Lcom/android/settings/network/ProxySubscriptionManager;


# instance fields
.field private mActiveSubscriptionsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAirplaneModeMonitor:Lcom/android/settings/network/GlobalSettingsChangeListener;

.field private mLifecycle:Landroidx/lifecycle/Lifecycle;

.field private mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubsciptionsListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mActiveSubscriptionsListeners:Ljava/util/List;

    .line 80
    new-instance v1, Lcom/android/settings/network/ProxySubscriptionManager$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/network/ProxySubscriptionManager$1;-><init>(Lcom/android/settings/network/ProxySubscriptionManager;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubsciptionsListener;

    .line 85
    new-instance v1, Lcom/android/settings/network/ProxySubscriptionManager$2;

    const-string v2, "airplane_mode_on"

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/android/settings/network/ProxySubscriptionManager$2;-><init>(Lcom/android/settings/network/ProxySubscriptionManager;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mAirplaneModeMonitor:Lcom/android/settings/network/GlobalSettingsChangeListener;

    .line 93
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubsciptionsListener;

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubsciptionsListener;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/ProxySubscriptionManager;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->notifyAllListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/network/ProxySubscriptionManager;)Lcom/android/settings/network/ActiveSubsciptionsListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubsciptionsListener;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;
    .locals 1

    .line 65
    sget-object v0, Lcom/android/settings/network/ProxySubscriptionManager;->sSingleton:Lcom/android/settings/network/ProxySubscriptionManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/network/ProxySubscriptionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/network/ProxySubscriptionManager;->sSingleton:Lcom/android/settings/network/ProxySubscriptionManager;

    return-object v0
.end method

.method private notifyAllListeners()V
    .locals 3

    .line 103
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mActiveSubscriptionsListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    .line 104
    invoke-interface {v0}, Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :cond_1
    invoke-interface {v0}, Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;->onChanged()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mActiveSubscriptionsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mActiveSubscriptionsListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get()Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubsciptionsListener;

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubsciptionsListener;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubsciptionsListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ActiveSubsciptionsListener;->getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibleSubscriptionsInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubsciptionsListener;

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubsciptionsListener;->getAccessibleSubscriptionsInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubsciptionsListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ActiveSubsciptionsListener;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getActiveSubscriptionInfoCountMax()I
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubsciptionsListener;

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubsciptionsListener;->getActiveSubscriptionInfoCountMax()I

    move-result p0

    return p0
.end method

.method public getActiveSubscriptionsInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubsciptionsListener;

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubsciptionsListener;->getActiveSubscriptionsInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubsciptionsListener;

    invoke-virtual {v0}, Lcom/android/settings/network/ActiveSubsciptionsListener;->close()V

    .line 144
    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mAirplaneModeMonitor:Lcom/android/settings/network/GlobalSettingsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    .line 146
    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 150
    sput-object v0, Lcom/android/settings/network/ProxySubscriptionManager;->sSingleton:Lcom/android/settings/network/ProxySubscriptionManager;

    :cond_0
    return-void
.end method

.method onStart()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 133
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubsciptionsListener;

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubsciptionsListener;->start()V

    return-void
.end method

.method onStop()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 138
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubsciptionsListener;

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubsciptionsListener;->stop()V

    return-void
.end method

.method public removeActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mActiveSubscriptionsListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLifecycle(Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 127
    :cond_2
    iput-object p1, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 128
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mAirplaneModeMonitor:Lcom/android/settings/network/GlobalSettingsChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/GlobalSettingsChangeListener;->notifyChangeBasedOn(Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

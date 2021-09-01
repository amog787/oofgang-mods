.class public abstract Lcom/android/settings/network/GlobalSettingsChangeListener;
.super Landroid/database/ContentObserver;
.source "GlobalSettingsChangeListener.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mField:Ljava/lang/String;

.field private mLifecycle:Landroidx/lifecycle/Lifecycle;

.field private mListening:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/network/GlobalSettingsChangeListener;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 61
    iput-object p2, p0, Lcom/android/settings/network/GlobalSettingsChangeListener;->mContext:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/android/settings/network/GlobalSettingsChangeListener;->mField:Ljava/lang/String;

    .line 63
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/GlobalSettingsChangeListener;->mUri:Landroid/net/Uri;

    .line 64
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/network/GlobalSettingsChangeListener;->mListening:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/network/GlobalSettingsChangeListener;->monitorUri(Z)V

    return-void
.end method

.method private monitorUri(Z)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/settings/network/GlobalSettingsChangeListener;->mListening:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/android/settings/network/GlobalSettingsChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/GlobalSettingsChangeListener;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/GlobalSettingsChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->monitorUri(Z)V

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->notifyChangeBasedOn(Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public notifyChangeBasedOn(Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/network/GlobalSettingsChangeListener;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 91
    :cond_1
    iput-object p1, p0, Lcom/android/settings/network/GlobalSettingsChangeListener;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/android/settings/network/GlobalSettingsChangeListener;->mListening:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/GlobalSettingsChangeListener;->mField:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/GlobalSettingsChangeListener;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public abstract onChanged(Ljava/lang/String;)V
.end method

.method onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    return-void
.end method

.method onStart()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x1

    .line 103
    invoke-direct {p0, v0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->monitorUri(Z)V

    return-void
.end method

.method onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, v0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->monitorUri(Z)V

    return-void
.end method

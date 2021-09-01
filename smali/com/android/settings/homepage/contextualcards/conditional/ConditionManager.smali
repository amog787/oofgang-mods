.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;
.super Ljava/lang/Object;
.source "ConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;
    }
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field final mCardControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;",
            ">;"
        }
    .end annotation
.end field

.field private mIsListeningToStateChange:Z

.field private final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/homepage/contextualcards/conditional/ConditionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionListener;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mListener:Ljava/lang/ref/WeakReference;

    .line 59
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->initCandidates()V

    return-void
.end method

.method private getController(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;",
            ">(J)TT;"
        }
    .end annotation

    .line 148
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    .line 149
    invoke-interface {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return-object v0

    .line 153
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find controller for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initCandidates()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/AirplaneModeConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/AirplaneModeConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/BatterySaverConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/BatterySaverConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/RingerVibrateConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/RingerVibrateConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/RingerMutedConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/RingerMutedConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getDisplayableCards()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    .line 70
    new-instance v4, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;

    invoke-interface {v3}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->getId()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->getController(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$1;)V

    .line 71
    invoke-static {v4}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x50

    .line 76
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    if-eqz v1, :cond_1

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ConditionManager"

    const-string v3, "Failed to get displayable state for card, likely timeout. Skipping"

    .line 82
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public onActionClick(J)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->getController(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->onActionClick()V

    return-void
.end method

.method onConditionChanged()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionListener;

    invoke-interface {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionListener;->onConditionsChanged()V

    :cond_0
    return-void
.end method

.method public onPrimaryClick(Landroid/content/Context;J)V
    .locals 0

    .line 94
    invoke-direct {p0, p2, p3}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->getController(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->onPrimaryClick(Landroid/content/Context;)V

    return-void
.end method

.method public startMonitoringStateChange()V
    .locals 2

    .line 110
    iget-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mIsListeningToStateChange:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionManager"

    const-string v1, "Already listening to condition state changes, skipping monitor setup"

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mIsListeningToStateChange:Z

    .line 114
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    .line 115
    invoke-interface {v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->startMonitoringStateChange()V

    goto :goto_0

    .line 119
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    return-void
.end method

.method public stopMonitoringStateChange()V
    .locals 2

    .line 126
    iget-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mIsListeningToStateChange:Z

    if-nez v0, :cond_0

    const-string p0, "ConditionManager"

    const-string v0, "Not listening to condition state changes, skipping"

    .line 127
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    .line 131
    invoke-interface {v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->stopMonitoringStateChange()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mIsListeningToStateChange:Z

    return-void
.end method

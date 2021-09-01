.class public Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;
.super Ljava/lang/Object;
.source "LegacySuggestionContextualCardController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardController;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# instance fields
.field private mCardUpdateListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

.field private mContext:Landroid/content/Context;

.field mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

.field mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mContext:Landroid/content/Context;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestions:Ljava/util/List;

    .line 67
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$bool;->config_use_legacy_suggestion:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "LegacySuggestCardCtrl"

    const-string p1, "Legacy suggestion contextual card disabled, skipping."

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSuggestionServiceComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/android/settingslib/suggestions/SuggestionController;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settingslib/suggestions/SuggestionController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;)V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    return-void
.end method

.method private synthetic lambda$loadSuggestions$0()V
    .locals 6

    .line 150
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mCardUpdateListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 153
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/suggestions/SuggestionController;->getSuggestions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "null"

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded suggests: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LegacySuggestCardCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/settings/suggestions/Suggestion;

    .line 163
    new-instance v3, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;

    invoke-direct {v3}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;-><init>()V

    .line 165
    invoke-virtual {v2}, Landroid/service/settings/suggestions/Suggestion;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 166
    invoke-virtual {v2}, Landroid/service/settings/suggestions/Suggestion;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 169
    :cond_2
    invoke-virtual {v2}, Landroid/service/settings/suggestions/Suggestion;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;

    .line 170
    invoke-virtual {v3, v2}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;->setSuggestion(Landroid/service/settings/suggestions/Suggestion;)Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;

    .line 171
    invoke-virtual {v2}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 172
    invoke-virtual {v2}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 173
    invoke-virtual {v2}, Landroid/service/settings/suggestions/Suggestion;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSummaryText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    sget v2, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->VIEW_TYPE:I

    .line 174
    invoke-virtual {v3, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 176
    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->updateAdapter()V

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$updateAdapter$1(Ljava/util/Map;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mCardUpdateListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;->onContextualCardUpdated(Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mCardUpdateListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    :cond_0
    return-void
.end method

.method private loadSuggestions()V
    .locals 1

    .line 149
    new-instance v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardController$LqB1wkt9WJpmR_u8SCLWBRDkoBU;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardController$LqB1wkt9WJpmR_u8SCLWBRDkoBU;-><init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateAdapter()V
    .locals 3

    .line 187
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x2

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardController$eWp9Q__9wTqS3Dw-2wuzcEGvQ-I;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardController$eWp9Q__9wTqS3Dw-2wuzcEGvQ-I;-><init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$loadSuggestions$0$LegacySuggestionContextualCardController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->lambda$loadSuggestions$0()V

    return-void
.end method

.method public synthetic lambda$updateAdapter$1$LegacySuggestionContextualCardController(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->lambda$updateAdapter$1(Ljava/util/Map;)V

    return-void
.end method

.method public onActionClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestions:Ljava/util/List;

    .line 132
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    .line 133
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mCardUpdateListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    .line 134
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDismissed(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    move-object v1, p1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;

    .line 101
    invoke-virtual {v1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;->getSuggestion()Landroid/service/settings/suggestions/Suggestion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/suggestions/SuggestionController;->dismissSuggestions(Landroid/service/settings/suggestions/Suggestion;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->updateAdapter()V

    return-void
.end method

.method public onPrimaryClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 1

    .line 87
    :try_start_0
    move-object p0, p1

    check-cast p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to start suggestion "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTitleText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LegacySuggestCardCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->loadSuggestions()V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    if-nez p0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->start()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    if-nez p0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->stop()V

    return-void
.end method

.method public setCardUpdateListener(Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mCardUpdateListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    return-void
.end method

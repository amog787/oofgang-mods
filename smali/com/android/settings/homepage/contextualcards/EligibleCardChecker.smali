.class public Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;
.super Ljava/lang/Object;
.source "EligibleCardChecker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
        ">;"
    }
.end annotation


# instance fields
.field mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    return-void
.end method

.method static synthetic lambda$bindSlice$0(Landroidx/slice/Slice;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$bindSlice$1(Landroidx/slice/SliceViewManager;Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V
    .locals 0

    .line 125
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No permission currently: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EligibleCardChecker"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$bindSlice$2(Landroidx/slice/SliceViewManager;Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V
    .locals 1

    .line 123
    new-instance v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$EligibleCardChecker$K96heP9LNGkcJovKF_x_Oem8lNg;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$EligibleCardChecker$K96heP9LNGkcJovKF_x_Oem8lNg;-><init>(Landroidx/slice/SliceViewManager;Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 3

    .line 114
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object p0

    .line 115
    sget-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$EligibleCardChecker$j9fDhA-9Nn8fnDdaalBclkvyIuI;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$EligibleCardChecker$j9fDhA-9Nn8fnDdaalBclkvyIuI;

    .line 118
    invoke-virtual {p0, p1, v0}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 119
    invoke-virtual {p0, p1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v1

    .line 123
    new-instance v2, Lcom/android/settings/homepage/contextualcards/-$$Lambda$EligibleCardChecker$_CWOYdrHPrZTKhB6EpeRdX3RAZo;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$EligibleCardChecker$_CWOYdrHPrZTKhB6EpeRdX3RAZo;-><init>(Landroidx/slice/SliceViewManager;Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public call()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 12

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p0, v3}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->isCardEligibleToDisplay(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    const/16 v5, 0x696

    const/16 v6, 0x5de

    .line 63
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    .line 66
    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTextSliceUri()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, v2

    .line 63
    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 67
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/16 v5, 0x696

    const/16 v6, 0x5de

    .line 69
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    .line 72
    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTextSliceUri()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    .line 69
    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    const/4 v3, 0x0

    :goto_0
    move-object v9, v3

    const/4 v4, 0x0

    const/16 v5, 0x694

    const/16 v6, 0x5de

    .line 76
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTextSliceUri()Ljava/lang/String;

    move-result-object v7

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    long-to-int v8, v10

    move-object v3, v2

    .line 76
    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-object v9
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->call()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p0

    return-object p0
.end method

.method isCardEligibleToDisplay(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z
    .locals 4

    .line 87
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getRankingScore()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSliceUri()Landroid/net/Uri;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 96
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "error"

    .line 98
    invoke-virtual {v2, v3}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSlice(Landroidx/slice/Slice;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->isSliceToggleable(Landroidx/slice/Slice;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setHasInlineAction(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    :cond_3
    return v1

    .line 99
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to bind slice, not eligible for display "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EligibleCardChecker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method isSliceToggleable(Landroidx/slice/Slice;)Z
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Landroidx/slice/SliceMetadata;->getToggles()Ljava/util/List;

    move-result-object p0

    .line 139
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

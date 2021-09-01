.class public Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;
.super Landroidx/preference/PreferenceGroupAdapter;
.source "HighlightablePreferenceGroupAdapter.java"


# static fields
.field static final DELAY_HIGHLIGHT_DURATION_MILLIS:J = 0x258L


# instance fields
.field mFadeInAnimated:Z

.field final mHighlightColor:I

.field private final mHighlightKey:Ljava/lang/String;

.field private mHighlightPosition:I

.field private mHighlightRequested:Z

.field private final mNormalBackgroundRes:I


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V
    .locals 2

    .line 97
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 98
    iput-object p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    .line 99
    iput-boolean p3, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    .line 100
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 101
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v0, 0x101030e

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 104
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    iput p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    .line 105
    sget p2, Lcom/android/settings/R$color;->preference_highligh_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    return p0
.end method

.method private addHighlightBackground(Landroid/view/View;Z)V
    .locals 7

    .line 155
    sget v0, Lcom/android/settings/R$id;->preference_highlighted:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const-string v0, "HighlightableAdapter"

    if-nez p2, :cond_0

    .line 157
    iget p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p2, "AddHighlight: Not animation requested - setting highlight background"

    .line 158
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->requestRemoveHighlightDelayed(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 162
    iput-boolean p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    .line 163
    iget v1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    .line 164
    iget v2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    .line 165
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, p2

    .line 165
    invoke-static {v3, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v1, 0xc8

    .line 167
    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 168
    new-instance v1, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$piymLpeUf2m74Yz5ep7jpdxw2ho;

    invoke-direct {v1, p1}, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$piymLpeUf2m74Yz5ep7jpdxw2ho;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 170
    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v1, 0x4

    .line 171
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 172
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    const-string p2, "AddHighlight: starting fade in animation"

    .line 173
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->requestRemoveHighlightDelayed(Landroid/view/View;)V

    return-void
.end method

.method public static adjustInitialExpandedChildCount(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, ":settings:fragment_args_key"

    .line 80
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const p0, 0x7fffffff

    .line 83
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    return-void

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getInitialExpandedChildCount()I

    move-result p0

    if-gtz p0, :cond_3

    return-void

    .line 92
    :cond_3
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    return-void
.end method

.method static synthetic lambda$addHighlightBackground$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 169
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic lambda$removeHighlightBackground$3(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 198
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private synthetic lambda$requestHighlight$0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 135
    iput-boolean v1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    .line 136
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 137
    iput v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 138
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$requestRemoveHighlightDelayed$1(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 149
    iput v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    const/4 v0, 0x1

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->removeHighlightBackground(Landroid/view/View;Z)V

    return-void
.end method

.method private removeHighlightBackground(Landroid/view/View;Z)V
    .locals 5

    .line 178
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "HighlightableAdapter"

    if-nez p2, :cond_0

    .line 179
    sget p2, Lcom/android/settings/R$id;->preference_highlighted:I

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 180
    iget p0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string p0, "RemoveHighlight: No animation requested - setting normal background"

    .line 181
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v2, Lcom/android/settings/R$id;->preference_highlighted:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p0, "RemoveHighlight: Not highlighted - skipping"

    .line 187
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 190
    :cond_1
    iget p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    .line 191
    iget v2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    .line 193
    sget v3, Lcom/android/settings/R$id;->preference_highlighted:I

    invoke-virtual {p1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 194
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 195
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    const/4 p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, p2

    .line 194
    invoke-static {v0, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v2, 0x1f4

    .line 196
    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 197
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$HMY634RMu5R2WoggcFMdrEe8uA0;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$HMY634RMu5R2WoggcFMdrEe8uA0;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    new-instance v0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    const-string p0, "Starting fade out animation"

    .line 208
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isHighlightRequested()Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    return p0
.end method

.method public synthetic lambda$requestHighlight$0$HighlightablePreferenceGroupAdapter(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->lambda$requestHighlight$0(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public synthetic lambda$requestRemoveHighlightDelayed$1$HighlightablePreferenceGroupAdapter(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->lambda$requestRemoveHighlightDelayed$1(Landroid/view/View;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->updateBackground(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 43
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public requestHighlight(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 127
    iget-boolean v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$tq_kKc8Wy_u27VUZj3YoS-b1PWk;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$tq_kKc8Wy_u27VUZj3YoS-b1PWk;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method requestRemoveHighlightDelayed(Landroid/view/View;)V
    .locals 3

    .line 148
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$CKVsKq8Jy7vb9RpitMwq8ps1ehE;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$CKVsKq8Jy7vb9RpitMwq8ps1ehE;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method updateBackground(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 1

    .line 116
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 117
    iget v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    if-ne p2, v0, :cond_0

    .line 119
    iget-boolean p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->addHighlightBackground(Landroid/view/View;Z)V

    goto :goto_0

    .line 120
    :cond_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v0, Lcom/android/settings/R$id;->preference_highlighted:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->removeHighlightBackground(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

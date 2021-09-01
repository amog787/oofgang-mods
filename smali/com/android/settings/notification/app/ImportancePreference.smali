.class public Lcom/android/settings/notification/app/ImportancePreference;
.super Landroidx/preference/Preference;
.source "ImportancePreference.java"


# instance fields
.field private mAlertButton:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mImportance:I

.field private mIsConfigurable:Z

.field private mSilenceButton:Landroid/view/View;

.field selectedBackground:Landroid/graphics/drawable/Drawable;

.field unselectedBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mIsConfigurable:Z

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/android/settings/notification/app/ImportancePreference;->mIsConfigurable:Z

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/android/settings/notification/app/ImportancePreference;->mIsConfigurable:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/android/settings/notification/app/ImportancePreference;->mIsConfigurable:Z

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getAccentTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 162
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private getRegularTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 166
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1010036

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 81
    iput-object p1, p0, Lcom/android/settings/notification/app/ImportancePreference;->mContext:Landroid/content/Context;

    .line 82
    sget v0, Lcom/android/settingslib/R$drawable;->button_border_selected:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object p1, p0, Lcom/android/settings/notification/app/ImportancePreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$drawable;->button_border_unselected:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    .line 84
    sget p1, Lcom/android/settingslib/R$layout;->notif_importance_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 143
    iget-object p0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 2

    .line 133
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->isLayoutSuppressed()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x2

    .line 134
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/app/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/app/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/settings/notification/app/ImportancePreference;->setImportanceSummary(Landroid/view/ViewGroup;IZ)V

    .line 141
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/notification/app/-$$Lambda$ImportancePreference$W0JH3z3lIL_PXhottSyMDJatF0c;

    invoke-direct {p2, p0}, Lcom/android/settings/notification/app/-$$Lambda$ImportancePreference$W0JH3z3lIL_PXhottSyMDJatF0c;-><init>(Lcom/android/settings/notification/app/ImportancePreference;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 155
    iget-object p0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 2

    .line 148
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->isLayoutSuppressed()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x3

    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/app/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/app/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/settings/notification/app/ImportancePreference;->setImportanceSummary(Landroid/view/ViewGroup;IZ)V

    .line 153
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/notification/app/-$$Lambda$ImportancePreference$uKybo1BCQEYkDp_d8onXY-GnRY8;

    invoke-direct {p2, p0}, Lcom/android/settings/notification/app/-$$Lambda$ImportancePreference$uKybo1BCQEYkDp_d8onXY-GnRY8;-><init>(Lcom/android/settings/notification/app/ImportancePreference;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onBindViewHolder$0$ImportancePreference()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/app/ImportancePreference;->lambda$onBindViewHolder$0()V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$ImportancePreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ImportancePreference;->lambda$onBindViewHolder$1(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$2$ImportancePreference()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/app/ImportancePreference;->lambda$onBindViewHolder$2()V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$3$ImportancePreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ImportancePreference;->lambda$onBindViewHolder$3(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 105
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 106
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 108
    sget v0, Lcom/android/settingslib/R$id;->silence:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    .line 109
    sget v0, Lcom/android/settingslib/R$id;->alert:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    .line 111
    iget-boolean v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mIsConfigurable:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/settings/notification/app/ImportancePreference;->mImportance:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/notification/app/ImportancePreference;->setImportanceSummary(Landroid/view/ViewGroup;IZ)V

    .line 117
    iget v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mImportance:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/app/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/app/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/app/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/app/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/-$$Lambda$ImportancePreference$gD7QVP1iyGi00Rs-If9CRTqUES4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/app/-$$Lambda$ImportancePreference$gD7QVP1iyGi00Rs-If9CRTqUES4;-><init>(Lcom/android/settings/notification/app/ImportancePreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/-$$Lambda$ImportancePreference$y56yqrR2WDffm4Jnv8t8VaZNU7E;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/app/-$$Lambda$ImportancePreference$y56yqrR2WDffm4Jnv8t8VaZNU7E;-><init>(Lcom/android/settings/notification/app/ImportancePreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setConfigurable(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/android/settings/notification/app/ImportancePreference;->mIsConfigurable:Z

    return-void
.end method

.method public setDisplayInStatusBar(Z)V
    .locals 0

    return-void
.end method

.method public setDisplayOnLockscreen(Z)V
    .locals 0

    return-void
.end method

.method public setImportance(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/settings/notification/app/ImportancePreference;->mImportance:I

    return-void
.end method

.method setImportanceSummary(Landroid/view/ViewGroup;IZ)V
    .locals 3

    if-eqz p3, :cond_0

    .line 171
    new-instance p3, Landroid/transition/AutoTransition;

    invoke-direct {p3}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v0, 0x64

    .line 172
    invoke-virtual {p3, v0, v1}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    .line 173
    invoke-static {p1, p3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/app/ImportancePreference;->getAccentTint()Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 177
    invoke-direct {p0}, Lcom/android/settings/notification/app/ImportancePreference;->getRegularTint()Landroid/content/res/ColorStateList;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lt p2, v0, :cond_1

    .line 180
    sget p2, Lcom/android/settingslib/R$id;->silence_summary:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    sget p2, Lcom/android/settingslib/R$id;->silence_icon:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 182
    sget p2, Lcom/android/settingslib/R$id;->silence_label:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 184
    sget p0, Lcom/android/settingslib/R$id;->alert_icon:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 185
    sget p0, Lcom/android/settingslib/R$id;->alert_label:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 187
    sget p0, Lcom/android/settingslib/R$id;->alert_summary:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 189
    :cond_1
    sget p2, Lcom/android/settingslib/R$id;->alert_summary:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    sget p2, Lcom/android/settingslib/R$id;->alert_icon:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 191
    sget p2, Lcom/android/settingslib/R$id;->alert_label:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    sget p0, Lcom/android/settingslib/R$id;->silence_icon:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 194
    sget p0, Lcom/android/settingslib/R$id;->silence_label:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 195
    sget p0, Lcom/android/settingslib/R$id;->silence_summary:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

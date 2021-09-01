.class public Lcom/android/settings/notification/app/ConversationPriorityPreference;
.super Landroidx/preference/Preference;
.source "ConversationPriorityPreference.java"


# instance fields
.field private mAlertButton:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mImportance:I

.field private mIsConfigurable:Z

.field private mOriginalImportance:I

.field private mPriorityButton:Landroid/view/View;

.field private mPriorityConversation:Z

.field private mSilenceButton:Landroid/view/View;

.field selectedBackground:Landroid/graphics/drawable/Drawable;

.field unselectedBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getAccentTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 136
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private getRegularTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 140
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1010036

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 79
    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mContext:Landroid/content/Context;

    .line 80
    sget v0, Lcom/android/settingslib/R$drawable;->button_border_selected:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$drawable;->button_border_unselected:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    .line 82
    sget p1, Lcom/android/settingslib/R$layout;->notif_priority_conversation_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 3

    .line 120
    new-instance p2, Landroid/util/Pair;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p2, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 121
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(Landroid/view/ViewGroup;IZZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 3

    .line 124
    iget p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mOriginalImportance:I

    const/4 v0, 0x3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 125
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 126
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(Landroid/view/ViewGroup;IZZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 3

    .line 129
    iget p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mOriginalImportance:I

    const/4 v0, 0x3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 130
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 131
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(Landroid/view/ViewGroup;IZZ)V

    return-void
.end method

.method private synthetic lambda$updateToggles$3()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 185
    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private synthetic lambda$updateToggles$4()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 207
    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private synthetic lambda$updateToggles$5()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 228
    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBindViewHolder$0$ConversationPriorityPreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$onBindViewHolder$0(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$ConversationPriorityPreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$onBindViewHolder$1(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$2$ConversationPriorityPreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$onBindViewHolder$2(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$updateToggles$3$ConversationPriorityPreference()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$updateToggles$3()V

    return-void
.end method

.method public synthetic lambda$updateToggles$4$ConversationPriorityPreference()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$updateToggles$4()V

    return-void
.end method

.method public synthetic lambda$updateToggles$5$ConversationPriorityPreference()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$updateToggles$5()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 103
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 104
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 106
    sget v0, Lcom/android/settingslib/R$id;->silence:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    .line 107
    sget v0, Lcom/android/settingslib/R$id;->alert:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    .line 108
    sget v0, Lcom/android/settingslib/R$id;->priority_group:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    .line 110
    iget-boolean v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mImportance:I

    iget-boolean v3, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityConversation:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(Landroid/view/ViewGroup;IZZ)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$K72F6HovLWgM44HfChgcbgJhSBM;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$K72F6HovLWgM44HfChgcbgJhSBM;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$S2ys7PNbWb-ZyeA0QpzyJJY_5qA;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$S2ys7PNbWb-ZyeA0QpzyJJY_5qA;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$l2VPoHMAmob0qs4QBlqvw5C_2Ik;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$l2VPoHMAmob0qs4QBlqvw5C_2Ik;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setConfigurable(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    return-void
.end method

.method public setImportance(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mImportance:I

    return-void
.end method

.method public setOriginalImportance(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mOriginalImportance:I

    return-void
.end method

.method public setPriorityConversation(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityConversation:Z

    return-void
.end method

.method updateToggles(Landroid/view/ViewGroup;IZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz p4, :cond_0

    .line 146
    new-instance v3, Landroid/transition/AutoTransition;

    invoke-direct {v3}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v4, 0x64

    .line 147
    invoke-virtual {v3, v4, v5}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    .line 148
    invoke-static {v1, v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 151
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->getAccentTint()Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->getRegularTint()Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 153
    sget v5, Lcom/android/settingslib/R$id;->silence_icon:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 154
    sget v6, Lcom/android/settingslib/R$id;->silence_label:I

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 155
    sget v7, Lcom/android/settingslib/R$id;->silence_summary:I

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 156
    sget v8, Lcom/android/settingslib/R$id;->alert_icon:I

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 157
    sget v9, Lcom/android/settingslib/R$id;->alert_label:I

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 158
    sget v10, Lcom/android/settingslib/R$id;->alert_summary:I

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 159
    sget v11, Lcom/android/settingslib/R$id;->priority_icon:I

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 160
    sget v12, Lcom/android/settingslib/R$id;->priority_label:I

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 161
    sget v13, Lcom/android/settingslib/R$id;->priority_summary:I

    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x2

    const/16 v15, 0x8

    if-gt v2, v14, :cond_1

    const/16 v14, -0x3e8

    if-le v2, v14, :cond_1

    .line 164
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 166
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 168
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 170
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 172
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 173
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x0

    .line 174
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v2, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    iget-object v3, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v2, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    iget-object v3, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v2, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    iget-object v3, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 182
    new-instance v2, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$w7FPnqM1HNJ343rNh5LUWHeYeM0;

    invoke-direct {v2, v0}, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$w7FPnqM1HNJ343rNh5LUWHeYeM0;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 189
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 191
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x0

    .line 193
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 195
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 197
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 198
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 199
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v2, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    iget-object v3, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v2, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    iget-object v3, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v2, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    iget-object v3, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 204
    new-instance v2, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$YGuD-DUlCrxtfCedBviQ89woD_I;

    invoke-direct {v2, v0}, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$YGuD-DUlCrxtfCedBviQ89woD_I;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 210
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 212
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 214
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 216
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 218
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 219
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 220
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v2, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    iget-object v3, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v2, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    iget-object v3, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v2, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    iget-object v3, v0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 225
    new-instance v2, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$AnZ07IIuetUw_TeDv44U7RxSEgg;

    invoke-direct {v2, v0}, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$AnZ07IIuetUw_TeDv44U7RxSEgg;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

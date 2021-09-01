.class public Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ApplicationViewHolder.java"


# instance fields
.field private final mAppIcon:Landroid/widget/ImageView;

.field private final mAppName:Landroid/widget/TextView;

.field final mCheckBox:Landroid/widget/CheckBox;

.field final mDisabled:Landroid/widget/TextView;

.field final mDivider:Landroid/view/View;

.field final mItemView:Landroid/view/View;

.field final mSummary:Landroid/widget/TextView;

.field final mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field final mWidgetContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 69
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mItemView:Landroid/view/View;

    const v0, 0x1020016

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    const v0, 0x1020006

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppIcon:Landroid/widget/ImageView;

    const v0, 0x1020010

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/android/settings/R$id;->appendix:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/android/settings/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const v0, 0x1020018

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    .line 77
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 78
    sget v0, Lcom/android/settings/R$id;->two_target_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDivider:Landroid/view/View;

    return-void
.end method

.method static newView(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 5

    .line 101
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->op_application_preference_app:I

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x1020018

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v3, Lcom/android/settings/R$layout;->preference_widget_master_switch:I

    const/4 v4, 0x1

    .line 107
    invoke-virtual {p1, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/settings/R$layout;->op_preference_two_target_divider:I

    invoke-virtual {p0, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 112
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/16 p0, 0x8

    .line 115
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method static newViewForVzw(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string v0, "ApplicationViewHolder"

    const-string v1, "newViewForVzw"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->op_application_preference_app:I

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x1020018

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v2, Lcom/android/settings/R$layout;->preference_widget_checkbox_uninstall_apps:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_0
    return-object v0
.end method


# virtual methods
.method enableItem(Z)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 169
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 172
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 174
    :cond_4
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_5

    .line 175
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method hideWidgetContainer()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDivider:Landroid/view/View;

    if-eqz p0, :cond_1

    .line 154
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final setChecked(Z)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method setEnabled(Z)V
    .locals 0

    .line 129
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method setIcon(I)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setSummary(I)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method showWidgetContainer()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDivider:Landroid/view/View;

    if-eqz p0, :cond_1

    .line 145
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method updateDisableView(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    .line 199
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 200
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->not_installed:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 202
    :cond_0
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 204
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->disabled:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V
    .locals 4

    .line 212
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSizeText of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageApplications"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 p2, 0x1

    if-eq p3, p2, :cond_2

    const/4 p2, 0x2

    if-eq p3, p2, :cond_1

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_2
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :cond_3
    iget-wide v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    .line 229
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method updateSwitch(Landroid/view/View$OnClickListener;ZZ)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 237
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    if-eqz p3, :cond_1

    const-string p3, "ApplicationViewHolder"

    const-string/jumbo v0, "updateSwitch: Checkbox"

    .line 240
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 243
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

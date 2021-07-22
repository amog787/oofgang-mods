.class public Lcom/oneplus/security/network/view/HeaderPreference;
.super Landroidx/preference/Preference;
.source "HeaderPreference.java"


# instance fields
.field private dataLeftTitle:Ljava/lang/String;

.field private dataUsedTitle:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataLimitLabel:Ljava/lang/String;

.field private mDataUsageLabel:Ljava/lang/String;

.field private mDataUsageLayout:Landroid/view/View;

.field private mDataUsageLeftValue:Landroid/widget/TextView;

.field private mDataUsageProgress:Landroid/widget/ProgressBar;

.field private mDataUsageTitle:Landroid/widget/TextView;

.field private mDataUsageTotal:Landroid/widget/TextView;

.field private mDataUsageUsed:Landroid/widget/TextView;

.field private mDataWarnLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/oneplus/security/network/view/HeaderPreference;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/oneplus/security/network/view/HeaderPreference;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/security/network/view/HeaderPreference;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getDataInvalidValueHintString()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object p0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->data_invalid_value_hint:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 61
    iput-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    .line 62
    sget p1, Lcom/android/settings/R$layout;->data_usage_sim_pref_header:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 64
    iget-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_left_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->dataLeftTitle:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->traffic_package_used:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->dataUsedTitle:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->data_usage_limit_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataLimitLabel:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->data_usage_used_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLabel:Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->data_usage_warn_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataWarnLabel:Ljava/lang/String;

    return-void
.end method

.method private setDataUsageLeftValue([Ljava/lang/String;Landroid/content/Context;J)V
    .locals 4

    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "index_data_usage_unit"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 149
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 165
    aget-object p2, p1, v0

    .line 166
    aget-object p1, p1, v3

    goto :goto_1

    .line 160
    :cond_0
    invoke-static {p2, p3, p4, v3}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeInMb(Landroid/content/Context;JZ)[Ljava/lang/String;

    move-result-object p1

    .line 161
    aget-object p2, p1, v0

    .line 162
    aget-object p1, p1, v3

    goto :goto_1

    .line 155
    :cond_1
    invoke-static {p2, p3, p4, v3}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeInGb(Landroid/content/Context;JZ)[Ljava/lang/String;

    move-result-object p1

    .line 156
    aget-object p2, p1, v0

    .line 157
    aget-object p1, p1, v3

    .line 169
    :goto_1
    iget-object p0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLeftValue:Landroid/widget/TextView;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v0

    aput-object p1, p3, v3

    const-string p1, "%s%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDataUsageSection(I)Ljava/lang/String;
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/security/network/operator/AccountDayLocalCache;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object p1

    .line 180
    iget-object p0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/security/utils/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 74
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 75
    sget v0, Lcom/android/settings/R$id;->data_usage_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLayout:Landroid/view/View;

    .line 76
    sget v0, Lcom/android/settings/R$id;->data_usage_left_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLeftValue:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/android/settings/R$id;->data_usage_left_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageTitle:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/android/settings/R$id;->data_usage_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    .line 79
    sget v0, Lcom/android/settings/R$id;->data_usage_used_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageUsed:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/android/settings/R$id;->data_usage_total:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageTotal:Landroid/widget/TextView;

    return-void
.end method

.method public updateData(IJJJ)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCurrentSlotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",used="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "HeaderPreference"

    invoke-static {v7, v6}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v6, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLeftValue:Landroid/widget/TextView;

    if-eqz v6, :cond_b

    iget-object v8, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageTitle:Landroid/widget/TextView;

    if-eqz v8, :cond_b

    iget-object v8, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageTotal:Landroid/widget/TextView;

    if-nez v8, :cond_0

    goto/16 :goto_6

    :cond_0
    const-wide/16 v8, -0x1

    cmp-long v10, v4, v8

    const/16 v11, 0x8

    if-nez v10, :cond_1

    .line 89
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/security/network/view/HeaderPreference;->getDataInvalidValueHintString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLayout:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_6

    .line 93
    :cond_1
    iget-object v6, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    sub-long v12, v2, v4

    const/4 v10, 0x1

    invoke-static {v6, v12, v13, v10, v10}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeAndUnitForDisplay(Landroid/content/Context;JZZ)[Ljava/lang/String;

    move-result-object v6

    .line 94
    iget-object v14, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    const-wide/16 v15, 0x0

    cmp-long v17, v4, v15

    move-wide/from16 v18, v12

    if-lez v17, :cond_2

    move-wide v11, v4

    goto :goto_0

    :cond_2
    move-wide v11, v15

    :goto_0
    invoke-static {v14, v11, v12, v10, v10}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeAndUnitForDisplay(Landroid/content/Context;JZZ)[Ljava/lang/String;

    move-result-object v11

    .line 95
    iget-object v12, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    cmp-long v13, v2, v15

    if-lez v13, :cond_3

    move-wide v13, v2

    goto :goto_1

    :cond_3
    move-wide v13, v15

    :goto_1
    invoke-static {v12, v13, v14, v10, v10}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeAndUnitForDisplay(Landroid/content/Context;JZZ)[Ljava/lang/String;

    move-result-object v12

    cmp-long v13, v2, v8

    const-string v14, "%s%s"

    const-string v15, "%s(%s)"

    const-wide/16 v20, 0x64

    const-string v9, "%s %s%s"

    const/4 v8, 0x2

    const/4 v10, 0x0

    if-eqz v13, :cond_6

    .line 96
    iget-object v13, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    invoke-static {v13, v1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataTotalState(Landroid/content/Context;I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 97
    invoke-static {}, Lcom/oneplus/security/utils/FunctionUtils;->isUsvMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    move-wide/from16 v13, v18

    invoke-direct {v0, v6, v7, v13, v14}, Lcom/oneplus/security/network/view/HeaderPreference;->setDataUsageLeftValue([Ljava/lang/String;Landroid/content/Context;J)V

    const/16 v17, 0x1

    goto :goto_2

    .line 100
    :cond_4
    iget-object v7, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLeftValue:Landroid/widget/TextView;

    new-array v13, v8, [Ljava/lang/Object;

    aget-object v17, v6, v10

    aput-object v17, v13, v10

    const/16 v17, 0x1

    aget-object v6, v6, v17

    aput-object v6, v13, v17

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_2
    iget-object v6, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageTitle:Landroid/widget/TextView;

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v13, v0, Lcom/oneplus/security/network/view/HeaderPreference;->dataLeftTitle:Ljava/lang/String;

    aput-object v13, v7, v10

    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/security/network/view/HeaderPreference;->getDataUsageSection(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v17

    invoke-static {v15, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageTotal:Landroid/widget/TextView;

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v13, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataLimitLabel:Ljava/lang/String;

    aput-object v13, v7, v10

    aget-object v13, v12, v10

    aput-object v13, v7, v17

    aget-object v12, v12, v17

    aput-object v12, v7, v8

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageUsed:Landroid/widget/TextView;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLabel:Ljava/lang/String;

    aput-object v7, v6, v10

    aget-object v7, v11, v10

    aput-object v7, v6, v17

    aget-object v7, v11, v17

    aput-object v7, v6, v8

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    mul-long v4, v4, v20

    .line 106
    div-long/2addr v4, v2

    long-to-int v1, v4

    .line 107
    iget-object v2, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 108
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    iget-object v2, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$drawable;->progress_horizontal:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    mul-long v1, v2, v20

    .line 110
    div-long/2addr v1, v4

    long-to-int v1, v1

    .line 111
    iget-object v2, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 112
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    iget-object v2, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$drawable;->progress_horizontal_limit:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :goto_3
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLayout:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageUsed:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 119
    :cond_6
    iget-object v2, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageTitle:Landroid/widget/TextView;

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/oneplus/security/network/view/HeaderPreference;->dataUsedTitle:Ljava/lang/String;

    aput-object v6, v3, v10

    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/security/network/view/HeaderPreference;->getDataUsageSection(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v3, v6

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-static {}, Lcom/oneplus/security/utils/FunctionUtils;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    if-lez v17, :cond_7

    move-wide v2, v4

    goto :goto_4

    :cond_7
    const-wide/16 v2, 0x0

    :goto_4
    invoke-direct {v0, v11, v1, v2, v3}, Lcom/oneplus/security/network/view/HeaderPreference;->setDataUsageLeftValue([Ljava/lang/String;Landroid/content/Context;J)V

    goto :goto_5

    .line 123
    :cond_8
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLeftValue:Landroid/widget/TextView;

    new-array v2, v8, [Ljava/lang/Object;

    aget-object v3, v11, v10

    aput-object v3, v2, v10

    const/4 v3, 0x1

    aget-object v6, v11, v3

    aput-object v6, v2, v3

    invoke-static {v14, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    const-wide/16 v1, -0x1

    cmp-long v1, p6, v1

    if-nez v1, :cond_9

    .line 127
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_6

    .line 130
    :cond_9
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageUsed:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    cmp-long v6, p6, v2

    if-lez v6, :cond_a

    move-wide/from16 v2, p6

    :cond_a
    const/4 v6, 0x1

    invoke-static {v1, v2, v3, v6, v10}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeAndUnitForDisplay(Landroid/content/Context;JZZ)[Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object v2, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageTotal:Landroid/widget/TextView;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataWarnLabel:Ljava/lang/String;

    aput-object v11, v3, v10

    aget-object v11, v1, v10

    aput-object v11, v3, v6

    aget-object v1, v1, v6

    aput-object v1, v3, v8

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-long v1, v4, v20

    .line 133
    div-long v1, v1, p6

    long-to-int v1, v1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usedPercent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v2, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 136
    iget-object v1, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 137
    iget-object v0, v0, Lcom/oneplus/security/network/view/HeaderPreference;->mDataUsageLayout:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_6
    return-void
.end method

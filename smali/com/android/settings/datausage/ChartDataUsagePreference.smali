.class public Lcom/android/settings/datausage/ChartDataUsagePreference;
.super Landroidx/preference/Preference;
.source "ChartDataUsagePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;
    }
.end annotation


# instance fields
.field private mEnd:J

.field private mIsHotSpot:Z

.field private final mLimitColor:I

.field private mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mResources:Landroid/content/res/Resources;

.field private mStart:J

.field private mSubId:I

.field private mUsageAmount:Landroid/widget/TextView;

.field private mUsageAmountString:Ljava/lang/String;

.field private final mWarningColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 69
    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mResources:Landroid/content/res/Resources;

    .line 83
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSelectable(Z)V

    const p2, 0x1010543

    .line 84
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    const p2, 0x1010038

    .line 85
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    .line 86
    sget p1, Lcom/android/settings/R$layout;->data_usage_graph:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private bindNetworkPolicy(Lcom/android/settings/widget/UsageView;Landroid/net/NetworkPolicy;I)V
    .locals 9

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    return-void

    .line 287
    :cond_0
    iget-wide v1, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 288
    iget v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    const/4 v7, 0x2

    .line 289
    sget v8, Lcom/android/settings/R$string;->data_usage_sweep_limit:I

    invoke-direct {p0, v1, v2, v8, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v7

    goto :goto_0

    :cond_1
    move v5, v6

    .line 292
    :goto_0
    iget-wide v1, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mIsHotSpot:Z

    if-nez v3, :cond_2

    const-wide/32 v3, 0x80000

    .line 293
    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/UsageView;->setDividerLoc(I)V

    .line 294
    iget-wide v1, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    div-long/2addr v1, v3

    long-to-float v1, v1

    int-to-float p3, p3

    div-float/2addr v1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, v1

    .line 296
    invoke-virtual {p1, p3, v1}, Lcom/android/settings/widget/UsageView;->setSideLabelWeights(FF)V

    .line 297
    iget v6, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    const/4 p3, 0x1

    .line 298
    iget-wide v1, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    sget p2, Lcom/android/settings/R$string;->data_usage_sweep_warning:I

    invoke-direct {p0, v1, v2, p2, v6}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, p3

    .line 302
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {p1, v6, v5}, Lcom/android/settings/widget/UsageView;->setDividerColors(II)V

    return-void
.end method

.method private getLabel(JII)Ljava/lang/CharSequence;
    .locals 2

    .line 307
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 310
    iget-object p2, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    .line 312
    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->replaceFileSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 314
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/CharSequence;

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x1

    aput-object p2, p3, p1

    invoke-static {p0, p3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 316
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, p0, p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDensedStatsData$0(Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 8

    .line 220
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/datausage/-$$Lambda$0fsS-g0zNz3crDgww2accED2sC8;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$0fsS-g0zNz3crDgww2accED2sC8;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Ljava/util/stream/LongStream;->min()Ljava/util/OptionalLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v3

    .line 222
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/datausage/-$$Lambda$Zg9pPJv8QPElol3BBOi0EKPeRfc;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$Zg9pPJv8QPElol3BBOi0EKPeRfc;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/stream/LongStream;->max()Ljava/util/OptionalLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v5

    .line 225
    new-instance v0, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;

    .line 226
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;-><init>(Lcom/android/settings/datausage/ChartDataUsagePreference;JJI)V

    .line 227
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    const/4 p2, 0x1

    if-le p0, p2, :cond_0

    .line 228
    invoke-virtual {v0, p2}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->setFromMultiNode(Z)V

    .line 231
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setupContentDescription(Lcom/android/settings/widget/UsageView;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/widget/UsageView;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;)V"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    const v8, 0x10010

    invoke-static {v6, v0, v1, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-wide v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-static {v6, v1, v2, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->data_usage_chart_brief_content_description:I

    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v4, v10

    const/4 v11, 0x1

    aput-object v1, v4, v11

    .line 159
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    .line 162
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 173
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getDensedStatsData(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 174
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;

    .line 175
    invoke-virtual {p2}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->getDataUsagePercentage()I

    move-result v12

    .line 176
    invoke-virtual {p2}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->isFromMultiNode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    if-ne v12, v0, :cond_1

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {p2}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->getStartTime()J

    move-result-wide v1

    .line 180
    invoke-virtual {p2}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->getEndTime()J

    move-result-wide v3

    const v5, 0x10010

    move-object v0, v6

    .line 179
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 177
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->getStartTime()J

    move-result-wide v0

    invoke-static {v6, v0, v1, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p2

    :goto_2
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p2, v0, v10

    .line 182
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v11

    const-string p2, ";%s %d%%"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 184
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 187
    :cond_3
    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 163
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/android/settings/R$string;->data_usage_chart_no_data_content_description:I

    .line 164
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private toInt(J)I
    .locals 2

    const-wide/32 v0, 0xea60

    .line 276
    div-long/2addr p1, v0

    long-to-int p0, p1

    return p0
.end method


# virtual methods
.method calcPoints(Lcom/android/settings/widget/UsageView;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/widget/UsageView;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 129
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/net/NetworkCycleData;

    .line 130
    invoke-virtual {v5}, Lcom/android/settingslib/net/NetworkCycleData;->getStartTime()J

    move-result-wide v7

    cmp-long v9, v7, v1

    if-lez v9, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {v5}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v9

    .line 137
    invoke-virtual {v5}, Lcom/android/settingslib/net/NetworkCycleData;->getTotalUsage()J

    move-result-wide v11

    add-long/2addr v3, v11

    .line 139
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 140
    iget-wide v11, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v11, v7, v11

    invoke-direct {p0, v11, v12}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v5

    sub-int/2addr v5, v6

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    :cond_2
    iget-wide v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v7, v5

    const-wide/16 v5, 0x1

    add-long/2addr v7, v5

    invoke-direct {p0, v7, v8}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v5

    const-wide/32 v6, 0x80000

    div-long v6, v3, v6

    long-to-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 143
    iget-wide v7, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v9, v7

    invoke-direct {p0, v9, v10}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v5

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 145
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-le p0, v6, :cond_4

    .line 146
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/UsageView;->addPath(Landroid/util/SparseIntArray;)V

    :cond_4
    return-void
.end method

.method getDensedStatsData(Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/settings/datausage/-$$Lambda$ghh2toOjwyjlPmXMtnOuNkEnT_o;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$ghh2toOjwyjlPmXMtnOuNkEnT_o;

    .line 198
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v1

    .line 203
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/net/NetworkCycleData;

    .line 204
    invoke-virtual {v6}, Lcom/android/settingslib/net/NetworkCycleData;->getTotalUsage()J

    move-result-wide v7

    add-long/2addr v4, v7

    const-wide/16 v7, 0x64

    mul-long/2addr v7, v4

    .line 205
    div-long/2addr v7, v1

    long-to-int v15, v7

    .line 207
    new-instance v7, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;

    invoke-virtual {v6}, Lcom/android/settingslib/net/NetworkCycleData;->getStartTime()J

    move-result-wide v11

    .line 208
    invoke-virtual {v6}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v13

    move-object v9, v7

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v15}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;-><init>(Lcom/android/settings/datausage/ChartDataUsagePreference;JJI)V

    .line 209
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/datausage/-$$Lambda$92E--MHt1mPXlA130EakwwqtgNg;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$92E--MHt1mPXlA130EakwwqtgNg;

    .line 215
    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 214
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    new-instance v2, Lcom/android/settings/datausage/-$$Lambda$ChartDataUsagePreference$kyLbYCkB_z0vLhtvxIwB6dl0waA;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v1}, Lcom/android/settings/datausage/-$$Lambda$ChartDataUsagePreference$kyLbYCkB_z0vLhtvxIwB6dl0waA;-><init>(Lcom/android/settings/datausage/ChartDataUsagePreference;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 234
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/datausage/-$$Lambda$7k7RmT7rN3prw6YvDhpJTq7E_bI;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$7k7RmT7rN3prw6YvDhpJTq7E_bI;

    .line 235
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 236
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getInspectEnd()J
    .locals 2

    .line 347
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .line 343
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    return-wide v0
.end method

.method public getTop()I
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleData;->getTotalUsage()J

    move-result-wide v0

    .line 115
    iget-object p0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz p0, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v4, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 116
    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public synthetic lambda$getDensedStatsData$0$ChartDataUsagePreference(Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->lambda$getDensedStatsData$0(Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 91
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 92
    sget v0, Lcom/android/settings/R$id;->data_usage:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/UsageView;

    .line 93
    sget v1, Lcom/android/settings/R$id;->header_title:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mUsageAmount:Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mUsageAmountString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getTop()I

    move-result p1

    .line 100
    invoke-virtual {v0}, Lcom/android/settings/widget/UsageView;->clearPaths()V

    .line 101
    iget-wide v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/widget/UsageView;->configureGraph(II)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleChartData;->getUsageBuckets()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->calcPoints(Lcom/android/settings/widget/UsageView;Ljava/util/List;)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleChartData;->getUsageBuckets()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setupContentDescription(Lcom/android/settings/widget/UsageView;Ljava/util/List;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-static {v3, v4, v5, v4, v5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 106
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-static {v3, v4, v5, v4, v5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 104
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->bindNetworkPolicy(Lcom/android/settings/widget/UsageView;Landroid/net/NetworkPolicy;I)V

    return-void
.end method

.method public setColors(II)V
    .locals 0

    .line 373
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setIsHotspot(Z)V
    .locals 0

    .line 385
    iput-boolean p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mIsHotSpot:Z

    return-void
.end method

.method public setNetworkCycleData(Lcom/android/settingslib/net/NetworkCycleChartData;)V
    .locals 4

    .line 351
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    .line 356
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    invoke-static {p1, v0}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object p1

    const/4 v0, 0x0

    .line 357
    aget-wide v0, p1, v0

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setVisibleRange(JJ)V

    .line 359
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 5

    .line 320
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz p1, :cond_2

    .line 323
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    invoke-static {p1, v0}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataWarnState(Landroid/content/Context;I)I

    move-result p1

    .line 324
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataWarnBytes(Landroid/content/Context;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 326
    iget-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iput-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    goto :goto_0

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iput-wide v2, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 330
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    invoke-static {p1, v0}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataLimitState(Landroid/content/Context;I)I

    move-result p1

    .line 331
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataLimitBytes(Landroid/content/Context;I)J

    move-result-wide v0

    if-ne p1, v4, :cond_1

    .line 333
    iget-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iput-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_1

    .line 335
    :cond_1
    iget-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iput-wide v2, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 339
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setShowWifi(Z)V
    .locals 0

    return-void
.end method

.method public setSubId(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    return-void
.end method

.method public setUsageAmount(Ljava/lang/String;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mUsageAmountString:Ljava/lang/String;

    .line 378
    iget-object p0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mUsageAmount:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 379
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 0

    .line 364
    iput-wide p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    .line 365
    iput-wide p3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    .line 366
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

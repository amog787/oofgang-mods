.class public Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;
.super Ljava/lang/Object;
.source "BatteryFixSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;
    }
.end annotation


# static fields
.field static final KEY_CURRENT_TIPS_TYPE:Ljava/lang/String; = "current_tip_type"

.field static final PREFS:Ljava/lang/String; = "battery_fix_prefs"

.field private static final UNIMPORTANT_BATTERY_TIPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->UNIMPORTANT_BATTERY_TIPS:Ljava/util/Map;

    const/4 v1, 0x6

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 74
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->UNIMPORTANT_BATTERY_TIPS:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Integer;

    aput-object v5, v2, v4

    aput-object v7, v2, v6

    .line 77
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->UNIMPORTANT_BATTERY_TIPS:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    aput-object v7, v2, v4

    .line 79
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 78
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildBatteryGoodSlice(Landroidx/slice/builders/ListBuilder;Z)Landroidx/slice/Slice;
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_battery_status_good_24dp:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->power_usage_summary_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->getPrimaryAction()Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 175
    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 176
    invoke-virtual {v3, v0, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 177
    invoke-virtual {v3, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 178
    invoke-virtual {v3, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 175
    invoke-virtual {p1, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 179
    invoke-virtual {p1, p2}, Landroidx/slice/builders/ListBuilder;->setIsError(Z)Landroidx/slice/builders/ListBuilder;

    .line 180
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method private getPrimaryAction()Landroid/app/PendingIntent;
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 166
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static isBatteryTipAvailableFromCache(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "battery_fix_prefs"

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "current_tip_type"

    const/4 v2, 0x6

    .line 194
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "current_tip_state"

    const/4 v3, 0x2

    .line 195
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_0

    return v1

    .line 200
    :cond_0
    sget-object v2, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->UNIMPORTANT_BATTERY_TIPS:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->UNIMPORTANT_BATTERY_TIPS:Ljava/util/Map;

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v3

    :cond_1
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method static synthetic lambda$updateBatteryTipAvailabilityCache$0(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->refreshBatteryTips(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static refreshBatteryTips(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;-><init>(Landroid/content/Context;)V

    .line 209
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->loadInBackground()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    .line 210
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V

    .line 211
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    .line 213
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v1, 0x0

    const-string v3, "battery_fix_prefs"

    .line 214
    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 215
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 216
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getType()I

    move-result v1

    const-string v3, "current_tip_type"

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 217
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getState()I

    move-result v1

    const-string v2, "current_tip_state"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 218
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-object v0
.end method

.method public static updateBatteryTipAvailabilityCache(Landroid/content/Context;)V
    .locals 1

    .line 186
    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BatteryFixSlice$qUuxaNGA-jxTfUNJhrxj_gcefzw;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BatteryFixSlice$qUuxaNGA-jxTfUNJhrxj_gcefzw;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 161
    const-class p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->power_usage_summary_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "battery_tip"

    .line 145
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 147
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .line 148
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x579

    .line 147
    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 152
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 7

    .line 97
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/slices/CustomSliceRegistry;->BATTERY_FIX_SLICE_URI:Landroid/net/Uri;

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v1, -0x1

    .line 99
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    .line 101
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->isBatteryTipAvailableFromCache(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 102
    invoke-direct {p0, v0, v1}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->buildBatteryGoodSlice(Landroidx/slice/builders/ListBuilder;Z)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {v2}, Lcom/android/settings/slices/SliceBackgroundWorker;->getResults()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 110
    invoke-direct {p0, v0, v3}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->buildBatteryGoodSlice(Landroidx/slice/builders/ListBuilder;Z)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 113
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    .line 114
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    goto :goto_1

    .line 117
    :cond_3
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getIconId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 118
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getIconTintColorId()I

    move-result v5

    if-eq v5, v1, :cond_4

    .line 120
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 120
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 125
    :cond_4
    invoke-static {v2}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 126
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->getPrimaryAction()Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {v4, v5}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 126
    invoke-static {v2, v1, v3, v5}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    .line 130
    new-instance v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 131
    invoke-virtual {v5, v1, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {v4, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {v4, p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 134
    invoke-virtual {v5, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 130
    invoke-virtual {v0, v5}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 137
    :cond_5
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 92
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->BATTERY_FIX_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

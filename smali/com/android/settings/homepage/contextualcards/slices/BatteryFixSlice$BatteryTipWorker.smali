.class public Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "BatteryFixSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryTipWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/SliceBackgroundWorker<",
        "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 231
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onSlicePinned$0()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->refreshBatteryTips(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->updateResults(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public synthetic lambda$onSlicePinned$0$BatteryFixSlice$BatteryTipWorker()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;->lambda$onSlicePinned$0()V

    return-void
.end method

.method protected onSlicePinned()V
    .locals 1

    .line 236
    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BatteryFixSlice$BatteryTipWorker$ymj9uZRGY94lstfLl4NEk9cTotk;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BatteryFixSlice$BatteryTipWorker$ymj9uZRGY94lstfLl4NEk9cTotk;-><init>(Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected onSliceUnpinned()V
    .locals 0

    return-void
.end method

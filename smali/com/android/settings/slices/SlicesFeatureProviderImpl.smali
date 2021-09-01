.class public Lcom/android/settings/slices/SlicesFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SlicesFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/slices/SlicesFeatureProvider;


# instance fields
.field private mSliceDataConverter:Lcom/android/settings/slices/SliceDataConverter;

.field private mSlicesIndexer:Lcom/android/settings/slices/SlicesIndexer;

.field private mUiSessionToken:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSliceIndexer(Landroid/content/Context;)Lcom/android/settings/slices/SlicesIndexer;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSlicesIndexer:Lcom/android/settings/slices/SlicesIndexer;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/settings/slices/SlicesIndexer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/slices/SlicesIndexer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSlicesIndexer:Lcom/android/settings/slices/SlicesIndexer;

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSlicesIndexer:Lcom/android/settings/slices/SlicesIndexer;

    return-object p0
.end method


# virtual methods
.method public getNewEnhanced4gLteSliceHelper(Landroid/content/Context;)Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;
    .locals 0

    .line 73
    new-instance p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;
    .locals 0

    .line 68
    new-instance p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getSliceDataConverter(Landroid/content/Context;)Lcom/android/settings/slices/SliceDataConverter;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSliceDataConverter:Lcom/android/settings/slices/SliceDataConverter;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/settings/slices/SliceDataConverter;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/slices/SliceDataConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSliceDataConverter:Lcom/android/settings/slices/SliceDataConverter;

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSliceDataConverter:Lcom/android/settings/slices/SliceDataConverter;

    return-object p0
.end method

.method public getSliceableFromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/settings/slices/CustomSliceable;
    .locals 1

    .line 78
    invoke-static {p2}, Lcom/android/settings/slices/CustomSliceRegistry;->removeParameterFromUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 79
    invoke-static {p0}, Lcom/android/settings/slices/CustomSliceRegistry;->getSliceClassByUri(Landroid/net/Uri;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 84
    invoke-static {p1, p0}, Lcom/android/settings/slices/CustomSliceable;->createInstance(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/settings/slices/CustomSliceable;

    move-result-object p0

    return-object p0

    .line 81
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Slice found for uri: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUiSessionToken()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mUiSessionToken:J

    return-wide v0
.end method

.method public indexSliceData(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->getSliceIndexer(Landroid/content/Context;)Lcom/android/settings/slices/SlicesIndexer;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesIndexer;->indexSliceData()V

    return-void
.end method

.method public indexSliceDataAsync(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->getSliceIndexer(Landroid/content/Context;)Lcom/android/settings/slices/SlicesIndexer;

    move-result-object p0

    .line 57
    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public newUiSession()V
    .locals 2

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mUiSessionToken:J

    return-void
.end method

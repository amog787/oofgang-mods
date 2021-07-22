.class public interface abstract Lcom/android/settings/slices/SlicesFeatureProvider;
.super Ljava/lang/Object;
.source "SlicesFeatureProvider.java"


# virtual methods
.method public abstract getNewEnhanced4gLteSliceHelper(Landroid/content/Context;)Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;
.end method

.method public abstract getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;
.end method

.method public abstract getSliceDataConverter(Landroid/content/Context;)Lcom/android/settings/slices/SliceDataConverter;
.end method

.method public abstract getSliceableFromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/settings/slices/CustomSliceable;
.end method

.method public abstract getUiSessionToken()J
.end method

.method public abstract indexSliceData(Landroid/content/Context;)V
.end method

.method public abstract indexSliceDataAsync(Landroid/content/Context;)V
.end method

.method public abstract newUiSession()V
.end method

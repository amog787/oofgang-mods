.class Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;
.super Ljava/lang/Object;
.source "LegacyIncrementalScanBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryDetails"
.end annotation


# instance fields
.field storedScanInfo:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;->storedScanInfo:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method concatScanInfo([Ljava/lang/String;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;->storedScanInfo:[Ljava/lang/String;

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 98
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;->storedScanInfo:[Ljava/lang/String;

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iput-object v1, p0, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;->storedScanInfo:[Ljava/lang/String;

    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;->storedScanInfo:[Ljava/lang/String;

    return-void
.end method
